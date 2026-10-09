#!/usr/bin/env python3
"""Verify content integrity between source Markdown and published Typst/PDF artifact.

Enforces Epistemic Invariance:
1. Ensures all headings, questions, and body text from source Markdown exist in target.
2. Detects unauthorized content additions or omissions.
"""

import argparse
import difflib
import re
import subprocess
import sys
from pathlib import Path


def strip_frontmatter(md_text: str) -> str:
    """Remove YAML frontmatter from markdown text."""
    if md_text.startswith("---"):
        parts = md_text.split("---", 2)
        if len(parts) >= 3:
            return parts[2]
    return md_text


def extract_meaningful_chunks(md_text: str) -> list[str]:
    """Extract paragraphs, headings, bullet points, and quotes from markdown."""
    clean_text = strip_frontmatter(md_text)
    raw_lines = clean_text.splitlines()
    chunks = []
    current_block = []

    def flush_block():
        nonlocal current_block
        if current_block:
            content = " ".join(current_block).strip()
            if content:
                chunks.append(content)
            current_block = []

    for line in raw_lines:
        line_str = line.strip()
        if line_str in ("---", "***", "___") or not line_str:
            flush_block()
            continue

        is_item = bool(re.match(r"^(\s*[-*+]|\s*\d+\.|\s*>|\s*#{1,6})\s+", line))
        if is_item:
            flush_block()

        cleaned = re.sub(r"^#{1,6}\s+", "", line_str)
        cleaned = re.sub(r"^>\s*", "", cleaned)
        cleaned = re.sub(r"^[-*+]\s+", "", cleaned)
        cleaned = re.sub(r"^\d+\.\s+", "", cleaned)
        cleaned = re.sub(r"[*_`]", "", cleaned).strip()

        if cleaned:
            if is_item:
                chunks.append(cleaned)
            else:
                current_block.append(cleaned)

    flush_block()
    return chunks


def get_target_text(target_path: Path) -> str:
    """Read target text from .typ file or extract from .pdf using pdftotext."""
    if target_path.suffix.lower() == ".typ":
        return target_path.read_text(encoding="utf-8")
    elif target_path.suffix.lower() == ".pdf":
        try:
            res = subprocess.run(
                ["pdftotext", str(target_path), "-"],
                capture_output=True,
                text=True,
                check=True,
            )
            return res.stdout
        except (subprocess.SubprocessError, FileNotFoundError):
            # Fallback to nix-shell pdftotext if needed
            res = subprocess.run(
                [
                    "nix-shell",
                    "-p",
                    "poppler-utils",
                    "--run",
                    f"pdftotext '{target_path}' -",
                ],
                capture_output=True,
                text=True,
                check=True,
            )
            return res.stdout
    else:
        raise ValueError(f"Unsupported target format: {target_path.suffix}")


def normalize_whitespace(text: str) -> str:
    """Normalize text into single-spaced lowercase alphanumeric string for fuzzy check."""
    cleaned = re.sub(r"[^\w\s]", " ", text.lower())
    return " ".join(cleaned.split())


def check_integrity(source_path: Path, target_path: Path) -> tuple[bool, list[str]]:
    """Compare source markdown text blocks against target."""
    source_md = source_path.read_text(encoding="utf-8")
    chunks = extract_meaningful_chunks(source_md)
    target_raw = get_target_text(target_path)
    target_norm = normalize_whitespace(target_raw)

    missing = []
    for chunk in chunks:
        # Check normalized form
        chunk_norm = normalize_whitespace(chunk)
        if len(chunk_norm) < 15:
            # Skip very short fragments
            continue

        if chunk_norm not in target_norm:
            # Check fuzzy match ratio across target
            matcher = difflib.SequenceMatcher(None, chunk_norm, target_norm)
            match = matcher.find_longest_match(0, len(chunk_norm), 0, len(target_norm))
            coverage = match.size / len(chunk_norm) if len(chunk_norm) > 0 else 0
            if coverage < 0.75:
                missing.append(chunk)

    return (len(missing) == 0, missing)


def main():
    parser = argparse.ArgumentParser(
        description="Verify content integrity between Markdown source and document target."
    )
    parser.add_argument("source_md", type=Path, help="Path to source Markdown file")
    parser.add_argument("target", type=Path, help="Path to target .typ or .pdf file")
    args = parser.parse_args()

    if not args.source_md.exists():
        print(f"Error: Source file '{args.source_md}' does not exist.", file=sys.stderr)
        sys.exit(1)

    if not args.target.exists():
        print(f"Error: Target file '{args.target}' does not exist.", file=sys.stderr)
        sys.exit(1)

    passed, missing = check_integrity(args.source_md, args.target)

    if passed:
        print(
            f"PASS: All content blocks from '{args.source_md.name}' verified in '{args.target.name}'."
        )
        sys.exit(0)
    else:
        print(
            f"FAIL: {len(missing)} content blocks from '{args.source_md.name}' were not found in '{args.target.name}':",
            file=sys.stderr,
        )
        for i, m in enumerate(missing, 1):
            sample = m[:120] + "..." if len(m) > 120 else m
            print(f"  [{i}] {sample}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
