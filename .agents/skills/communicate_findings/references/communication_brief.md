# Communication Brief

## Objective

Establish the operational context for any communication artifact before writing. Every external document must answer to an explicit immediate goal and the broader discovery phase.

## Brief Schema

```yaml
communication:
  audience:
    role: "AMC representative (e.g. general management, commercial, operations)"
    technical_level: "non_technical | mixed | technical"
    domain_familiarity: "high"
    project_familiarity: "low | medium | high"
    decision_authority: "operational | strategic | unknown"

  artifact_mode: "progress_update | report | questionnaire | meeting_brief | decision_request | finding"

  immediate_goal:
    type: "inform | request_information | validate_interpretation | surface_finding | request_decision | request_access | confirm_scope | present_progress | explain_risk | propose_next_step | document_agreement"
    objective: "<What this artifact must accomplish in this specific interaction>"

  project_goal:
    objective: "<How this interaction advances the discovery or modeling phase>"

  desired_action:
    - "<Specific response, decision, or information expected from AMC>"

  source_inputs:
    - "<Evidence files, observation IDs, or open questions referenced>"

  constraints:
    language: "es"
    length: "short | medium | comprehensive"
    technical_depth: "minimal | moderate | detailed"
```

## Field Guidelines

### Audience Model
- **technical_level**: Most AMC contacts have low technical web familiarity. Do not simplify business logic, but strip implementation jargon.
- **domain_familiarity**: AMC representatives know their mining services, regulatory context, and clients well. Respect their domain mastery.
- **decision_authority**: Distinguish whether the recipient can approve scope changes, provide access credentials, or only describe daily operations.

### Goal Alignment
- **Immediate goal**: Prevents wandering into unnecessary topics. Focus only on the action needed now.
- **Project goal**: Prevents asking dead-end questions that do not reduce core project uncertainties.

### Desired Action
- State clearly what AMC needs to provide: descriptive text, validation of active services, operational workflow details, or formal approval.
