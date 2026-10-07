#!/usr/bin/env python3
"""
tools/inspect_site.py

Reconocimiento HTTP inicial y extracción de metadatos para AMC Solutions.
Descarga y estructura evidencias crudas en:
  tools/raw/<timestamp>/
    ├── headers.txt
    ├── homepage.html
    ├── robots.txt
    ├── sitemap.xml
    ├── links.json
    ├── metadata.json
    └── summary.json
"""

import json
import os
import re
import ssl
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from datetime import UTC, datetime

USER_AGENT = (
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 "
    "(KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36"
)


class RedirectTracker(urllib.request.HTTPRedirectHandler):
    def __init__(self):
        super().__init__()
        self.chain = []

    def redirect_request(self, req, fp, code, msg, headers, newurl):
        self.chain.append(
            {
                "status": code,
                "message": msg,
                "from_url": req.full_url,
                "to_url": newurl,
                "headers": dict(headers.items()),
            }
        )
        return super().redirect_request(req, fp, code, msg, headers, newurl)


def fetch_url(url, timeout=20):
    tracker = RedirectTracker()
    ctx = ssl.create_default_context()
    opener = urllib.request.build_opener(
        tracker, urllib.request.HTTPSHandler(context=ctx)
    )
    req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})

    start_time = time.time()
    try:
        with opener.open(req, timeout=timeout) as resp:
            elapsed_ms = int((time.time() - start_time) * 1000)
            body = resp.read()
            final_url = resp.geturl()
            status = resp.status
            headers = dict(resp.headers.items())
            return {
                "ok": True,
                "status": status,
                "final_url": final_url,
                "headers": headers,
                "redirect_chain": tracker.chain,
                "body": body,
                "elapsed_ms": elapsed_ms,
                "error": None,
            }
    except urllib.error.HTTPError as e:
        elapsed_ms = int((time.time() - start_time) * 1000)
        body = e.read() if hasattr(e, "read") else b""
        return {
            "ok": False,
            "status": e.code,
            "final_url": url,
            "headers": dict(e.headers.items()) if hasattr(e, "headers") else {},
            "redirect_chain": tracker.chain,
            "body": body,
            "elapsed_ms": elapsed_ms,
            "error": f"HTTPError {e.code}: {e.reason}",
        }
    except Exception as e:
        elapsed_ms = int((time.time() - start_time) * 1000)
        return {
            "ok": False,
            "status": None,
            "final_url": url,
            "headers": {},
            "redirect_chain": tracker.chain,
            "body": b"",
            "elapsed_ms": elapsed_ms,
            "error": str(e),
        }


def parse_html_metadata(html_text, base_url):
    meta = {
        "title": None,
        "description": None,
        "canonical": None,
        "robots": None,
        "generator": None,
        "opengraph": {},
        "twitter": {},
        "json_ld": [],
        "headings": {"h1": [], "h2": [], "h3": []},
        "cms_signals": [],
    }

    # Title
    t_match = re.search(
        r"<title[^>]*>(.*?)</title>", html_text, re.IGNORECASE | re.DOTALL
    )
    if t_match:
        meta["title"] = t_match.group(1).strip()

    # Meta tags
    for tag in re.finditer(r"<meta\s+([^>]+)>", html_text, re.IGNORECASE):
        attrs = dict(
            re.findall(r'([a-zA-Z0-9_\-:]+)=["\']([^"\']*)["\']', tag.group(1))
        )
        name = attrs.get("name", "").lower()
        prop = attrs.get("property", "").lower()
        content = attrs.get("content", "")

        if name == "description":
            meta["description"] = content
        elif name == "robots":
            meta["robots"] = content
        elif name == "generator":
            meta["generator"] = content

        if prop.startswith("og:"):
            meta["opengraph"][prop] = content
        if name.startswith("twitter:"):
            meta["twitter"][name] = content

    # Canonical
    c_match = re.search(
        r'<link\s+[^>]*rel=["\']canonical["\'][^>]*href=["\']([^"\']*)["\']',
        html_text,
        re.IGNORECASE,
    )
    if not c_match:
        c_match = re.search(
            r'<link\s+[^>]*href=["\']([^"\']*)["\'][^>]*rel=["\']canonical["\']',
            html_text,
            re.IGNORECASE,
        )
    if c_match:
        meta["canonical"] = c_match.group(1).strip()

    # JSON-LD
    for j_match in re.finditer(
        r'<script\s+[^>]*type=["\']application/ld\+json["\'][^>]*>(.*?)</script>',
        html_text,
        re.IGNORECASE | re.DOTALL,
    ):
        try:
            raw_ld = j_match.group(1).strip()
            parsed = json.loads(raw_ld)
            meta["json_ld"].append(parsed)
        except Exception:
            meta["json_ld"].append(
                {"raw": j_match.group(1).strip(), "error": "Invalid JSON"}
            )

    # Headings
    for h in ("h1", "h2", "h3"):
        for m in re.finditer(
            rf"<{h}[^>]*>(.*?)</{h}>", html_text, re.IGNORECASE | re.DOTALL
        ):
            # Clean inner HTML tags
            clean = re.sub(r"<[^>]+>", " ", m.group(1))
            clean = " ".join(clean.split())
            if clean:
                meta["headings"][h].append(clean)

    # CMS signals
    lower_html = html_text.lower()
    if "wp-content" in lower_html or "wordpress" in lower_html:
        meta["cms_signals"].append("WordPress detected (wp-content / wp-includes)")
    if "wix.com" in lower_html or "wixsite" in lower_html:
        meta["cms_signals"].append("Wix detected")
    if "squarespace" in lower_html:
        meta["cms_signals"].append("Squarespace detected")
    if "shopify" in lower_html:
        meta["cms_signals"].append("Shopify detected")
    if "elementor" in lower_html:
        meta["cms_signals"].append("Elementor page builder detected")
    if "yoast" in lower_html:
        meta["cms_signals"].append("Yoast SEO plugin detected")

    return meta


