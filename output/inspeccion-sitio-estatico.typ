// Inspección del Sitio Estático — Síntesis de Evidencia
// Documento de Investigación y Descubrimiento Digital
// Proyecto: amc-solutions-seo

#set document(
  title: "Inspección del Sitio Estático — AMC Solutions Colombia",
  author: "Equipo de Investigación Digital",
  date: datetime(year: 2026, month: 10, day: 8),
)

// Helper para citas de evidencias OBS en formato [OBS-xxx]
#let obs(..ids) = text(fill: rgb("#334155"), font: ("Fira Code", "DejaVu Sans Mono"), size: 8.3pt)[\[#ids.pos().join(", ")\]]

// Configuración general de página y tipografía
#set page(
  paper: "a4",
  margin: (top: 2.6cm, bottom: 2.4cm, left: 2.5cm, right: 2.5cm),
  header: context {
    let page_num = counter(page).get().first()
    if page_num > 2 {
      grid(
        columns: (1fr, 1fr),
        align: (left, right),
        text(size: 8.5pt, fill: rgb("#64748b"), weight: "medium")[
          AMC SOLUTIONS COLOMBIA — INSPECCIÓN DEL SITIO ESTÁTICO
        ],
        text(size: 8.5pt, fill: rgb("#94a3b8"))[
          SÍNTESIS DE EVIDENCIA
        ]
      )
      v(-2pt)
      line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
    }
  },
  footer: context {
    let page_num = counter(page).get().first()
    if page_num > 1 {
      line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
      v(2pt)
      grid(
        columns: (1fr, 1fr),
        align: (left, right),
        text(size: 8.5pt, fill: rgb("#64748b"))[
          Proyecto: `amc-solutions-seo`
        ],
        text(size: 8.5pt, fill: rgb("#64748b"))[
          Página #counter(page).display("1") de #counter(page).final().first()
        ]
      )
    }
  }
)

#set text(
  font: "Inter",
  size: 9.6pt,
  fill: rgb("#0f172a"),
  lang: "es",
  spacing: 105%,
)

#set par(
  justify: true,
  leading: 0.64em,
)

// Estilos de encabezados
#show heading.where(level: 1): it => block(
  breakable: false,
  above: 1.3em,
  below: 0.65em,
  stack(
    text(size: 13.5pt, weight: "bold", fill: rgb("#1e293b"), it.body),
    v(0.2em),
    line(length: 100%, stroke: 0.8pt + rgb("#cbd5e1"))
  )
)

#show heading.where(level: 2): it => block(
  breakable: false,
  above: 1em,
  below: 0.45em,
  text(size: 10.8pt, weight: "bold", fill: rgb("#334155"), it.body)
)

#show heading.where(level: 3): it => block(
  breakable: false,
  above: 0.85em,
  below: 0.35em,
  text(size: 9.5pt, weight: "bold", fill: rgb("#475569"), it.body)
)

// Código en línea y bloques de código
#show raw.where(block: false): it => box(
  fill: rgb("#f1f5f9"),
  inset: (x: 2.8pt, y: 1pt),
  radius: 2pt,
  baseline: 0%,
  text(font: ("Fira Code", "DejaVu Sans Mono"), size: 8.3pt, fill: rgb("#0f172a"), it)
)

// Formato de tablas
#show table.cell: it => {
  set par(justify: false, leading: 0.52em)
  it
}

// Bloques de límites y notas metodológicas
#let callout(title: "", body, border_color: rgb("#cbd5e1"), bg_color: rgb("#f8fafc")) = {
  block(
    fill: bg_color,
    stroke: (left: 3pt + border_color, rest: 0.5pt + rgb("#e2e8f0")),
    radius: (right: 4pt),
    inset: (x: 11pt, y: 9pt),
    width: 100%,
    breakable: false,
    [
      #if title != "" [
        #text(weight: "bold", size: 9pt, fill: rgb("#1e293b"))[#title]
        #v(3pt)
      ]
      #text(size: 9pt, fill: rgb("#334155"))[#body]
    ]
  )
}

