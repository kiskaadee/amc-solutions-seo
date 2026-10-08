# Document Layout Principles

## Objective

Deliver readable, professional, publication-grade documents (PDF) that communicate approved findings clearly without altering their meaning.

## Semantic Units and Page Flow

A layout must keep semantically coupled information intact:

1. **Findings and Bounds:** Never let a page break sever a finding from its direct limitation, uncertainty bound, or cited evidence.
2. **Prompts and Probes:** In questionnaires and conversation guides, keep a primary question and its subordinate clarification probes inside the same visual block (`breakable: false` where appropriate).
3. **Headings and Body:** Never allow orphan headings (a heading placed near the bottom of a page without at least 3-4 lines of subsequent content).
4. **Tables:** If a table spans multiple pages, repeat the header row on every subsequent page.

## Defect Resolution Order

When resolving layout collisions, overflow, or awkward breaks, adjust parameters in this strict hierarchical sequence:

1. **Geometry:**
   - Adjust page margins (e.g. from 2.2cm to 1.8cm).
   - Adjust component padding and gutter spacing (e.g. card inset from 10pt to 7pt).
   - Adjust paragraph spacing and leading (`par(leading: 0.52em)`).

2. **Structural Breaks:**
   - Insert explicit page breaks (`#pagebreak()`) to keep cohesive sections together.
   - Adjust table column distributions and alignment.
   - Rebalance block grouping without altering content order or semantic relationships.

3. **Typography:**
   - Adjust body font size within a bounded readable range (e.g. 8.5pt to 10.5pt).
   - Adjust heading sizes proportionally.

4. **Never Copy-Fit:**
   - Never trim words, rephrase sentences, or delete bullet points to fit a page.
   - If a layout cannot be reconciled through geometry, structure, and typography, escalate to human decision.

## Visual Styling Guidelines (Typst)

- **Typography:** Prefer clear, high-legibility sans-serif typefaces (e.g. `Inter`). Set Spanish language rules (`lang: "es"`).
- **Color Palette:** Professional, subdued slate and neutral palette (e.g. `#0f172a` text, `#475569` muted text, `#e2e8f0` borders, `#f8fafc` card backgrounds, `#2563eb` primary accents).
- **Header & Footer:** Include running header with document title and context, and footer with project identification and dynamic page counter (`Página X de Y`).
- **Cards & Callouts:** Use subtle borders, left accent strokes, and rounded corners (3-4pt) to demarcate question cards or facilitator notes.