def extract_links(html_text, base_url):
    parsed_base = urllib.parse.urlparse(base_url)
    base_domain = parsed_base.netloc.lower()

    internal = set()
    external = set()
    social = set()
    contacts = set()

    social_domains = (
        "linkedin.com",
        "instagram.com",
        "facebook.com",
        "twitter.com",
        "x.com",
        "youtube.com",
        "wa.me",
        "whatsapp.com",
    )

    for match in re.finditer(
        r'<a\s+[^>]*href=["\']([^"\']*)["\']', html_text, re.IGNORECASE
    ):
        href = match.group(1).strip()
        if not href or href.startswith("#") or href.startswith("javascript:"):
            continue

        if href.startswith("mailto:") or href.startswith("tel:"):
            contacts.add(href)
            continue

        full_url = urllib.parse.urljoin(base_url, href)
        parsed_target = urllib.parse.urlparse(full_url)
        target_domain = parsed_target.netloc.lower()

        if any(sd in target_domain for sd in social_domains):
            social.add(full_url)
        elif target_domain == base_domain or target_domain.endswith("." + base_domain):
            internal.add(full_url)
        elif target_domain:
            external.add(full_url)

    return {
        "internal": sorted(internal),
        "external": sorted(external),
        "social": sorted(social),
        "contacts": sorted(contacts),
        "counts": {
            "internal": len(internal),
            "external": len(external),
            "social": len(social),
            "contacts": len(contacts),
        },
    }