// ==========================================
// PÁGINA 1: PORTADA
// ==========================================
#page(header: none, footer: none)[
  #v(2.5cm)

  #align(center)[
    #text(size: 10pt, weight: "bold", fill: rgb("#64748b"), tracking: 2pt)[
      REPORTE TÉCNICO DE INVESTIGACIÓN
    ]
    #v(0.8cm)
    #text(size: 24pt, weight: "bold", fill: rgb("#0f172a"))[
      Inspección del Sitio Estático
    ]
    #v(0.3cm)
    #text(size: 13pt, weight: "medium", fill: rgb("#475569"))[
      Síntesis de Evidencia Empírica — Presencia Digital Pública
    ]
    #v(0.2cm)
    #text(size: 11pt, fill: rgb("#64748b"))[
      AMC Solutions Colombia
    ]
  ]

  #v(3.5cm)

  #align(center)[
    #block(
      width: 88%,
      stroke: 0.5pt + rgb("#cbd5e1"),
      radius: 6pt,
      fill: rgb("#f8fafc"),
      inset: (x: 16pt, y: 14pt),
      align(left)[
        #grid(
          columns: (auto, 1fr),
          row-gutter: 9pt,
          column-gutter: 14pt,
          text(weight: "bold", size: 9pt, fill: rgb("#475569"))[Dominio inspeccionado:],
          text(size: 9pt)[`https://www.amcsolutionscolombia.com/`],

          text(weight: "bold", size: 9pt, fill: rgb("#475569"))[Muestra evaluada:],
          text(size: 9pt)[16 páginas (portada, 6 internas y 9 trámites mineros)],

          text(weight: "bold", size: 9pt, fill: rgb("#475569"))[Registro de evidencia:],
          text(size: 9pt)[Observaciones empíricas #obs("OBS-001") a #obs("OBS-015")],

          text(weight: "bold", size: 9pt, fill: rgb("#475569"))[Fecha de recolección:],
          text(size: 9pt)[7 y 8 de octubre de 2026],

          text(weight: "bold", size: 9pt, fill: rgb("#475569"))[Proyecto:],
          text(size: 9pt)[`amc-solutions-seo`],

          text(weight: "bold", size: 9pt, fill: rgb("#475569"))[Carácter del documento:],
          text(size: 9pt)[Registro descriptivo y analítico (no prescriptivo)],
        )
      ]
    )
  ]

  #v(1fr)

  #align(center)[
    #text(size: 8.5pt, fill: rgb("#94a3b8"))[
      Este documento sintetiza hechos observables verificables. No introduce recomendaciones de diseño ni conclusiones comerciales anticipadas.
    ]
  ]
]

// ==========================================
// PÁGINA 2: ÍNDICE GENERAL
// ==========================================
#page(header: none)[
  #v(0.5cm)
  #text(size: 15pt, weight: "bold", fill: rgb("#0f172a"))[Índice de Contenido]
  #v(0.25cm)
  #line(length: 100%, stroke: 1pt + rgb("#cbd5e1"))
  #v(0.8cm)

  #outline(
    title: none,
    depth: 2,
    indent: auto,
  )
]

// ==========================================
// PÁGINA 3: OBJETIVO Y ALCANCE
// ==========================================

= 1. Objetivo y Alcance de la Inspección

El presente informe consolida los hechos observables y empíricamente verificables sobre la presencia digital pública de *AMC Solutions Colombia*, derivados de las 15 observaciones documentadas #obs("OBS-001") a #obs("OBS-015"). Su propósito fundamental es establecer una base factual compartida sobre el estado actual del sitio web antes de formular hipótesis de posicionamiento, diagnósticos comerciales o recomendaciones de rediseño.

== Enfoque Metodológico y Disciplina Epistémica

La investigación aplica una distinción rigurosa entre cuatro niveles epistemológicos:
- *Hechos y Evidencia:* Datos directamente observables en respuestas HTTP, código fuente HTML y configuración de red.
- *Interpretaciones:* Deducciones técnicas sustentadas directamente en la evidencia registrada.
- *Hipótesis:* Supuestos de negocio o comportamiento de usuarios pendientes de validación.
- *Preguntas Abiertas:* Incógnitas identificadas por la inspección que requieren diálogo directo con AMC Solutions.

El documento no asume el rol de agencia de publicidad ni formula prescripciones técnicas previas a la corroboración del modelo comercial de la empresa.

== Alcance de la Muestra Analizada

