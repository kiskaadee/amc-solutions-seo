---
name: communicate-findings
description: >-
  Transform validated research, evidence, and open questions into clear,
  decision-oriented communication for AMC representatives without altering
  epistemic status.
---

# Communicate Findings

## Use when
- Preparing stakeholder-facing communications (progress updates, question sets, meeting briefs, findings reports).
- Translating technical research insights into business-relevant inquiries or decision requests.
- Not for internal repository documentation (use write_documentation).
- Not for collecting or updating canonical evidence records (use record_evidence).
- Not for internal epistemic comprehension review (use review_findings).

## Steps
1. **Ingest and bind brief.** Gather source evidence or findings and establish the communication brief (audience, immediate goal, project goal, artifact mode, constraints) following `references/communication_brief.md`.
2. **Classify candidate information.** Categorize source knowledge into REQUIRED, SUPPORTING, CONTEXTUAL, DISTRACTING, INTERNAL_ONLY, and UNSAFE_TO_ASSERT using `references/epistemic_translation.md`.
3. **Structure by artifact mode.** Apply progressive disclosure (human-readable conclusion -> business context -> optional technical detail) matching the chosen format in `references/artifact_modes.md`.
4. **Formulate inquiries.** If the communication goal involves validation or discovery, construct process-focused questions with high information gain following `references/question_design.md`.
5. **Validate epistemic integrity.** Verify no interpretation became a fact, no hypothesis became a finding, uncertainty is explicitly bounded, and all claims trace back to evidence.
6. **Deliver artifact in Spanish.** Output the document or message ready for AMC representatives.

## Your call
- Audience model and communication goal parameters (step 1).
- Approval of omitted technical details vs. included business implications (step 2).
- Approval of the final drafted communication artifact before delivery.

## Done when
- The communication artifact is delivered in Spanish, strictly grounded in recorded evidence, aligned with the brief's goal, and approved by the user.

## Hands off to
- AMC stakeholder interaction / interview loop.
- `record_evidence`: when AMC responses provide new empirical data or workflow facts to record.
