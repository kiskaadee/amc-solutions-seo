---
name: review-findings
description: >-
  Interactive verification of evidence comprehension and epistemic discipline
  before proceeding with discovery, modeling, or solutions.
---

# Review Findings

## Use when
- A cycle of evidence collection has finished and requires human verification.
- Testing comprehension of facts, boundaries, and unknowns in `evidence/`.
- Not for collecting raw data or writing new evidence (use `record_evidence`).
- Not for formatting general documentation (use `write_documentation`).

## Steps
1. **Select target evidence.** Read the requested evidence files under `evidence/`. If none is specified, prompt the researcher to pick one.
2. **Conduct the 5-phase review.** Formulate one question at a time in Spanish following `references/archetypes.md`:
   - Phase 1: Factual recall (verify what was observed).
   - Phase 2: Epistemic distinction (separate direct evidence from inference).
   - Phase 3: Interpretation bounds (bound implications without unevidenced leaps).
   - Phase 4: Unknowns and gaps (identify required missing data).
   - Phase 5: Transfer or misconception (test reasoning against a counterexample or flawed claim).
3. **Wait for response.** Never disclose answers, hints, or options that give away the conclusion before the researcher responds.
4. **Evaluate and provide feedback.** Assess the response strictly against the cited observation records (`OBS-xxx`):
   - Highlight whether the response respects the scope of the inspection.
   - Point out unevidenced assumptions or conflation of absence of evidence with evidence of absence.
5. **Calibrate.** If the response is weak or shows misconception, probe with a simpler contrast. If solid, present a subtler transfer scenario.
6. **Conclude review.** Summarize verified facts, confirmed boundaries, and open questions that warrant further investigation. Do not modify evidence files.

## Your call
- Which evidence document or topic to review (step 1).
- Whether to conclude the session early or probe additional areas.

## Done when
- The researcher has addressed the five question phases for the chosen evidence set and the review summary is delivered.

## Hands off to
- `record_evidence`: if the review reveals unrecorded observations or flawed evidence records.
- Next research or analysis phase: once comprehension and boundaries are confirmed.
