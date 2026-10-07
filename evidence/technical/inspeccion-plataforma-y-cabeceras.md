# Inspección Técnica Inicial — Plataforma y Encabezados

Registro de evidencia técnica obtenido mediante inspección automatizada de red.

- **Fecha de captura:** 2026-10-07 22:47:51 UTC
- **URL objetivo:** `https://www.amcsolutionscolombia.com/`
- **Herramienta:** `tools/inspect_site.py`
- **Fuente cruda:** `tools/raw/2026-10-07_22-47-51/`

---

### [OBS-001] Servidor y CMS WordPress
- **Categoría:** Técnico
- **Observación:** La respuesta HTTP contiene las cabeceras `Server: Apache`, `X-Powered-By: PHP/8.2.34`, `Link: <https://www.amcsolutionscolombia.com/wp-json/>; rel="https://api.w.org/"` y la etiqueta `<meta name="generator" content="WordPress 7.1.3" />`.
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/headers.txt` (L10-12); `tools/raw/2026-10-07_22-47-51/homepage.html` (L26).
- **Interpretación:** El sitio opera sobre WordPress y el servidor expone Apache y PHP 8.2.34.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Quién administra el hosting y las actualizaciones de la plataforma?

---

### [OBS-002] Tema Activo "Blogus"
- **Categoría:** Arquitectura
- **Observación:** Las hojas de estilo y scripts cargados en la portada provienen de `/wp-content/themes/blogus/`. Los enlaces de créditos en el pie de página apuntan a `https://themeansar.com` y `https://themeansar.com/free-themes/blogus/`.
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/homepage.html`; `tools/raw/2026-10-07_22-47-51/links.json` (L50-51).
- **Interpretación:** Los recursos de presentación corresponden al tema "Blogus" de Themeansar. La disposición de la portada coincide con los componentes predeterminados de este tema para listados de entradas.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿El sitio utiliza plantillas de página adicionales fuera de la portada?

---

### [OBS-003] Metadatos y Datos Estructurados en Portada
- **Categoría:** Búsqueda
- **Observación:** En el HTML de la portada inspeccionada no se encontraron etiquetas `<meta name="description">`, `<link rel="canonical">`, metadatos OpenGraph (`og:*`), tarjetas de Twitter (`twitter:*`) ni bloques `<script type="application/ld+json">`.
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/metadata.json` (L3-9).
- **Interpretación:** La respuesta HTML inicial de la portada no proporciona descripciones, URL canónica ni marcado semántico explícito para motores de búsqueda o previsualizaciones en redes sociales.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Existen metadatos configurados en páginas interiores o mediante plugins no detectados en la portada?

---

### [OBS-004] Presencia de Scripts de Analítica en Portada
- **Categoría:** Técnico
- **Observación:** En el HTML de la portada inspeccionada no se encontraron referencias a Google Tag Manager (`gtm.js`), Google Analytics (`gtag.js`, `analytics.js`) ni Meta Pixel (`fbq`).
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/homepage.html` (búsqueda de cadenas de seguimiento arrojó 0 coincidencias).
- **Interpretación:** La portada no ejecuta scripts de seguimiento del lado del cliente para las plataformas evaluadas en la muestra capturada.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Existe medición configurada del lado del servidor, a nivel de DNS o en una propiedad de Search Console/Analytics no vinculada en el HTML?

---

### [OBS-005] Contenido de robots.txt y Sitemaps
- **Categoría:** Búsqueda
- **Observación:** `https://www.amcsolutionscolombia.com/robots.txt` responde HTTP 200 y referencia `Sitemap: https://www.amcsolutionscolombia.com/wp-sitemap.xml`. La URL `/sitemap.xml` responde HTTP 200 entregando un índice XML de WordPress con sub-sitemaps para entradas (`posts-post-1.xml`), páginas (`posts-page-1.xml`), categorías (`taxonomies-category-1.xml`), etiquetas (`taxonomies-post_tag-1.xml`) y usuarios (`users-1.xml`).
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/robots.txt`; `tools/raw/2026-10-07_22-47-51/sitemap.xml`.
- **Interpretación:** El sitemap expuesto por la instalación incluye índices para entradas, páginas, categorías, etiquetas y usuarios.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Este sitemap ha sido registrado en herramientas para webmasters (Google Search Console o Bing Webmaster Tools)?
