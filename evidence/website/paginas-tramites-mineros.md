# Inspección de Páginas de Trámites y Conceptos Mineros

Registro de observaciones empíricas sobre las 9 páginas internas vinculadas a trámites y normativas del sector minero.

- **Fecha de captura:** 2026-10-08 02:46:51 UTC
- **URLs objetivo:**
  - `https://www.amcsolutionscolombia.com/banco-de-informacion-minera-bim/`
  - `https://www.amcsolutionscolombia.com/estandar-colombiano-de-recursos-y-reservas-ecrr/`
  - `https://www.amcsolutionscolombia.com/formalizacion-minera/`
  - `https://www.amcsolutionscolombia.com/formato-basico-minero-fbm-anm/`
  - `https://www.amcsolutionscolombia.com/liquidacion-de-regalias/`
  - `https://www.amcsolutionscolombia.com/propuestas-de-contrato-de-concesion-diferencial-a-mineros-de-pequena-escala/`
  - `https://www.amcsolutionscolombia.com/reconciliacion-de-recursos-y-reservas/`
  - `https://www.amcsolutionscolombia.com/registro-unico-de-comercializadores-de-minerales-rucom/`
  - `https://www.amcsolutionscolombia.com/solicitudes-de-formalizacion-minera/`
- **Herramienta:** [`tools/inspect_internal_pages.py`](../../tools/inspect_internal_pages.py)
- **Fuente cruda:** `tools/raw/2026-10-08_02-46-51/`

---

### [OBS-013] Modelo de Contenido Explicativo y Referencias Normativas
- **Categoría:** Contenido / Arquitectura
- **Observación:** Las 9 páginas inspeccionadas contienen entre 7 y 15 elementos `<p>` en su cuerpo principal (con un conteo estimado de 295 a 550 palabras por página). Los textos describen procedimientos, requisitos y marcos legales del sector minero colombiano administrados por la Agencia Nacional de Minería (ANM) y el Servicio Geológico Colombiano (SGC):
  - Citan leyes y resoluciones específicas (ej. Ley 685 de 2001, Ley 2250 de 2022, Resolución 614 de 2020, Resolución 100 de 2020).
  - La página `/banco-de-informacion-minera-bim/` incluye en su texto los correos institucionales del SGC (`bim@sgc.gov.co` y `cliente@sgc.gov.co`).
- **Evidencia:** `tools/raw/2026-10-08_02-46-51/pages/*.html`; `tools/raw/2026-10-08_02-46-51/internal_pages_summary.json`.
- **Interpretación:** Estas 9 páginas presentan un modelo de contenido textual descriptivo y normativo, en contraste con la estructura de viñetas esquemáticas observada en las páginas bajo `/servicios-*/` ([OBS-011](./paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios)).
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Estos textos fueron redactados como guías de orientación técnica para captar clientes o como artículos de divulgación informativa?

---

### [OBS-014] Enlaces de Llamada a la Acción (CTA) hacia `/contacto/`
- **Categoría:** UX / Conversión
- **Observación:** En 4 de las 9 páginas inspeccionadas se identificaron textos ancla con llamados a cotizar o solicitar asistencia técnica vinculados a la URL interna `/contacto/`:
  - En `/liquidacion-de-regalias/`: enlace con texto *"Contáctanos para ayudarte a liquidar tus regalías aquí!"* apuntando a `https://www.amcsolutionscolombia.com/contacto/`.
  - En `/propuestas-de-contrato-de-concesion-diferencial-a-mineros-de-pequena-escala/`: enlace con texto *"Haga su cotización aquí!"* apuntando a `https://www.amcsolutionscolombia.com/contacto/`.
  - En `/registro-unico-de-comercializadores-de-minerales-rucom/`: enlace con texto *"Cotizar aquí su trámite."* apuntando a `https://www.amcsolutionscolombia.com/contacto/`.
  - En `/formato-basico-minero-fbm-anm/`: enlace dentro del texto con ancla *"aquí."* apuntando a `https://www.amcsolutionscolombia.com/contacto/`.
  En las 5 páginas restantes no se identificaron enlaces contextuales de llamada a la acción hacia cotizaciones o formularios en el cuerpo del texto.
- **Evidencia:** `tools/raw/2026-10-08_02-46-51/pages/*.html` (análisis de elementos `<a>` en el cuerpo de cada artículo).
- **Interpretación:** Las páginas de trámites mineros vinculan la intención de cotización directamente con la página `/contacto/`, la cual no contiene formularios interactivos ni campos para especificar el trámite solicitado ([OBS-010](./paginas-servicios-y-contacto.md#obs-010-datos-de-contacto-y-canales-en-página-de-contacto)).
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Los usuarios que hacen clic en estos enlaces completan el contacto llamando a los teléfonos publicados o abandonan el flujo al no encontrar un formulario?

---

### [OBS-015] Estado de Metadatos y Analítica en Páginas de Trámites
- **Categoría:** Técnico / SEO
- **Observación:** En las 9 páginas evaluadas:
  - Todas contienen `<link rel="canonical">` apuntando a su URL respectiva.
  - No se detectaron etiquetas `<meta name="description">` ni metadatos OpenGraph (`og:*`).
  - No se encontraron bloques de datos estructurados `<script type="application/ld+json">`.
  - No se detectaron scripts de analítica web del lado del cliente (`gtag.js`, `gtm.js`, `analytics.js`, `fbq`).
- **Evidencia:** `tools/raw/2026-10-08_02-46-51/internal_pages_summary.json`.
- **Interpretación:** La ausencia de descripciones meta, marcado semántico y analítica de clientes se replica de forma consistente en este conjunto de páginas, manteniendo el patrón observado en la portada ([OBS-003](../technical/inspeccion-plataforma-y-cabeceras.md#obs-003-metadatos-y-datos-estructurados-en-portada), [OBS-004](../technical/inspeccion-plataforma-y-cabeceras.md#obs-004-presencia-de-scripts-de-analítica-en-portada)) y en las páginas de servicios ([OBS-012](./paginas-servicios-y-contacto.md#obs-012-consistencia-de-metadatos-y-analítica-en-páginas-interiores)).
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Estas páginas reciben tráfico orgánico mediante términos de búsqueda específicos de normativas mineras de la ANM?
