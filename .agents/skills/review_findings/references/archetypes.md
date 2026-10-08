# Question Archetypes and Evaluation Rubric

Reference guide for conducting interactive evidence review sessions.

## 1. Factual Recall (Recuerdo Fáctico)

- **Objective:** Verify that the researcher recalls what was directly observed without adding embellishments.
- **Question structure:** Prompt the researcher to describe the direct observation recorded under an observation ID or domain area.
- **Example:**
  > ¿Qué evidencia concreta tenemos registrada sobre la plataforma técnica y servidor que sirven el sitio de AMC?
- **Evaluation criteria:**
  - Valid: Cites specific recorded evidence (Apache, PHP 8.2.34, WordPress 7.1.3, theme Blogus).
  - Flawed: Adds unverified assumptions (e.g. "corren sobre Ubuntu/Linux", "usan Nginx de proxy") not found in raw headers.

## 2. Epistemic Distinction (Distinción Epistémica)

- **Objective:** Test ability to separate direct observations from plausible but unsupported inferences.
- **Question structure:** Multiple-choice or statement contrast asking which claim is directly supported by evidence.
- **Example:**
  > ¿Cuál de las siguientes afirmaciones está respaldada directamente por la evidencia registrada?
  > A. El sitio opera en una arquitectura LAMP administrada por AMC.
  > B. La respuesta HTTP expone Apache y PHP 8.2.34 y el HTML declara WordPress 7.1.3.
  > C. AMC utiliza MySQL como base de datos en un servidor Linux.
  > D. El servidor web fue configurado para producción por un desarrollador externo.
- **Evaluation criteria:**
  - Valid: Selects B. Explains that Linux, MySQL, LAMP, and administrative ownership are unobserved inferences.
  - Flawed: Confounds common technology stacks (LAMP) with empirically measured components.

## 3. Interpretation Bounds (Límites de Interpretación)

- **Objective:** Test whether the researcher can derive implications without overstepping observational boundaries.
- **Question structure:** Present an observation and ask what can be reasonably deduced and what cannot.
- **Example:**
  > El inventario registró cinco enlaces de servicios bajo la ruta `/servicios-*`. ¿Qué podemos deducir razonablemente sobre la oferta comercial y qué NO podemos afirmar todavía?
- **Evaluation criteria:**
  - Valid: Deduce that the site structure highlights five specific service URLs; recognize that we cannot claim these are all the services AMC offers or that they represent their main source of revenue.
  - Flawed: Concludes that AMC only offers five services in real life, or assigns editorial intent without evidence.

## 4. Unknowns and Gaps (Identificación de Vacíos)

- **Objective:** Identify what data, tools, or access are missing to answer a technical or business question.
- **Question structure:** Ask what information would be required to validate a specific hypothesis or operational reality.
- **Example:**
  > ¿Qué información necesitaríamos para determinar si AMC realmente capta clientes potenciales a través del sitio web?
- **Evaluation criteria:**
  - Valid: Identifies specific sources: Search Console, analytics logs, server access logs, CRM/inbox inquiry records, interviews with AMC.
  - Flawed: Treats public HTML inspection as sufficient to answer business conversion questions.

## 5. Transfer and Misconceptions (Transferencia y Detección de Sesgos)

- **Objective:** Apply epistemic discipline to a novel scenario or detect the methodological error in a tempting conclusion.
- **Question structure:**
  - *Misconception mode:* Present a flawed conclusion and ask to identify the methodological error.
    > ¿Cuál es el error epistémico en la afirmación: "AMC no tiene Google Analytics configurado porque no encontramos gtag.js en el HTML de la portada"?
  - *Transfer mode:* Apply the same logic to a different case.
    > Si una inspección no encuentra enlaces `mailto:` en la portada inspeccionada, ¿es válido concluir que la empresa no publica un correo electrónico de contacto?
- **Evaluation criteria:**
  - Valid: Explains that negative findings are strictly bounded to the inspected artifact and sample. Analytics could be managed server-side, on subdomains, or via GTM in other pages; email could appear as plaintext, image, or in inner pages (`/contacto`).
  - Flawed: Confuses lack of observation with proof of absence.
