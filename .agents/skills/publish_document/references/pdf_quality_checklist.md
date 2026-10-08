# PDF Quality & Verification Checklist

Every document produced by `publish-document` must pass this two-stage quality verification before delivery.

## Stage 1: Content Integrity Verification

Run prior to visual review to verify that the publishing transformation preserved the approved artifact completely and without additions.

| Check | Requirement | Verification Method |
| :--- | :--- | :--- |
| **Zero missing content** | Every section, heading, question, probe, and note from the source artifact is present in the document. | Run `scripts/verify_content_integrity.py` or compare extracted text. |
| **Zero added claims** | No editorial opinions, unevidenced commentary, or unauthorized summaries were introduced. | Inspect document markup diff against source Markdown. |
| **Preserved structure** | Section hierarchy and relative sequence match the source artifact. | Verify outline and heading levels match source. |
| **Epistemic preservation** | Caveats, uncertainty bounds, and scope disclaimers remain attached to their propositions. | Verify that limitations are placed alongside their findings. |

## Stage 2: Visual QA Inspection

Perform visual inspection of rendered pages of the generated PDF (using available image/PDF inspection capabilities such as `view_file`).

| Area | Defect to Detect | Acceptance Standard |
| :--- | :--- | :--- |
| **Page Geometry** | Content clipping, broken margins, horizontal overflow. | Margins uniform (1.8cm–2.2cm). No elements bleed outside printable area. |
| **Orphan Headings** | Heading sitting at bottom of page with content on the next. | Headings must have at least 3–4 lines of body content before any page break. |
| **Widows / Orphans** | Single isolated line of a paragraph at top or bottom of page. | Paragraphs break cleanly with at least 2 lines grouped. |
| **Semantic Severing** | A question prompt separated from its follow-up probes across a page boundary. | Questions and clarification probes remain unified in the same block or page. |
| **Table Formatting** | Table columns overflowing or unreadable column widths; multi-page tables lacking headers. | Column widths fit printable width; headers repeat on page breaks. |
| **Visual Density** | Excessively cramped text or large accidental blank gaps. | Natural vertical pacing; cards and paragraphs comfortably separated. |
| **Headers & Footers** | Missing running headers, incorrect page numbering, or obscured footers. | Headers clear and aligned; footer displays exact `Página X de Y`. |
| **Contrast & Legibility** | Low-contrast text, illegible font sizes, or blurry elements. | Text sharp and readable with solid contrast against background. |