La inspección se concentró en una muestra de 16 páginas accesibles públicamente:
+ *Portada corporativa:* URL raíz (`https://www.amcsolutionscolombia.com/`).
+ *Página de contacto:* `/contacto/`.
+ *Páginas de servicios (5 URLs):* `/servicios-ambientales/`, `/servicios-de-topografia/`, `/servicios-empresariales/`, `/servicios-geologicos/` y `/servicios-mineros/`.
+ *Páginas de trámites mineros (9 URLs):* Artículos técnicos sobre normativas y procedimientos regulados por la Agencia Nacional de Minería (ANM) y el Servicio Geológico Colombiano (SGC).

Las capturas automatizadas fueron ejecutadas los días 7 y 8 de octubre de 2026 mediante scripts especializados de inspección y extracción estática de red.

#pagebreak()

// ==========================================
// PÁGINA 4: RESUMEN EJECUTIVO & PLATAFORMA
// ==========================================

= 2. Resumen Ejecutivo de Hallazgos

A partir del análisis sistemático de las 16 páginas examinadas, se destacan cinco conclusiones técnicas principales:

+ *Plataforma técnica estándar sobre CMS activo:* El sitio opera sobre WordPress 7.1.3 bajo servidor Apache y PHP 8.2.34, utilizando el tema predeterminado "Blogus" de Themeansar #obs("OBS-001", "OBS-002").
+ *Bifurcación estructural de modelos de contenido:* Se detectó una clara dualidad editorial: mientras que las páginas generales de servicios se limitan a listas breves de viñetas (y una de ellas sin contenido), las nueve páginas de trámites mineros contienen artículos explicativos de 295 a 550 palabras con referencias normativas colombianas específicas #obs("OBS-011", "OBS-013").
+ *Canales de contacto no interactivos:* La portada carece de enlaces directos de contacto (`tel:`, `mailto:`, WhatsApp o redes sociales). En la página `/contacto/`, tres números celulares, un correo electrónico y una dirección física en Valledupar se encuentran publicados únicamente en texto plano, sin enlaces clicables ni formularios web de captación #obs("OBS-009", "OBS-010").
+ *Ausencia uniforme de metadatos semánticos y de difusión:* Las 16 páginas evaluadas carecen de etiquetas `<meta name="description">`, metadatos OpenGraph (`og:*`), tarjetas de Twitter y bloques de datos estructurados JSON-LD #obs("OBS-003", "OBS-012", "OBS-015"). Todas presentan direccionamiento canónico individualizado mediante `<link rel="canonical">`.
+ *Ausencia observable de analítica del lado del cliente:* En ninguna de las 16 páginas evaluadas se detectaron scripts de seguimiento de Google Tag Manager, Google Analytics o Meta Pixel #obs("OBS-004", "OBS-012", "OBS-015").

= 3. Plataforma y Entorno Técnico

== Servidor Web y CMS WordPress

La respuesta HTTP del servidor expone de manera explícita la infraestructura técnica sobre la que opera la aplicación:
- *Cabeceras de respuesta:* `Server: Apache` y `X-Powered-By: PHP/8.2.34`.
- *Identificador de CMS:* La etiqueta `<meta name="generator" content="WordPress 7.1.3" />` y la cabecera `Link: <https://www.amcsolutionscolombia.com/wp-json/>; rel="https://api.w.org/"` confirman el uso del CMS WordPress y la disponibilidad de su API REST #obs("OBS-001").

== Tema Visual Activo

Los recursos estáticos de presentación (hojas de estilo CSS y scripts de comportamiento) se cargan desde el directorio `/wp-content/themes/blogus/`. Los enlaces de créditos predeterminados del desarrollador se mantienen visibles en el pie de página del sitio, enlazando hacia `themeansar.com` #obs("OBS-002").

#pagebreak()

// ==========================================
// PÁGINA 5: ARQUITECTURA DE INFORMACIÓN Y CONTENIDOS
// ==========================================

= 4. Arquitectura de Información y Contenidos

== Rastreo y Mapas de Sitio (Sitemaps)

