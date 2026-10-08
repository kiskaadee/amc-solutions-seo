# Artifact Modes

## Objective

Standardize communication formats to match stakeholder interaction scenarios.

## Progressive Disclosure Standard

All artifacts follow the progressive disclosure pattern:

1. **Human-readable conclusion:** Clear summary of the observation or status in plain language.
2. **Business relevance:** Explanation of why this matters for AMC's operations, prospects, or presence.
3. **Bounded technical context:** Optional, minimal technical references needed for clarity.
4. **Source traceability and gaps:** Explicit reference to evidence records (`OBS-xxx`) and remaining uncertainties.

---

## Supported Modes

### 1. `progress_update`
- **Use when:** Reporting periodic research status to AMC representatives.
- **Tone:** Professional, objective, calm.
- **Structure:**
  1. *Qué hemos revisado:* Summary of inspected assets or channels.
  2. *Qué hemos encontrado:* High-level verified observations.
  3. *Qué permanece incierto:* Ambiguities requiring confirmation.
  4. *Qué necesitamos de AMC:* Next concrete steps or inputs requested.
- **Rule:** Keep under one page. Do not include raw server headers or internal logs.

### 2. `report`
- **Use when:** Delivering a comprehensive synthesis of an audit or discovery milestone.
- **Structure:**
  1. *Resumen ejecutivo:* Strategic takeaway and current digital posture.
  2. *Áreas evaluadas:* Sections structured by user/business impact (e.g. Canales de contacto, Presentación de servicios, Señales para buscadores).
  3. *Hallazgos detallados:* Findings using progressive disclosure and citing evidence.
  4. *Preguntas y siguientes pasos:* Key open questions for AMC.
- **Rule:** Group by business area, not by tools or technical inspection order.

### 3. `questionnaire`
- **Use when:** Requesting operational details or workflow clarifications from AMC.
- **Structure:**
  1. *Contexto del requerimiento:* One short paragraph explaining the purpose.
  2. *Preguntas prioritarias:* 2 to 4 structured questions focused on actual workflows.
  3. *Forma de respuesta esperada:* Instructions on how to respond (written, voice note, or brief call).
- **Rule:** Never exceed 5 questions in a single touchpoint. Avoid yes/no dead ends.

### 4. `meeting_brief`
- **Use when:** Preparing an agenda or discussion outline for a live conversation with AMC.
- **Structure:**
  1. *Objetivo de la sesión:* What decision or validation the meeting must produce.
  2. *Puntos de discusión:* Bulleted topics with short context and key questions.
  3. *Decisiones requeridas:* Explicit list of approvals or definitions needed before closing.
- **Rule:** Highlight discussion points rather than lengthy prose.

### 5. `decision_request`
- **Use when:** Requiring formal approval or choosing between alternative paths.
- **Structure:**
  1. *Decisión requerida:* Direct statement of the choice to make.
  2. *Contexto y motivación:* Why the decision is needed now.
  3. *Opciones evaluadas:* 2 or 3 concrete alternatives with operational trade-offs.
  4. *Recomendación técnica preliminar:* Recommended option marked clearly, with reasons.
  5. *Impacto en el cronograma:* Effect of each choice on the discovery timeline.
- **Rule:** Give balanced trade-offs without coercive or sales language.

### 6. `finding`
- **Use when:** Communicating an individual discovery item or critical observation.
- **Structure:**
  1. *Situación observada:* Plain statement of what was found.
  2. *Implicación práctica:* How it affects potential clients or search visibility.
  3. *Verificación requerida:* Question or confirmation needed from AMC.
- **Rule:** Keep strictly focused on a single topic or page area.
