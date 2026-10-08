# Epistemic Translation Guidelines

## Objective

Bridge technical observations and stakeholder communication without degrading epistemic discipline or inventing missing facts.

## Governing Invariant

The communication layer may transform the presentation of knowledge, but it may never transform its epistemic status.

### Forbidden Epistemic Transformations

| Transformation | Status | Rule |
| :--- | :---: | :--- |
| `unknown -> fact` | **FORBIDDEN** | A gap in research cannot be filled with plausible assumptions. |
| `hypothesis -> finding` | **FORBIDDEN** | An untested explanation cannot be stated as an established result. |
| `source claim -> verified fact` | **FORBIDDEN** | What a third party states must not be asserted as verified truth without corroboration. |
| `historical -> current` | **FORBIDDEN** | Evidence from past periods (e.g. 2023 contract) cannot be asserted as current reality. |
| `absence observed -> absolute absence` | **FORBIDDEN** | Lack of profile in a sample cannot be asserted as total non-existence. |
| `pending / unaudited -> canonical` | **FORBIDDEN** | Unaudited candidate findings cannot be introduced as established facts. |

---

## Communication Truth vs. Communication Framing

Communication framing may change; epistemic status may not.

- **Truth (Invariant):** What the evidence directly establishes (e.g. two public sources show different addresses).
- **Framing (Purposeful adaptation):** How that truth is contextualized to achieve the communication goal without introducing unevidenced assertions.

| Framing Variant | Example | Status | Rationale |
| :--- | :--- | :---: | :--- |
| **Discrepancy report** | "Encontramos información contradictoria sobre la dirección en registros públicos..." | **Valid** | Accurately describes the empirical discrepancy. |
| **Operational clarification** | "Queremos confirmar cuál es actualmente la dirección principal de AMC..." | **Valid** | Focuses communication on the current operational reality. |
| **Unevidenced assertion** | "La información pública de AMC está desactualizada y genera desconfianza." | **FORBIDDEN** | Asserts unverified causes and negative impacts not in evidence. |

---

## Subordinating Business Relevance to Evidence

Business relevance must be either:
1. Directly supported by the project objective, or
2. Explicitly framed as a question or potential implication.

Never introduce an operational, commercial, or strategic consequence merely because it sounds plausible.
- *Unsafe claim:* "La inconsistencia de direcciones está haciendo que AMC pierda clientes y oportunidades."
- *Epistemically sound:* "Necesitamos confirmar cuál es la dirección principal para mantener consistente la información pública de la empresa en los mapas y el sitio web."

---

## Handling AMC Responses

A response from an AMC representative is a first-party source claim unless independently established otherwise. The communication skill must never convert a stakeholder response directly into canonical institutional fact.

Responses pass to `record_evidence` to receive:
1. First-party provenance and capture date.
2. Explicit temporal scope (current reality, historical practice, or future plan).
3. Corroboration evaluation: evaluate corroboration before presenting the response as independently established fact. An uncorroborated response remains an admissible first-party source claim with explicit provenance and temporal scope.

---

## Information Selection Taxonomy

Before drafting, classify each candidate piece of information from internal research:

| Classification | Definition | Action in Communication |
| :--- | :--- | :--- |
| **REQUIRED** | Crucial to the immediate goal or decision | Include prominently |
| **SUPPORTING** | Clarifies the business implication of a required point | Include in secondary disclosure |
| **CONTEXTUAL** | Helpful background if length permits | Include briefly or omit if brief is tight |
| **DISTRACTING** | Implementation trivia irrelevant to AMC's decision | Omit entirely |
| **INTERNAL_ONLY** | Scaffolding, tooling signatures, crawler paths | Omit entirely |
| **UNSAFE_TO_ASSERT** | Unverified inference, speculation, or unproven gap | State as uncertainty or omit |