- *Directivas para motores de búsqueda:* El archivo `/robots.txt` responde HTTP 200 con la configuración estándar de WordPress, restringiendo el rastreo del área administrativa (`/wp-admin/`) y referenciando el mapa de sitio en `https://www.amcsolutionscolombia.com/wp-sitemap.xml` #obs("OBS-005").
- *Índice de sitemaps:* La URL `/sitemap.xml` responde HTTP 200 entregando el índice XML nativo generado por el CMS (`wp-sitemap.xml`), el cual segmenta URLs en subíndices de entradas (`posts-post-1.xml`), páginas (`posts-page-1.xml`), taxonomías y usuarios #obs("OBS-005").

== Jerarquía de Encabezados en Portada

La evaluación de etiquetas semánticas de título en la página principal reveló:
- *Encabezado principal:* Un único elemento H1 con el texto `AMC SOLUTIONS COLOMBIA`.
- *Encabezados secundarios:* Los elementos identificados en nivel H2 corresponden a textos predeterminados de widgets del tema: *"Paginación de entradas"*, *"NOTICIAS"*, *"Categorías"* y *"Te has perdido"*.
- *Ausencias semánticas:* No se identificaron elementos H3 ni encabezados H1/H2 que nombren las áreas de servicio o la propuesta técnica de la empresa #obs("OBS-006").

== Catálogo de Rutas Descubiertas

Desde los enlaces internos de la portada se descubrieron dos agrupaciones temáticas principales:
+ *Páginas de servicios (5 URLs):* Rutas bajo el prefijo `/servicios-*/` #obs("OBS-007"): `/servicios-ambientales/`, `/servicios-de-topografia/`, `/servicios-empresariales/`, `/servicios-geologicos/` y `/servicios-mineros/`.
+ *Páginas de trámites mineros (9 URLs):* Rutas dedicadas a procedimientos y marcos técnicos del sector minero colombiano regulados por la ANM #obs("OBS-008").

== Contenido en Páginas de Servicios

