#!/usr/bin/env python3
"""tools/inspect_internal_pages.py.

Inspección técnica de páginas internas (contacto y servicios) de AMC Solutions.
Descarga y analiza evidencias crudas en:
  tools/raw/<timestamp>/
    ├── pages/
    │   ├── contacto.html
    │   ├── servicios-ambientales.html
    │   └── ...
    └── internal_pages_summary.json
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
from typing import Any

USER_AGENT = (
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 "
    "(KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36"
)

DEFAULT_TARGETS = [
    "https://www.amcsolutionscolombia.com/contacto/",
    "https://www.amcsolutionscolombia.com/servicios-ambientales/",
    "https://www.amcsolutionscolombia.com/servicios-de-topografia/",
    "https://www.amcsolutionscolombia.com/servicios-empresariales/",
    "https://www.amcsolutionscolombia.com/servicios-geologicos/",
    "https://www.amcsolutionscolombia.com/servicios-mineros/",
]


class RedirectTracker(urllib.request.HTTPRedirectHandler):
    """Rastreador de la cadena de redirecciones HTTP."""

    def __init__(self) -> None:
        super().__init__()
        self.chain: list[dict[str, Any]] = []

    def redirect_request(
        self,
        req: urllib.request.Request,
        fp: Any,
        code: int,
        msg: str,
        headers: Any,
        newurl: str,
    ) -> urllib.request.Request | None:
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


def fetch_url(url: str, timeout: int = 20) -> dict[str, Any]:
    """Descarga una URL registrando cabeceras, estado y tiempo de respuesta."""
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
            body: bytes = resp.read()
            final_url: str = resp.geturl()
            status: int = getattr(resp, "status", 200)
            headers: dict[str, str] = dict(resp.headers.items())
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


def extract_slug(url: str) -> str:
    """Extrae un slug representativo para nombrar el archivo de salida."""
    parsed = urllib.parse.urlparse(url)
    path = parsed.path.strip("/")
    if not path:
        return "homepage"
    # Reemplazar barras por guiones
    slug = path.replace("/", "_")
    return re.sub(r"[^a-zA-Z0-9_\-]", "", slug)


def parse_page_details(html_text: str, base_url: str) -> dict[str, Any]:
    """Extrae metadatos, encabezados, formularios, contactos y scripts de analítica."""
    data: dict[str, Any] = {
        "title": None,
        "description": None,
        "canonical": None,
        "robots": None,
        "opengraph": {},
        "headings": {"h1": [], "h2": [], "h3": []},
        "json_ld_count": 0,
        "json_ld": [],
        "forms": [],
        "contacts": {
            "mailto": [],
            "tel": [],
            "whatsapp": [],
            "plaintext_emails": [],
            "plaintext_phones": [],
        },
        "social_links": [],
        "analytics_scripts": [],
        "word_count_estimate": 0,
    }

    # 1. Title
    t_match = re.search(
        r"<title[^>]*>(.*?)</title>", html_text, re.IGNORECASE | re.DOTALL
    )
    if t_match:
        data["title"] = t_match.group(1).strip()

    # 2. Meta tags
    for tag in re.finditer(r"<meta\s+([^>]+)>", html_text, re.IGNORECASE):
        attrs = dict(
            re.findall(r'([a-zA-Z0-9_\-:]+)=["\']([^"\']*)["\']', tag.group(1))
        )
        name = attrs.get("name", "").lower()
        prop = attrs.get("property", "").lower()
        content = attrs.get("content", "")

        if name == "description":
            data["description"] = content
        elif name == "robots":
            data["robots"] = content

        if prop.startswith("og:"):
            data["opengraph"][prop] = content

    # 3. Canonical
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
        data["canonical"] = c_match.group(1).strip()

    # 4. JSON-LD
    for j_match in re.finditer(
        r'<script\s+[^>]*type=["\']application/ld\+json["\'][^>]*>(.*?)</script>',
        html_text,
        re.IGNORECASE | re.DOTALL,
    ):
        data["json_ld_count"] += 1
        try:
            parsed = json.loads(j_match.group(1).strip())
            data["json_ld"].append(parsed)
        except Exception:
            data["json_ld"].append(
                {"raw": j_match.group(1).strip(), "error": "Invalid JSON"}
            )

    # 5. Headings
    for h in ("h1", "h2", "h3"):
        for m in re.finditer(
            rf"<{h}[^>]*>(.*?)</{h}>", html_text, re.IGNORECASE | re.DOTALL
        ):
            clean = re.sub(r"<[^>]+>", " ", m.group(1))
            clean = " ".join(clean.split())
            if clean:
                data["headings"][h].append(clean)

    # 6. Forms
    for form_match in re.finditer(
        r"<form\s*([^>]*)>(.*?)</form>", html_text, re.IGNORECASE | re.DOTALL
    ):
        form_attrs_raw = form_match.group(1)
        form_body = form_match.group(2)
        attrs = dict(
            re.findall(r'([a-zA-Z0-9_\-]+)=["\']([^"\']*)["\']', form_attrs_raw)
        )
        # Buscar inputs y textareas
        inputs: list[dict[str, str]] = []
        for inp in re.finditer(r"<input\s+([^>]+)>", form_body, re.IGNORECASE):
            inp_attrs = dict(
                re.findall(r'([a-zA-Z0-9_\-]+)=["\']([^"\']*)["\']', inp.group(1))
            )
            inputs.append(
                {
                    "tag": "input",
                    "type": inp_attrs.get("type", "text"),
                    "name": inp_attrs.get("name", ""),
                    "id": inp_attrs.get("id", ""),
                    "placeholder": inp_attrs.get("placeholder", ""),
                }
            )
        for txt in re.finditer(
            r"<textarea\s+([^>]+)>(.*?)</textarea>",
            form_body,
            re.IGNORECASE | re.DOTALL,
        ):
            txt_attrs = dict(
                re.findall(r'([a-zA-Z0-9_\-]+)=["\']([^"\']*)["\']', txt.group(1))
            )
            inputs.append(
                {
                    "tag": "textarea",
                    "type": "textarea",
                    "name": txt_attrs.get("name", ""),
                    "id": txt_attrs.get("id", ""),
                    "placeholder": txt_attrs.get("placeholder", ""),
                }
            )

        data["forms"].append(
            {
                "action": attrs.get("action", ""),
                "method": attrs.get("method", "GET").upper(),
                "id": attrs.get("id", ""),
                "class": attrs.get("class", ""),
                "fields_count": len(inputs),
                "fields": inputs,
            }
        )

    # 7. Contact Links & Social Links
    social_domains = (
        "linkedin.com",
        "instagram.com",
        "facebook.com",
        "twitter.com",
        "x.com",
        "youtube.com",
    )
    for match in re.finditer(
        r'<a\s+[^>]*href=["\']([^"\']*)["\']', html_text, re.IGNORECASE
    ):
        href = match.group(1).strip()
        if href.startswith("mailto:"):
            data["contacts"]["mailto"].append(href.replace("mailto:", "").split("?")[0])
        elif href.startswith("tel:"):
            data["contacts"]["tel"].append(href.replace("tel:", ""))
        elif "wa.me" in href or "whatsapp.com" in href:
            data["contacts"]["whatsapp"].append(href)
        elif any(sd in href.lower() for sd in social_domains):
            data["social_links"].append(href)

    # Limpiar duplicados
    for k in ("mailto", "tel", "whatsapp"):
        data["contacts"][k] = sorted(set(data["contacts"][k]))
    data["social_links"] = sorted(set(data["social_links"]))

    # 8. Plaintext Emails & Phone numbers in HTML visible body
    # Limpiar etiquetas de script y estilo para evitar falsos positivos
    clean_body = re.sub(
        r"<(script|style)[^>]*>.*?</\1>", "", html_text, flags=re.IGNORECASE | re.DOTALL
    )
    clean_text = re.sub(r"<[^>]+>", " ", clean_body)

    found_emails = set(
        re.findall(r"[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+", clean_text)
    )
    # Filtrar extensiones comunes de imágenes o assets que parezcan emails
    valid_emails = [
        em
        for em in sorted(found_emails)
        if not re.search(r"\.(png|jpg|jpeg|webp|gif|svg|css|js)$", em, re.IGNORECASE)
    ]
    data["contacts"]["plaintext_emails"] = valid_emails

    # Teléfonos colombianos aproximados: (+57...) o 3xx-xxx-xxxx o 60x...
    found_phones = set(
        re.findall(
            r"(?:\+?57\s?)?(?:3\d{2}[\s.-]?\d{3}[\s.-]?\d{4}|60\d[\s.-]?\d{7})",
            clean_text,
        )
    )
    data["contacts"]["plaintext_phones"] = sorted(found_phones)

    # 9. Analytics & Tracking Scripts
    lower_html = html_text.lower()
    if "gtm.js" in lower_html or "googletagmanager.com/gtm.js" in lower_html:
        data["analytics_scripts"].append("Google Tag Manager (gtm.js)")
    if "gtag.js" in lower_html or "googletagmanager.com/gtag/js" in lower_html:
        data["analytics_scripts"].append("Google Analytics 4 / gtag.js")
    if (
        "analytics.js" in lower_html
        or "google-analytics.com/analytics.js" in lower_html
    ):
        data["analytics_scripts"].append("Universal Analytics (analytics.js)")
    if "connect.facebook.net" in lower_html or "fbq(" in lower_html:
        data["analytics_scripts"].append("Meta Pixel (fbq)")
    if "hotjar.com" in lower_html:
        data["analytics_scripts"].append("Hotjar")
    if "clarity.ms" in lower_html:
        data["analytics_scripts"].append("Microsoft Clarity")

    # 10. Word Count Estimate
    words = clean_text.split()
    data["word_count_estimate"] = len(words)

    return data


def main() -> None:
    targets = sys.argv[1:] if len(sys.argv) > 1 else DEFAULT_TARGETS

    timestamp = datetime.now(UTC).strftime("%Y-%m-%d_%H-%M-%S")
    script_dir = os.path.dirname(os.path.abspath(__file__))
    out_dir = os.path.join(script_dir, "raw", timestamp)
    pages_dir = os.path.join(out_dir, "pages")
    os.makedirs(pages_dir, exist_ok=True)

    print(f"[*] Iniciando inspección de {len(targets)} páginas internas")
    print(f"[*] Directorio de salida: {out_dir}")

    results: list[dict[str, Any]] = []

    for idx, target_url in enumerate(targets, start=1):
        parsed = urllib.parse.urlparse(target_url)
        if not parsed.scheme:
            target_url = "https://" + target_url

        slug = extract_slug(target_url)
        print(f"\n[{idx}/{len(targets)}] Consultando: {target_url} (slug: {slug})")
        res = fetch_url(target_url)

        html_text = ""
        if res["body"]:
            page_file = os.path.join(pages_dir, f"{slug}.html")
            with open(page_file, "wb") as f:
                f.write(res["body"])
            try:
                html_text = res["body"].decode("utf-8", errors="replace")
            except Exception:
                html_text = str(res["body"])

        page_data = parse_page_details(html_text, res["final_url"] or target_url)

        page_record = {
            "target_url": target_url,
            "final_url": res["final_url"],
            "slug": slug,
            "status_code": res["status"],
            "elapsed_ms": res["elapsed_ms"],
            "html_size_bytes": len(res["body"]),
            "error": res["error"],
            "redirect_chain": res["redirect_chain"],
            "analysis": page_data,
        }
        results.append(page_record)

        # Resumen en consola
        status_disp = f"HTTP {res['status']}" if res["status"] else "Error"
        print(f"    - Estado: {status_disp} ({res['elapsed_ms']} ms)")
        print(f"    - Título: {page_data['title']}")
        print(f"    - H1: {page_data['headings']['h1']}")
        print(f"    - Formularios detectados: {len(page_data['forms'])}")
        print(f"    - Contacto Mailto: {page_data['contacts']['mailto']}")
        print(f"    - Contacto Tel: {page_data['contacts']['tel']}")
        print(f"    - WhatsApp: {page_data['contacts']['whatsapp']}")
        print(f"    - Correos en texto: {page_data['contacts']['plaintext_emails']}")
        print(f"    - Teléfonos en texto: {page_data['contacts']['plaintext_phones']}")
        print(f"    - Scripts de analítica: {page_data['analytics_scripts']}")
        print(f"    - Palabras estimadas: {page_data['word_count_estimate']}")

    # Guardar resumen global
    summary_path = os.path.join(out_dir, "internal_pages_summary.json")
    with open(summary_path, "w", encoding="utf-8") as f:
        json.dump(
            {
                "timestamp_utc": timestamp,
                "targets_count": len(targets),
                "output_directory": out_dir,
                "pages": results,
            },
            f,
            indent=2,
            ensure_ascii=False,
        )

    print("\n[+] Inspección de páginas internas completada.")
    print(f"    - Resumen estructurado guardado en: {summary_path}")


if __name__ == "__main__":
    main()
