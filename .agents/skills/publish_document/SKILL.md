---
name: publish-document
description: >-
  Transform an approved communication artifact into a polished distributable
  document (PDF) while preserving semantic and epistemic invariance.
---

# Publish Document

## Use when
- An approved communication artifact in Markdown (e.g. output/*.md) requires publication as a distributable PDF.
- Producing stakeholder-facing documents (questionnaires, reports, meeting guides, executive summaries).
- Not for drafting communication content or determining audience and goals (use communicate-findings).
- Not for internal repository documentation (use write_documentation).

## Steps
1. **Ingest approved artifact.** Verify the source Markdown artifact is approved. Confirm it has valid frontmatter and complete body text.
2. **Apply document contract.** Bind to the Epistemic Invariance Contract in `references/document_contract.md`. Treat source text as immutable: no text mutation, no semantic additions, no semantic deletions, and no weight distortion.
3. **Design document layout.** Map source sections into document markup (Typst) following `references/layout_principles.md`. Configure page geometry, margins, typographic scale, and structural containers without breaking semantic units.
4. **Compile document.** Compile source markup to PDF using the project publishing toolchain (`nix-shell -p typst poppler-utils --run "typst compile <input.typ> <output.pdf>"`).
5. **Verify content integrity.** Run `scripts/verify_content_integrity.py` or compare extracted text against source Markdown. Confirm zero dropped content, zero added claims, and preserved section hierarchy.
6. **Execute visual QA loop.** Visually inspect rendered pages of the generated PDF (using `view_file` on the PDF or rendered page images). Evaluate against `references/pdf_quality_checklist.md`.
7. **Resolve layout defects.** If visual defects occur (overflow, orphan headings, awkward table splits), adjust layout parameters in this strict order:
   - Geometry (margins, padding, spacing).
   - Structural breaks (without splitting semantically tied findings or caveats).
   - Typography (font size scale, leading).
   - Never copy-fit or alter text prose.
   Recompile and repeat inspection until zero defects remain.
8. **Deliver published deliverable.** Output the finished PDF under `output/pdf/` and source under `output/`.

## Your call
- Choice of layout profile or visual theme for the document.
- Layout collisions that cannot be solved by styling alone without structural compromise.
- Final approval of the compiled PDF before delivery to stakeholders.

## Done when
- The PDF deliverable exists under `output/pdf/`.
- Content integrity verification passes with zero omissions or additions.
- Visual inspection confirms zero layout defects against the quality checklist.
- The user approves the final deliverable.

## Hands off to
- Distribution to AMC stakeholders.
- `git-commit`: to commit publication source and compiled PDF.
