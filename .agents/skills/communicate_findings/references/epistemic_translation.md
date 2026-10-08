# Epistemic Translation Guidelines

## Objective

Bridge technical observations and stakeholder communication without degrading epistemic discipline or inventing missing facts.

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

### Examples of Classification

- *Internal observation:* "Server header exposes Apache/2.4.52 and PHP/8.2.34."
  - For general progress update: **DISTRACTING** or **INTERNAL_ONLY** (omit).
  - For hosting security audit: **REQUIRED**.
- *Internal observation:* "Missing JSON-LD structured data."
  - For business progress update: **DISTRACTING** in technical form; reframe as "El sitio no contiene actualmente marcas estructuradas que faciliten a los buscadores identificar los servicios" if SEO visibility is the topic.
- *Internal observation:* "Contact page displays plain text phone and email, no direct click links or forms."
  - For inquiry on lead workflow: **REQUIRED**.

---

## Epistemic Rules for Communication

### 1. Never Promote Epistemic Status
- A fact remains a fact: strictly bounded by what was inspected.
- An interpretation remains an interpretation: never present an inference as an established fact.
- A hypothesis remains a hypothesis: present as a question or validation point, never as a conclusion.

### 2. Differentiate Technical Translation from Communication
Mechanical translation of jargon into Spanish is insufficient. Evaluate whether the concept itself matters to the recipient.
- *Negative example:* Translating "Canonical link is missing" to "Falta el enlace canónico". (AMC does not need the term unless they maintain the site).
- *Communicated form:* "Algunas páginas no indican formalmente a los buscadores cuál es la versión principal de su dirección web."

### 3. Bound Negative Findings
Absence of evidence is not evidence of absence.
- *Internal observation:* "No contact forms or CRM tracking scripts detected on `/contacto/`."
- *Unsafe claim:* "AMC does not have a CRM system or lead management process."
- *Epistemically sound communication:* "El sitio web no muestra formularios ni herramientas visibles de registro. Queremos consultar con AMC cómo reciben y gestionan internamente las solicitudes de contacto que llegan desde la página."

### 4. Separate Observation from Client Perception
Never assume how visitors react based solely on HTML structure.
- *Internal observation:* "Service pages contain bullet lists without descriptive text."
- *Unsafe claim:* "Potential clients cannot understand what AMC does."
- *Epistemically sound communication:* "Las páginas de servicios presentan actualmente listas puntuales sin descripciones detalladas. Deseamos confirmar con AMC si esta presentación es suficiente para sus prospectos o si convendría ampliar la explicación de sus capacidades clave."
