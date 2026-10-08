# Question Design Guidelines

## Objective

Transform research uncertainties into high-value diagnostic questions that uncover operational reality rather than collecting technology labels.

## Core Principle

Ask about actual operational workflows and business priorities, not software tools or technical configurations.

---

## Tool Inquiry vs. Workflow Inquiry

| Approach | Weak (Tool-focused) | Strong (Workflow-focused) | Why |
| :--- | :--- | :--- | :--- |
| **Contact management** | "¿Tienen un CRM instalado?" | "Cuando una persona encuentra el sitio web y decide contactar a AMC, ¿cómo se recibe esa solicitud y qué pasos siguen internamente para atenderla?" | Discovers the real operational path, regardless of software used. |
| **Service lines** | "¿Estos servicios están actualizados?" | "De los servicios listados en el sitio web, ¿cuáles representan actualmente las principales líneas de negocio activas y cuáles tienen menor prioridad comercial?" | Distinguishes current strategic focus from legacy or placeholder content. |
| **Contact channels** | "¿Por qué no tienen formulario web?" | "Observamos que los datos de contacto se presentan como texto (teléfono y correo). ¿Representa esto el canal habitual por el que prefieren recibir consultas, o utilizan también canales directos como WhatsApp?" | Explores channel preference without judging the current setup. |
| **Target audience** | "¿Cuál es su buyer persona?" | "En los servicios de asesoría ambiental y minera, ¿qué tipo de cliente o interlocutor suele solicitar la propuesta: gerencias generales, directores de proyecto o responsables de cumplimiento?" | Clarifies technical vs. executive decision-makers without marketing buzzwords. |

---

## Internal Question Architecture

Stakeholders receive concise, human-readable prose. Internally, the research system must maintain the structural link between the question, the evidence, and the downstream decision:

```yaml
question:
  text: "¿Cuál es actualmente la sede principal de atención de AMC en Valledupar?"
  evidence_basis:
    - "SRC-001"
  unresolved_uncertainty:
    - "Vigencia operativa de sedes en Carrera 14 frente a Carrera 19d"
  decision_dependency:
    - "Modelado de presencia local (NAP) y arquitectura de canales de contacto"
  anticipated_answer_classes:
    - "Carrera 19d es la única sede comercial y operativa activa"
    - "Carrera 14 sigue operando como sede administrativa"
    - "Ambas sedes tienen funciones diferenciadas activas"
    - "Otra ubicación no contemplada"
```

*Note on anticipated answer classes:* These are planning hypotheses, not an exhaustive answer set. The stakeholder's response must be accepted even when it does not fit the anticipated classes.

This mapping prevents asking locally interesting questions that do not reduce core project uncertainties.

---

## Design Checklist

Before sending questions to AMC, verify:

- [ ] Does this question inquire about a real workflow rather than a tool name?
- [ ] Is it free of internal technical jargon (e.g. JSON-LD, canonical, CMS, CTA)?
- [ ] Does it avoid assuming problems AMC has not confirmed?
- [ ] Is it open-ended enough to prevent a simple yes/no response?
- [ ] Can AMC reasonably answer this without consulting technical systems?
- [ ] Does the question distinguish current, historical, and planned states when relevant?
- [ ] Would different answers materially change the next research step?
- [ ] Does the question avoid forcing AMC into categories created by the researcher (opens the model rather than imposing preconceived options)?
- [ ] Does answering it directly reduce an audited project uncertainty?
- [ ] Is the question set limited to 2-4 items?