En las cinco páginas bajo `/servicios-*/` se observó un patrón de baja densidad de contenido:
- *Cuatro páginas esquemáticas:* En `/servicios-ambientales/`, `/servicios-de-topografia/`, `/servicios-geologicos/` y `/servicios-mineros/`, el cuerpo se compone únicamente del título H1 y una lista de viñetas (`wp-block-list`) con nombres de servicios (#text(fill: rgb("#475569"))[Ambientales:] 10 ítems; #text(fill: rgb("#475569"))[Topografía:] 5 ítems; #text(fill: rgb("#475569"))[Geológicos:] 8 ítems; #text(fill: rgb("#475569"))[Mineros:] 15 ítems). Carecen de párrafos explicativos (`<p>`), fichas descriptivas, imágenes ilustrativas o botones de acción #obs("OBS-011").
- *Página sin contenido principal:* La página `/servicios-empresariales/` no contiene texto ni listas en su área principal de contenido, mostrando únicamente el título H1 y la barra lateral de navegación #obs("OBS-011").

== Contenido en Páginas de Trámites Mineros

A diferencia de las páginas de servicios, las nueve páginas de trámites mineros albergan artículos desarrollados:
- Cuentan con entre 7 y 15 párrafos (`<p>`) por página, con una extensión estimada de entre 295 y 550 palabras #obs("OBS-013").
- Describen procedimientos técnicos, requisitos y citan normas jurídicas colombianas (Ley 685 de 2001, Ley 2250 de 2022, Resoluciones ANM 614 de 2020 y 100 de 2020).
- La página `/banco-de-informacion-minera-bim/` transcribe los correos institucionales de atención al ciudadano del SGC (`bim@sgc.gov.co` y `cliente@sgc.gov.co`) #obs("OBS-013").

#pagebreak()

// ==========================================
// PÁGINA 6: CONTACTO & SEO
// ==========================================

= 5. Contacto y Flujo de Contacto Observable

== Canales de Contacto en la Portada

En el código HTML de la portada no se identificaron enlaces con los esquemas funcionales `tel:` o `mailto:`, ni vínculos directos a la API de WhatsApp (`wa.me` o `whatsapp.com`), ni perfiles en redes sociales corporativas. El único mecanismo observable hacia canales de contacto es un enlace de texto interno que dirige a `/contacto/` #obs("OBS-009").

== Página de Contacto (`/contacto/`)

La página `/contacto/` publica los siguientes datos de la empresa:
- *Teléfonos celulares:* `+57 3136216458`, `3144138478`, `3152384684`.
- *Correo electrónico:* `gerencia@amcsolutionscolombia.com`.
- *Dirección física:* `Carrera 19d # 5-50. Local 01. Arizona – Valledupar, Cesar`.

Estos datos se encuentran estructurados como texto plano dentro de un bloque de lista (`wp-block-list`). No cuentan con enlaces funcionales para llamada directa (`tel:`), envío de correo (`mailto:`), mensajería instantánea ni mapas incrustados. La página no dispone de formularios web de contacto; el único elemento `<form>` corresponde al buscador interno de WordPress #obs("OBS-010").

== Llamados a la Acción (CTA) desde Trámites Mineros

En cuatro de las nueve páginas de trámites se identificaron textos ancla con llamados a cotizar enlazados a la URL `/contacto/`:
- En `/liquidacion-de-regalias/`: *"Contáctanos para ayudarte a liquidar tus regalías aquí!"*
- En `/propuestas-de-contrato-de-concesion-diferencial-a-mineros-de-pequena-escala/`: *"Haga su cotización aquí!"*
- En `/registro-unico-de-comercializadores-de-minerales-rucom/`: *"Cotizar aquí su trámite."*
- En `/formato-basico-minero-fbm-anm/`: enlace dentro del párrafo con texto *"aquí."*

Las cinco páginas restantes no contienen llamados a la acción en su cuerpo de texto. En todos los casos donde existe un enlace de cotización, el flujo remite a `/contacto/`, donde no existen formularios interactivos para registrar la solicitud #obs("OBS-014").

= 6. SEO y Señales Técnicas de Rastreabilidad

== Metadatos Semánticos y Previsualización Social

En ninguna de las 16 páginas evaluadas (portada, 6 internas y 9 trámites mineros) se detectaron:
- Etiquetas `<meta name="description">` para resumir el contenido en los resultados de búsqueda (SERP).
- Metadatos de protocolo OpenGraph (`og:title`, `og:description`, `og:image`) para previsualización social.
- Tarjetas de Twitter (`twitter:card`).
- Marcado de datos estructurados en formato JSON-LD (`<script type="application/ld+json">`) #obs("OBS-003", "OBS-012", "OBS-015").

== Direccionamiento Canónico

En contraste con la ausencia de metadatos descriptivos, las 16 páginas evaluadas incluyen una etiqueta `<link rel="canonical">` que referencia de manera precisa su propia URL absoluta #obs("OBS-012", "OBS-015").

#pagebreak()

// ==========================================
// PÁGINA 7: ANALÍTICA & MODELOS DE CONTENIDO
// ==========================================

= 7. Analítica y Medición Observable

En las 16 páginas examinadas no se identificó la carga de scripts de analítica web del lado del cliente:
- Ausencia de Google Tag Manager (`gtm.js`).
- Ausencia de Google Analytics (`gtag.js`, `analytics.js`).
- Ausencia de Meta Pixel (`fbq`).

Esto evidencia que el sitio web no recopila métricas de navegación, eventos de usuario o conversiones a través de herramientas estándar de analítica en navegador #obs("OBS-004", "OBS-012", "OBS-015").

= 8. Diferenciación de Modelos de Contenido

La inspección evidencia una bifurcación clara en la arquitectura y profundidad editorial del sitio:

#v(0.3cm)

#table(
  columns: (1fr, 1.35fr, 1.45fr),
  stroke: 0.5pt + rgb("#cbd5e1"),
  fill: (col, row) => if row == 0 { rgb("#f1f5f9") } else { none },
  align: (left, left, left),
  inset: (x: 8pt, y: 7pt),
  table.header(
    text(weight: "bold", size: 8.5pt, fill: rgb("#1e293b"))[Dimensión],
    text(weight: "bold", size: 8.5pt, fill: rgb("#1e293b"))[Páginas de Servicios (`/servicios-*/`)],
    text(weight: "bold", size: 8.5pt, fill: rgb("#1e293b"))[Páginas de Trámites Mineros (9 URLs)],
  ),
  [Formato del contenido],
  [Listados de viñetas esquemáticas (`wp-block-list`). Una página vacía #obs("OBS-011").],
  [Párrafos explicativos desarrollados con citas normativas formales #obs("OBS-013").],

  [Densidad textual],
  [220–290 palabras totales (concentradas en la plantilla global y barras laterales).],
  [295–550 palabras dedicadas específicamente al tema del artículo en el cuerpo principal.],

  [Llamados a cotización],
  [0 enlaces de cotización o llamados a la acción en las cinco páginas #obs("OBS-011").],
  [4 páginas incluyen enlaces contextuales de cotización hacia `/contacto/` #obs("OBS-014").],

  [Interconexión interna],
  [Las viñetas no enlazan a las páginas individuales de los trámites que mencionan #obs("OBS-011").],
  [Enlazan a `/contacto/`, pero no hacia las páginas generales de servicios correspondientes #obs("OBS-014").],
)

#v(0.4cm)

Esta diferenciación demuestra que las páginas de trámites mineros poseen un nivel de desarrollo explicativo sustancialmente mayor que las páginas centrales del portafolio comercial.

#pagebreak()

// ==========================================
// PÁGINA 8: LÍMITES & PREGUNTAS DE VALIDACIÓN
// ==========================================

= 9. Límites de la Evidencia Empírica

Para preservar el rigor metodológico y evitar conclusiones no fundamentadas, se establecen los siguientes límites epistemológicos sobre la evidencia recopilada:

#callout(title: "Límites Epistemológicos de la Inspección")[
+ *Medición en cliente vs. telemetría en servidor:* La ausencia de scripts de analítica (`gtag.js`, `gtm.js`) confirma la falta de instrumentación en el navegador. No permite descartar registros de servidor (logs de Apache), métricas a nivel de hosting, o propiedades en Google Search Console a nivel de dominio.
+ *Canales de contacto e interacciones comerciales:* La ausencia de formularios o enlaces directos en el código HTML no demuestra que AMC no reciba prospectos. La empresa puede captar clientes mediante llamadas telefónicas directas, correos manuales, licitaciones o relaciones comerciales presenciales en Valledupar y la región.
+ *Cobertura de URLs:* La muestra analizada se limitó a 16 páginas clave. Aunque abarca las secciones visibles desde la portada, no cubre la totalidad de rutas indexadas en los sitemaps de WordPress.
+ *Neutralidad sobre rendimiento:* Las observaciones reflejan la estructura técnica y de contenido del sitio; no representan métricas de tiempos de carga en usuarios reales ni estadísticas de tráfico orgánico.
]

= 10. Vacíos Empíricos y Preguntas de Validación

La inspección técnica delimita con claridad lo que es observable en el sitio web, pero deja al descubierto interrogantes de negocio e infraestructura que requieren validación directa con AMC Solutions:

== Modelo Comercial y Oferta
- *Operación de Servicios Empresariales:* ¿Qué servicios contempla la línea de `/servicios-empresariales/`, actualmente sin contenido en la web? ¿Sigue activa o fue descontinuada?
- *Concentración de facturación:* ¿Cuáles 2 o 3 líneas de servicio representan la mayor parte de los ingresos reales de la compañía?
- *Trámites vs. Proyectos Integrales:* ¿Los trámites mineros (RUCOM, regalías, FBM) se contratan como servicios independientes o como componentes de contratos de consultoría integral?

== Captación y Canales
- *Atribución de prospectos:* ¿Tiene AMC algún mecanismo para conocer si los clientes que llaman o escriben provienen de búsquedas en internet, del sitio web o de referencias personales?
- *Atención de canales:* De las tres líneas celulares listadas en la página de contacto, ¿a qué áreas de la empresa corresponden (gerencia, área técnica, comercial)?

== Infraestructura y Gestión Digital
- *Administración de la plataforma:* ¿Quién gestiona actualmente las actualizaciones de WordPress, el hosting y el servidor de la empresa?
- *Acceso a herramientas de búsqueda:* ¿Cuenta AMC con acceso activo a la propiedad del dominio en Google Search Console para evaluar el desempeño de indexación y búsqueda?

#v(0.5cm)
#line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))
#v(0.2cm)
#align(center)[
  #text(size: 8pt, fill: rgb("#94a3b8"))[
    Fin del Reporte de Inspección — Documento elaborado a partir de evidencia empírica verificable #obs("OBS-001") a #obs("OBS-015")
  ]
]
