# Epistemic Invariance Contract — Content & Weight

## Core Principle

The publisher transforms document presentation, but must never alter informational content or epistemic status.

## Invariants

The document layout and publishing pipeline must enforce four strict invariants:

1. **Zero Text Mutation:**
   No rewriting, paraphrasing, or copy-fitting words to fit layout constraints. A sentence cannot be trimmed to avoid spilling onto a new page.

2. **Zero Semantic Addition:**
   No introducing new claims, introductory glosses, unprompted summaries, or editorial framing not present in the approved artifact.

3. **Zero Semantic Deletion:**
   No removing inconvenient findings, qualifications, scope disclaimers, uncertainty bounds, or probe questions.

4. **Zero Weight Distortion:**
   Visual hierarchy must reflect the structure of the source artifact, not distort the perceived credibility or importance of claims.

## Visual Emphasis vs Epistemic Emphasis

Visual design naturally uses visual emphasis to aid human reading:
- Document titles and section headers
- Numbered item indicators
- Facilitator notes and instructional badges
- Table formatting and structural dividers
- Key inquiry callout blocks

**The boundary:** Visual hierarchy may improve comprehension, but must not imply a stronger or different evidentiary status than the source artifact assigns.

### Prohibited Distortions
- Styling an empirical observation with the urgent alarm styling of a compliance violation (e.g. bold red alert boxes around routine findings).
- Styling an unverified hypothesis or interpretation with identical visual authority to audited empirical evidence.
- Isolating a methodological caveat inside a low-contrast footnote while placing the primary claim in an oversized card, obscuring the bound.
- Isolating a limitation on a different page from the finding it qualifies.

## Permitted Transformations

- Mapping Markdown headings (`#`, `##`, `###`) to corresponding typographic scales.
- Mapping bullet points, numbered lists, and blockquotes to styled containers, cards, or callout blocks.
- Extracting YAML frontmatter metadata (audience, artifact mode, date, document title) into running headers and footers.
- Adjusting page geometry, margins, paragraph leading, and font sizing to optimize density.
- Adding page numbers, running titles, and visual separator lines.