def main():
    target_url = (
        sys.argv[1] if len(sys.argv) > 1 else "https://www.amcsolutionscolombia.com/"
    )
    parsed_target = urllib.parse.urlparse(target_url)
    if not parsed_target.scheme:
        target_url = "https://" + target_url

    timestamp = datetime.now(UTC).strftime("%Y-%m-%d_%H-%M-%S")
    script_dir = os.path.dirname(os.path.abspath(__file__))
    out_dir = os.path.join(script_dir, "raw", timestamp)
    os.makedirs(out_dir, exist_ok=True)

    print(f"[*] Iniciando inspección de: {target_url}")
    print(f"[*] Directorio de salida: {out_dir}")

    # 1. Fetch Homepage
    print("[1/4] Descargando página de inicio...")
    home_res = fetch_url(target_url)

    # Save headers
    headers_file = os.path.join(out_dir, "headers.txt")
    with open(headers_file, "w", encoding="utf-8") as f:
        f.write(f"Target URL: {target_url}\n")
        f.write(f"Final URL: {home_res['final_url']}\n")
        f.write(f"Status Code: {home_res['status']}\n")
        f.write(f"Elapsed: {home_res['elapsed_ms']} ms\n")
        if home_res["error"]:
            f.write(f"Error: {home_res['error']}\n")
        f.write("\n--- Redirect Chain ---\n")
        for step in home_res["redirect_chain"]:
            f.write(
                f"{step['status']} {step['message']}: "
                f"{step['from_url']} -> {step['to_url']}\n"
            )
        f.write("\n--- Final Response Headers ---\n")
        for k, v in home_res["headers"].items():
            f.write(f"{k}: {v}\n")

    # Save homepage HTML
    html_text = ""
    if home_res["body"]:
        html_file = os.path.join(out_dir, "homepage.html")
        with open(html_file, "wb") as f:
            f.write(home_res["body"])
        try:
            html_text = home_res["body"].decode("utf-8", errors="replace")
        except Exception:
            html_text = str(home_res["body"])

    # 2. Fetch robots.txt
    print("[2/4] Consultando robots.txt...")
    robots_url = urllib.parse.urljoin(
        home_res["final_url"] or target_url, "/robots.txt"
    )
    robots_res = fetch_url(robots_url)
    robots_file = os.path.join(out_dir, "robots.txt")
    with open(robots_file, "w", encoding="utf-8") as f:
        f.write(f"# Query URL: {robots_url}\n")
        f.write(f"# Status Code: {robots_res['status']}\n")
        f.write(f"# Elapsed: {robots_res['elapsed_ms']} ms\n\n")
        if robots_res["body"]:
            try:
                f.write(robots_res["body"].decode("utf-8", errors="replace"))
            except Exception:
                f.write(str(robots_res["body"]))
        else:
            f.write(f"# No body / Error: {robots_res['error']}\n")

    # 3. Fetch sitemap.xml
    print("[3/4] Consultando sitemap.xml...")
    sitemap_url = urllib.parse.urljoin(
        home_res["final_url"] or target_url, "/sitemap.xml"
    )
    sitemap_res = fetch_url(sitemap_url)
    sitemap_file = os.path.join(out_dir, "sitemap.xml")
    with open(sitemap_file, "w", encoding="utf-8") as f:
        f.write(f"<!-- Query URL: {sitemap_url} -->\n")
        f.write(f"<!-- Status Code: {sitemap_res['status']} -->\n")
        f.write(f"<!-- Elapsed: {sitemap_res['elapsed_ms']} ms -->\n\n")
        if sitemap_res["body"]:
            try:
                f.write(sitemap_res["body"].decode("utf-8", errors="replace"))
            except Exception:
                f.write(str(sitemap_res["body"]))
        else:
            f.write(f"<!-- No body / Error: {sitemap_res['error']} -->\n")

    # 4. Parse Metadata and Links
    print("[4/4] Extrayendo metadatos y grafos de enlaces...")
    metadata = parse_html_metadata(html_text, home_res["final_url"] or target_url)
    with open(os.path.join(out_dir, "metadata.json"), "w", encoding="utf-8") as f:
        json.dump(metadata, f, indent=2, ensure_ascii=False)

    links = extract_links(html_text, home_res["final_url"] or target_url)
    with open(os.path.join(out_dir, "links.json"), "w", encoding="utf-8") as f:
        json.dump(links, f, indent=2, ensure_ascii=False)

    # 5. Summary
    summary = {
        "timestamp_utc": timestamp,
        "target_url": target_url,
        "final_url": home_res["final_url"],
        "status_code": home_res["status"],
        "elapsed_ms": home_res["elapsed_ms"],
        "html_size_bytes": len(home_res["body"]),
        "robots_status": robots_res["status"],
        "sitemap_status": sitemap_res["status"],
        "title": metadata["title"],
        "h1_count": len(metadata["headings"]["h1"]),
        "internal_links_count": links["counts"]["internal"],
        "external_links_count": links["counts"]["external"],
        "social_links_count": links["counts"]["social"],
        "cms_signals": metadata["cms_signals"],
        "output_directory": out_dir,
    }
    with open(os.path.join(out_dir, "summary.json"), "w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2, ensure_ascii=False)

    print("\n[+] Inspección técnica completada:")
    print(f"    - Estado HTTP: {home_res['status']} ({home_res['elapsed_ms']} ms)")
    print(f"    - URL final: {home_res['final_url']}")
    cms_desc = (
        ", ".join(metadata["cms_signals"]) if metadata["cms_signals"] else "No evidente"
    )
    print(f"    - CMS identificado: {cms_desc}")
    print(f"    - Robots.txt HTTP: {robots_res['status']}")
    print(f"    - Sitemap.xml HTTP: {sitemap_res['status']}")
    print(f"    - Título: {metadata['title']}")
    print(f"    - Enlaces internos descubiertos: {links['counts']['internal']}")
    print(f"    - Enlaces sociales descubiertos: {links['counts']['social']}")
    print(f"    - Artefactos guardados en: {out_dir}/\n")


if __name__ == "__main__":
    main()
