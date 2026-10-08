# Inspección de Páginas Interiores — Contacto y Servicios

Registro de observaciones obtenidas mediante inspección técnica de las páginas internas de contacto y servicios comerciales.

- **Fecha de captura:** 2026-10-08 01:43:44 UTC
- **URLs objetivo:**
  - `https://www.amcsolutionscolombia.com/contacto/`
  - `https://www.amcsolutionscolombia.com/servicios-ambientales/`
  - `https://www.amcsolutionscolombia.com/servicios-de-topografia/`
  - `https://www.amcsolutionscolombia.com/servicios-empresariales/`
  - `https://www.amcsolutionscolombia.com/servicios-geologicos/`
  - `https://www.amcsolutionscolombia.com/servicios-mineros/`
- **Herramienta:** [`tools/inspect_internal_pages.py`](../../tools/inspect_internal_pages.py)
- **Fuente cruda:** `tools/raw/2026-10-08_01-43-44/`

---

### [OBS-010] Datos de Contacto y Canales en Página de Contacto
- **Categoría:** UX / Comercial
- **Observación:** La página `/contacto/` contiene una lista HTML no enlazada (`wp-block-list`) con los siguientes datos en texto plano:
  - Tres números de teléfono celular: `+57 3136216458`, `3144138478`, `3152384684`.
  - Un correo corporativo: `gerencia@amcsolutionscolombia.com`.
  - Dirección física: `Carrera 19d # 5-50. Local 01. Arizona – Valledupar, Cesar`.
  En el código HTML inspeccionado no se encontraron enlaces funcionales `mailto:`, `tel:`, enlaces a la API de WhatsApp, enlaces a redes sociales, mapas incrustados ni elementos `<form>` de contacto (el único formulario identificado en la página corresponde al buscador interno de WordPress).
- **Evidencia:** `tools/raw/2026-10-08_01-43-44/pages/contacto.html` (L86-96); `tools/raw/2026-10-08_01-43-44/internal_pages_summary.json`.
- **Interpretación:** La página `/contacto/` publica datos de contacto corporativo y ubicación física en Valledupar, pero lo hace exclusivamente mediante texto plano sin enlaces de llamada directa, enlaces de correo o formularios de captación en la muestra evaluada.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Los prospectos comerciales se comunican transcribiendo manualmente estos datos o este formato genera abandono? ¿El sitio tuvo previamente un plugin de formulario de contacto activo?

---

### [OBS-011] Contenido y Estructura en Páginas de Servicios
- **Categoría:** Contenido / Arquitectura
- **Observación:** En las 5 páginas inspeccionadas bajo el prefijo `/servicios-*/`:
  - 4 páginas (`/servicios-ambientales/`, `/servicios-de-topografia/`, `/servicios-geologicos/`, `/servicios-mineros/`) contienen únicamente su título H1 y un único bloque de lista (`wp-block-list`) con nombres de servicios:
    - `/servicios-ambientales/`: 10 ítems (Licencia ambiental global, Licencia ambiental temporal, EIA, PMA, Emisiones atmosféricas, Gestor de RCD, Concesión de aguas, Vertimientos, Aprovechamiento forestal, Sistemas de gestión ambiental).
    - `/servicios-de-topografia/`: 5 ítems (Topografía con Drones y RTK, Levantamiento topográfico, Batimetría, Cálculo de volumen, Avalúos prediales).
    - `/servicios-geologicos/`: 8 ítems (Cartografía y exploración geológica, Prospección de aguas subterráneas, Muestreo de rocas, Estudios hidrológicos, Estudios geofísicos, Gestión del riesgo, Análisis geotécnico, Modelamiento geológico).
    - `/servicios-mineros/`: 15 ítems (Solicitud de contrato de concesión, Autorizaciones temporales, Contratos especiales, Subcontrato de formalización, PTO/PTE/PTOC, FBM, Reconciliación de recursos y reservas, Planeamiento minero, Diseños de planos, RUCOM, Liquidación de regalías, Canon superficiario, Consulta previa, Icanh, Caracterización de títulos).
  - Ninguna de estas 4 páginas contiene párrafos explicativos (`<p>`), fichas descriptivas, imágenes ilustrativas ni llamados a la acción (botones o enlaces de cotización).
  - 1 página (`/servicios-empresariales/`) no contiene ninguna lista ni texto en su área principal de contenido, mostrando únicamente el título H1 y los bloques globales de navegación lateral y pie de página.
- **Evidencia:** `tools/raw/2026-10-08_01-43-44/pages/servicios-*.html`; `tools/raw/2026-10-08_01-43-44/internal_pages_summary.json`.
- **Interpretación:** Las páginas de servicios funcionan como inventarios esquemáticos de términos técnicos sin desarrollo editorial, explicaciones de propuesta de valor ni mecanismos directos de conversión. La página de servicios empresariales no cuenta con contenido visible en la captura realizada.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Existe documentación comercial o portafolios en PDF de estos servicios que no estén enlazados en el sitio web? ¿Qué alcance incluye la categoría de servicios empresariales?

---

### [OBS-012] Consistencia de Metadatos y Analítica en Páginas Interiores
- **Categoría:** Técnico / SEO
- **Observación:** En las 6 páginas interiores inspeccionadas:
  - Se identificó la etiqueta `<link rel="canonical">` apuntando a su URL correspondiente.
  - No se encontraron etiquetas `<meta name="description">` ni metadatos OpenGraph (`og:*`).
  - No se detectaron bloques de datos estructurados `<script type="application/ld+json">`.
  - No se detectaron scripts de analítica web (`gtag.js`, `gtm.js`, `analytics.js`, `fbq`).
- **Evidencia:** `tools/raw/2026-10-08_01-43-44/internal_pages_summary.json`.
- **Interpretación:** El comportamiento técnico observado en la portada respecto a la ausencia de descripciones meta, datos estructurados y scripts de analítica del lado del cliente se mantiene de forma homogénea en la muestra de páginas interiores evaluadas.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Se gestionan campañas publicitarias o medición en plataformas externas que no dependan de scripts insertados en estas páginas?
