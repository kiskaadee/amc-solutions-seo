# Inspección del Sitio Estático — Síntesis de Evidencia

Documento de lectura estructurada que consolida las 15 observaciones empíricas recolectadas sobre la presencia digital pública de AMC Solutions (`OBS-001` a `OBS-015`). Su propósito es organizar los hechos observables sin introducir recomendaciones de diseño ni conclusiones no medidas sobre el modelo de negocio.

---

## 1. Plataforma y Entorno Técnico

- **Servidor y CMS:** La respuesta HTTP expone las cabeceras `Server: Apache` y `X-Powered-By: PHP/8.2.34`. El código HTML declara `<meta name="generator" content="WordPress 7.1.3" />` y enlaza el endpoint de la API REST `/wp-json/` ([OBS-001](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-001-servidor-y-cms-wordpress)).
- **Tema visual activo:** Los estilos y scripts provienen del tema "Blogus" de Themeansar (`/wp-content/themes/blogus/`). Los créditos predeterminados del tema se mantienen en el pie de página ([OBS-002](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-002-tema-activo-blogus)).

---

## 2. Arquitectura de Información y Contenidos

- **Rastreo y mapas de sitio:** El archivo `/robots.txt` contiene directivas predeterminadas de WordPress. La ruta `/sitemap.xml` responde HTTP 200 y redirige al índice nativo `wp-sitemap.xml` generado por el CMS ([OBS-005](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-005-mapa-del-sitio-sitemapxml-y-robotstxt)).
- **Jerarquía en portada:** El único elemento H1 contiene el texto `AMC SOLUTIONS COLOMBIA`. Los elementos H2 corresponden a títulos de widgets de plantilla (*NOTICIAS*, *Categorías*, *Te has perdido*). No se detectaron elementos H3 ([OBS-006](../evidence/website/inventario-portada-y-enlaces.md#obs-006-encabezados-de-la-portada)).
- **Catálogo de rutas descubiertas:** En la portada se identificaron enlaces internos hacia dos grupos temáticos:
  - 5 rutas bajo el prefijo `/servicios-*/`: ambientales, topografía, empresariales, geológicos y mineros ([OBS-007](../evidence/website/inventario-portada-y-enlaces.md#obs-007-enlaces-a-páginas-de-servicios)).
  - 9 rutas con nombres de trámites y conceptos mineros regulados por la Agencia Nacional de Minería (ANM) ([OBS-008](../evidence/website/inventario-portada-y-enlaces.md#obs-008-enlaces-a-páginas-de-trámites-mineros)).
- **Contenido en páginas de servicios:**
  - 4 páginas (`/servicios-ambientales/`, `/servicios-de-topografia/`, `/servicios-geologicos/`, `/servicios-mineros/`) contienen únicamente su título H1 y una lista de viñetas de texto (`wp-block-list`) con nombres de servicios (10, 5, 8 y 15 ítems respectivamente). No contienen párrafos explicativos (`<p>`), imágenes ni botones de llamado a la acción ([OBS-011](../evidence/website/paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios)).
  - 1 página (`/servicios-empresariales/`) no presenta texto ni listas en su cuerpo principal ([OBS-011](../evidence/website/paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios)).
- **Contenido en páginas de trámites mineros:** Las 9 páginas albergan textos explicativos en párrafos (entre 7 y 15 elementos `<p>`, 295 a 550 palabras estimadas) que describen procedimientos y citan normativas colombianas específicas (Leyes 685/2001, 2250/2022; Resoluciones 614/2020, 100/2020 de la ANM; correos institucionales del SGC) ([OBS-013](../evidence/website/paginas-tramites-mineros.md#obs-013-modelo-de-contenido-explicativo-y-referencias-normativas)).

---

## 3. Contacto y Flujo de Contacto Observable

- **Puntos de contacto en portada:** La portada no contiene enlaces directos con esquema `tel:`, `mailto:`, enlaces a WhatsApp ni a perfiles de redes sociales. Contiene un enlace interno hacia `/contacto/` ([OBS-009](../evidence/website/inventario-portada-y-enlaces.md#obs-009-enlaces-de-contacto-en-la-portada)).
- **Página de contacto:** `/contacto/` publica tres números celulares (`+57 3136216458`, `3144138478`, `3152384684`), un correo corporativo (`gerencia@amcsolutionscolombia.com`) y una dirección física en Valledupar en texto plano no enlazado. No contiene formularios interactivos de contacto (el único formulario presente es el buscador interno del tema) ni enlaces clicables de llamada o mensajería ([OBS-010](../evidence/website/paginas-servicios-y-contacto.md#obs-010-datos-de-contacto-y-canales-en-página-de-contacto)).
- **Llamados a la acción desde trámites:** 4 de las 9 páginas de trámites mineros incluyen textos ancla de cotización (*«Cotizar aquí su trámite»*, *«Haga su cotización aquí!»*, *«Contáctanos para ayudarte a liquidar tus regalías aquí!»*) vinculados a la URL `/contacto/` ([OBS-014](../evidence/website/paginas-tramites-mineros.md#obs-014-enlaces-de-llamada-a-la-acción-cta-hacia-contacto)).

---

## 4. Metadatos y Rastreabilidad SEO

- **Etiquetas en portada:** No se encontraron etiquetas `<meta name="description">`, metadatos OpenGraph (`og:*`), tarjetas de Twitter (`twitter:*`) ni bloques `<script type="application/ld+json">` en el HTML de la portada ([OBS-003](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-003-metadatos-y-datos-estructurados-en-portada)).
- **Etiquetas en páginas interiores:** La ausencia de descripciones meta, marcado OpenGraph y datos estructurados JSON-LD es uniforme en las 6 páginas internas evaluadas ([OBS-012](../evidence/website/paginas-servicios-y-contacto.md#obs-012-consistencia-de-metadatos-y-analítica-en-páginas-interiores)) y en las 9 páginas de trámites mineros ([OBS-015](../evidence/website/paginas-tramites-mineros.md#obs-015-estado-de-metadatos-y-analítica-en-páginas-de-trámites)).
- **Canónicas:** Todas las páginas evaluadas presentan una etiqueta `<link rel="canonical">` que apunta a su respectiva URL ([OBS-012](../evidence/website/paginas-servicios-y-contacto.md#obs-012-consistencia-de-metadatos-y-analítica-en-páginas-interiores), [OBS-015](../evidence/website/paginas-tramites-mineros.md#obs-015-estado-de-metadatos-y-analítica-en-páginas-de-trámites)).

---

## 5. Analítica y Medición Observable

- **Herramientas en cliente:** En las 16 páginas evaluadas (portada, 6 internas y 9 de trámites) no se encontraron referencias a Google Tag Manager (`gtm.js`), Google Analytics (`gtag.js`, `analytics.js`) ni Meta Pixel (`fbq`) ([OBS-004](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-004-presencia-de-scripts-de-analítica-en-portada), [OBS-012](../evidence/website/paginas-servicios-y-contacto.md#obs-012-consistencia-de-metadatos-y-analítica-en-páginas-interiores), [OBS-015](../evidence/website/paginas-tramites-mineros.md#obs-015-estado-de-metadatos-y-analítica-en-páginas-de-trámites)).

---

## 6. Diferenciación Observable de Modelos de Contenido

El sitio web presenta una bifurcación estructural verificable en el código fuente:

| Característica | Páginas de Servicios (`/servicios-*/`) | Páginas de Trámites Mineros (9 URLs) |
| :--- | :--- | :--- |
| **Formato de contenido** | Listados de viñetas esquemáticas (`wp-block-list`). Una página vacía ([OBS-011](../evidence/website/paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios)). | Párrafos explicativos desarrollados con citas normativas ([OBS-013](../evidence/website/paginas-tramites-mineros.md#obs-013-modelo-de-contenido-explicativo-y-referencias-normativas)). |
| **Densidad textual** | 220–290 palabras (concentradas en la plantilla global). | 295–550 palabras dedicadas al tema en el artículo. |
| **Llamados a cotización** | 0 enlaces de cotización ([OBS-011](../evidence/website/paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios)). | 4 páginas con enlaces ancla hacia `/contacto/` ([OBS-014](../evidence/website/paginas-tramites-mineros.md#obs-014-enlaces-de-llamada-a-la-acción-cta-hacia-contacto)). |
| **Interconexión interna** | Las listas no enlazan a las páginas individuales de los trámites que mencionan ([OBS-011](../evidence/website/paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios)). | Enlazan a `/contacto/`, pero no hacia las páginas generales de servicios ([OBS-014](../evidence/website/paginas-tramites-mineros.md#obs-014-enlaces-de-llamada-a-la-acción-cta-hacia-contacto)). |
