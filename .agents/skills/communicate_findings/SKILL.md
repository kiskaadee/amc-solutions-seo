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

## Input Contract
Admissible inputs:
- Canonical evidence records (`evidence/`).
- Audited findings explicitly marked eligible (`disposition: admit` AND `audit_status: passed`).
- Bounded open questions derived from audited research.
- Project context needed to establish communication goals.

Forbidden as established facts:
- Pending candidates (`audit_status: pending`).
- Worker-admitted but unaudited findings.
- Proposed anchors (`anchor_state.proposed`).
- Discarded candidates.
- Hypotheses or interpretations unsupported by selected evidence.

## Steps
1. **Ingest and bind brief.** Validate inputs against the Input Contract and establish the brief (audience, immediate goal, project goal, artifact mode, constraints) following `references/communication_brief.md`.
2. **Classify candidate information.** Categorize source knowledge into REQUIRED, SUPPORTING, CONTEXTUAL, DISTRACTING, INTERNAL_ONLY, and UNSAFE_TO_ASSERT using `references/epistemic_translation.md`.
3. **Structure by artifact mode.** Apply progressive disclosure (human-readable conclusion -> business context -> optional technical detail) matching `references/artifact_modes.md`. Subordinate business relevance to evidence. Omit repository identifiers from stakeholder prose.
4. **Formulate inquiries.** If the goal involves discovery or validation, construct questions with the internal question-to-uncertainty mapping in `references/question_design.md`.
5. **Validate epistemic integrity.** Verify that framing changes did not alter epistemic status. Preserve uncertainties and trace every claim to evidence.
6. **Deliver artifact in Spanish.** Output the document or message ready for AMC representatives.

## Your call
- Audience model and communication goal parameters (step 1).
- Approval of omitted technical details vs. included business implications (step 2).
- Approval of the final drafted communication artifact before delivery.

## Done when
- The communication artifact is delivered in Spanish, strictly grounded in recorded evidence, aligned with the brief's goal, and approved by the user.

## Hands off to
- AMC stakeholder interaction / interview loop.
- `record_evidence`: AMC responses are first-party source claims. Hand them off to `record_evidence` for provenance capture, temporal bounding, and corroboration evaluation before presenting as independently established fact.
