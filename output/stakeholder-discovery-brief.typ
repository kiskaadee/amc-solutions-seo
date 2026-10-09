// AMC Solutions — Documento de Descubrimiento Inicial
// Brief de Descubrimiento para Partes Interesadas
// Proyecto: amc-solutions-seo

#set document(
  title: "AMC Solutions — Documento de Descubrimiento Inicial",
  author: "Equipo de Consultoría y Estrategia Digital",
  date: datetime(year: 2026, month: 10, day: 8),
)

#set page(
  paper: "a4",
  margin: (top: 1.05cm, bottom: 0.95cm, left: 1.55cm, right: 1.55cm),
  header: context {
    grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 7.2pt, fill: rgb("#475569"), weight: "bold")[
        AMC SOLUTIONS COLOMBIA — DOCUMENTO DE DESCUBRIMIENTO INICIAL
      ],
      text(size: 7.2pt, fill: rgb("#64748b"))[
        SÍNTESIS PARA PARTES INTERESADAS
      ]
    )
    v(-5pt)
    line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))
  },
  footer: context {
    line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
    v(1.5pt)
    grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 7.2pt, fill: rgb("#64748b"))[
        Diagnóstico preliminar de presencia digital · Proyecto: `amc-solutions-seo`
      ],
      text(size: 7.2pt, fill: rgb("#64748b"))[
        Página #counter(page).display("1") de #counter(page).final().first()
      ]
    )
  }
)

#set text(
  font: "Inter",
  size: 7.85pt,
  fill: rgb("#0f172a"),
  lang: "es",
)

#set par(
  justify: true,
  leading: 0.44em,
  spacing: 0.65em,
)

// Helper styles
#let establishes-box(body) = block(
  stroke: (left: 2.5pt + rgb("#0284c7"), rest: 0.5pt + rgb("#e0f2fe")),
  fill: rgb("#f0f9ff"),
  radius: (right: 3pt),
  inset: (x: 6.5pt, y: 3.5pt),
  width: 100%,
  breakable: false,
  [
    #text(weight: "bold", size: 7.8pt, fill: rgb("#0369a1"))[Lo que esto establece:]
    #text(size: 7.8pt, fill: rgb("#0c4a6e"))[ #body]
  ]
)

#let limits-box(body) = block(
  stroke: (left: 2.5pt + rgb("#d97706"), rest: 0.5pt + rgb("#fef3c7")),
  fill: rgb("#fffbeb"),
  radius: (right: 3pt),
  inset: (x: 6.5pt, y: 3.5pt),
  width: 100%,
  breakable: false,
  [
    #text(weight: "bold", size: 7.8pt, fill: rgb("#b45309"))[Límites de la observación:]
    #text(size: 7.8pt, fill: rgb("#78350f"))[ #body]
  ]
)

#let question-block(
  num: "",
  title: "",
  intro: [],
  enunciado: "",
  pregunta: [],
  porque: []
) = block(
  stroke: (left: 2.5pt + rgb("#2563eb"), rest: 0.5pt + rgb("#cbd5e1")),
  fill: rgb("#f8fafc"),
  radius: (right: 3pt),
  inset: (x: 8pt, y: 5pt),
  width: 100%,
  breakable: false,
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 5pt,
      align: (left, center),
      box(
        fill: rgb("#dbeafe"),
        radius: 2pt,
        inset: (x: 4pt, y: 1.5pt),
        text(weight: "bold", size: 7.5pt, fill: rgb("#1d4ed8"))[Pregunta #num]
      ),
      text(weight: "bold", size: 8.5pt, fill: rgb("#1e293b"))[#title]
    )
    #v(1.5pt)
    #text(size: 7.9pt, fill: rgb("#475569"))[#intro]
    #v(2pt)
    #rect(
      fill: rgb("#ffffff"),
      stroke: 0.5pt + rgb("#e2e8f0"),
      radius: 2pt,
      inset: (x: 6.5pt, y: 3.5pt),
      width: 100%,
      [
        #text(weight: "bold", size: 7.9pt, fill: rgb("#1e293b"))[#enunciado]
        #v(1pt)
        #text(size: 8.1pt, fill: rgb("#0f172a"))[#pregunta]
      ]
    )
    #v(2pt)
    #text(size: 7.7pt, fill: rgb("#475569"))[
      #text(weight: "bold", fill: rgb("#334155"))[Por qué importa:] #porque
    ]
  ]
)

// ==========================================
// PÁGINA 1 — PROPÓSITO Y PANORAMA INICIAL
// ==========================================

#v(1pt)
#text(size: 13.5pt, weight: "bold", fill: rgb("#0f172a"))[
  AMC Solutions — Documento de Descubrimiento Inicial
]
#v(1pt)
#line(length: 100%, stroke: 1.2pt + rgb("#2563eb"))
#v(4pt)

#text(size: 10.5pt, weight: "bold", fill: rgb("#1e293b"))[
  Parte 1: Propósito y Panorama Inicial
]
#v(2pt)

Este documento resume los resultados más relevantes obtenidos durante la exploración externa de la presencia digital de AMC Solutions Colombia. Su propósito es establecer una base informativa común entre AMC y el equipo consultor antes de una primera reunión de trabajo.

#v(2pt)
La exploración examinó dos ámbitos observables públicamente:

#v(1pt)
#grid(
  columns: (12pt, 1fr),
  gutter: 3pt,
  align: (left, top),
  text(weight: "bold", fill: rgb("#2563eb"))[1.],
  [#text(weight: "bold", fill: rgb("#1e293b"))[El sitio web institucional (`amcsolutionscolombia.com`):] su estructura de páginas, presentación de servicios, mecanismos visibles de contacto y configuración técnica básica.],
  text(weight: "bold", fill: rgb("#2563eb"))[2.],
  [#text(weight: "bold", fill: rgb("#1e293b"))[La presencia externa en internet:] registros mercantiles colombianos, antecedentes de contratación pública estatal, plataformas cartográficas y redes profesionales.]
)

#v(3pt)
El objetivo de este levantamiento no es presentar un informe de auditoría, evaluar el rendimiento comercial de la empresa ni proponer soluciones técnicas anticipadas. Antes de plantear cambios en diseño, contenidos o posicionamiento en buscadores, es indispensable contrastar lo que es visible desde el exterior con la realidad operativa que solo la empresa conoce.

#v(5pt)
#text(size: 9.8pt, weight: "bold", fill: rgb("#1e293b"))[
  Panorama general observado
]
#v(1.5pt)

La investigación externa permite identificar los siguientes elementos principales:

#v(2pt)
#block(
  fill: rgb("#f8fafc"),
  stroke: 0.5pt + rgb("#e2e8f0"),
  radius: 3pt,
  inset: (x: 8pt, y: 6pt),
  width: 100%,
  [
    #grid(
      columns: (8pt, 1fr),
      gutter: 3pt,
      align: (left, top),
      text(fill: rgb("#2563eb"), weight: "bold")[•],
      [#text(weight: "bold", fill: rgb("#1e293b"))[Estructura web activa con dos enfoques de contenido:] el sitio web opera sobre WordPress y presenta dos modelos diferenciados: por un lado, cinco páginas de servicios generales presentadas mediante listas esquemáticas; por el otro, nueve páginas dedicadas a trámites y normativas del sector minero colombiano con explicaciones desarrolladas y referencias legales.],
      text(fill: rgb("#2563eb"), weight: "bold")[•],
      [#text(weight: "bold", fill: rgb("#1e293b"))[Canales de contacto expuestos como texto plano:] los números telefónicos, el correo electrónico y la dirección física se presentan como texto estático, sin formularios interactivos ni enlaces de marcación o mensajería directa en las páginas inspeccionadas.],
      text(fill: rgb("#2563eb"), weight: "bold")[•],
      [#text(weight: "bold", fill: rgb("#1e293b"))[Información mercantil publicada y contratación pública documentada:] los directorios comerciales Portafolio y eInforma publican una ficha de AMC Solutions Colombia S.A.S. en Valledupar. Un informe oficial de la Alcaldía de Uribia documenta un contrato de fiscalización minera de 2023 y describe su objeto y alcance.],
      text(fill: rgb("#2563eb"), weight: "bold")[•],
      [#text(weight: "bold", fill: rgb("#1e293b"))[Baja visibilidad en plataformas externas:] en las muestras evaluadas de búsqueda pública no se identificaron fichas verificadas en Google Maps para la sede local ni páginas corporativas institucionales activas en LinkedIn o redes sociales abiertas.]
    )
  ]
)

#pagebreak()

// ==========================================
// PÁGINA 2 — HALLAZGOS: SERVICIOS Y CONTACTO
// ==========================================

#text(size: 11pt, weight: "bold", fill: rgb("#1e293b"))[
  Parte 2: Hallazgos
]
#v(1pt)
#line(length: 100%, stroke: 0.8pt + rgb("#cbd5e1"))
#v(3pt)

#text(size: 10pt, weight: "bold", fill: rgb("#1e293b"))[
  1. Servicios y canales de contacto
]
#v(2.5pt)

#text(size: 8.8pt, weight: "bold", fill: rgb("#334155"))[
  Estructura y presentación del portafolio
]
#v(1pt)

El sitio web alberga dos conjuntos de páginas de contenido técnico accesibles desde la portada:

#v(1.5pt)
#grid(
  columns: (8pt, 1fr),
  gutter: 3pt,
  align: (left, top),
  text(fill: rgb("#475569"), weight: "bold")[•],
  [#text(weight: "bold", fill: rgb("#1e293b"))[Páginas generales de servicios:] bajo la sección de servicios se identificaron cinco páginas (#box[`/servicios-ambientales/`], #box[`/servicios-de-topografia/`], #box[`/servicios-geologicos/`], #box[`/servicios-mineros/`] y #box[`/servicios-empresariales/`]). Cuatro de ellas contienen únicamente un título y una lista de nombres de servicios (entre 5 y 15 conceptos por página), sin párrafos explicativos, imágenes descriptivas ni llamados a solicitar cotización. La página de servicios empresariales no contiene texto ni listados en su sección principal.],
  text(fill: rgb("#475569"), weight: "bold")[•],
  [#text(weight: "bold", fill: rgb("#1e293b"))[Páginas de trámites mineros:] se identificaron nueve páginas dedicadas a trámites y figuras regulatorias de la Agencia Nacional de Minería (ANM) y el Servicio Geológico Colombiano (SGC), tales como RUCOM, liquidación de regalías, formalización minera y Formato Básico Minero. Estas páginas presentan textos explicativos con citas normativas específicas (Leyes 685 de 2001 y 2250 de 2022, resoluciones de la ANM).]
)

#v(2.5pt)
#establishes-box[
  la empresa cuenta con contenidos informativos detallados para trámites mineros específicos, mientras que las grandes líneas de servicio operan como esquemas de términos técnicos.
]

#v(1.5pt)
#limits-box[
  la observación no determina cuáles de estos servicios representan las líneas de mayor facturación o prioridad comercial para AMC hoy, ni si la falta de contenido en servicios empresariales corresponde a una sección en desarrollo o a una línea descontinuada.
]

#v(2.5pt)
#text(size: 8.8pt, weight: "bold", fill: rgb("#334155"))[
  Mecanismos de contacto y cotización
]
#v(1.5pt)

#grid(
  columns: (8pt, 1fr),
  gutter: 3pt,
  align: (left, top),
  text(fill: rgb("#475569"), weight: "bold")[•],
  [En la portada y en la página `/contacto/`, los datos de contacto corresponden a tres números de teléfono móvil, una dirección de correo electrónico corporativo y una dirección física en el Barrio Arizona de Valledupar. Todos estos datos se presentan exclusivamente en texto plano.],
  text(fill: rgb("#475569"), weight: "bold")[•],
  [En el código fuente de las páginas inspeccionadas no se encontraron enlaces directos de llamada (`tel:`), enlaces directos de correo (`mailto:`), botones de enlace a WhatsApp ni formularios de contacto web (el único formulario presente en la página corresponde al buscador interno de la plantilla).],
  text(fill: rgb("#475569"), weight: "bold")[•],
  [En cuatro de las nueve páginas de trámites mineros existen enlaces de texto que invitan al usuario a cotizar (#emph[«Cotizar aquí su trámite»], #emph[«Haga su cotización aquí!»]), los cuales dirigen a la página `/contacto/`.]
)

#v(1.5pt)
#establishes-box[
  cualquier visitante que desee comunicarse con AMC desde el sitio web debe transcribir manualmente los números telefónicos o copiar la dirección de correo. Quienes siguen los enlaces de cotización desde las páginas de trámites llegan a una página de contacto general que no incluye un formulario específico para describir el trámite de interés.
]

#v(1.5pt)
#limits-box[
  no es posible establecer desde el exterior si este esquema responde a una preferencia operativa de la empresa por recibir llamadas directas, si el flujo habitual de clientes llega por canales externos no vinculados a la web, o si los usuarios experimentan dificultades para completar el contacto.
]

#v(2pt)
#line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
#v(1.5pt)

#text(size: 9.8pt, weight: "bold", fill: rgb("#1e293b"))[
  2. Señales técnicas en el sitio web
]
#v(1.5pt)

#text(size: 8.6pt, weight: "bold", fill: rgb("#334155"))[
  Plataforma y arquitectura base
]
#v(1pt)
El sitio web responde sobre servidor Apache y lenguaje PHP 8.2, operando bajo la plataforma WordPress 7.1.3 con el tema visual "Blogus". El archivo de control de rastreo (`robots.txt`) y el mapa del sitio (`/sitemap.xml`) están activos y exponen los índices estándar generados automáticamente por WordPress.

#v(1.5pt)
#establishes-box[
  en el sitio inspeccionado se detectó WordPress 7.1.3 con el tema Blogus, sobre servidor Apache y PHP 8.2.
]

#v(1.5pt)
#text(size: 8.6pt, weight: "bold", fill: rgb("#334155"))[
  Metadatos y visibilidad para motores de búsqueda
]
#v(1pt)
En las páginas evaluadas se identificó la etiqueta de enlace canónico (que indica a los motores de búsqueda la dirección preferida de cada página). En el código HTML de la portada, de las páginas de servicios y de las páginas de trámites inspeccionadas, no se encontraron etiquetas de descripción para buscadores (`meta description`), etiquetas para previsualización en redes sociales (OpenGraph o Twitter Cards) ni datos estructurados de organización o servicios locales (formato JSON-LD).

#v(1.5pt)
#establishes-box[
  la inspección no encontró esas descripciones ni etiquetas de previsualización en el HTML examinado. En su ausencia, los buscadores o plataformas podrían generar fragmentos a partir del contenido disponible; esta inspección no comprobó cómo se presentan los enlaces en cada plataforma.
]
#v(1.5pt)
#limits-box[
  la ausencia de estas etiquetas en el código HTML no indica el volumen de tráfico que recibe el sitio ni su posición en resultados de búsqueda para consultas particulares.
]

#v(1.5pt)
#text(size: 8.6pt, weight: "bold", fill: rgb("#334155"))[
  Medición y analítica web
]
#v(1pt)
En las dieciséis páginas examinadas no se detectaron scripts de analítica web del lado del navegador (tales como Google Analytics, Google Tag Manager o etiquetas de plataformas publicitarias).

#v(1.5pt)
#establishes-box[
  la inspección del HTML de las páginas examinadas no detectó scripts relevantes de analítica del lado del navegador.
]
#v(1.5pt)
#limits-box[
  esta inspección se limita a los scripts cargados en las páginas visibles. No descarta la existencia de herramientas de medición configuradas a nivel de dominio en Google Search Console, estadísticas de visitas en el servidor de alojamiento o registros históricos previos.
]

#pagebreak()

// ==========================================
// PÁGINA 3 — HALLAZGOS: PRESENCIA EXTERNA
// ==========================================

#text(size: 11pt, weight: "bold", fill: rgb("#1e293b"))[
  Parte 2: Hallazgos (cont.)
]
#v(1pt)
#line(length: 100%, stroke: 0.8pt + rgb("#cbd5e1"))
#v(3pt)

#text(size: 10pt, weight: "bold", fill: rgb("#1e293b"))[
  3. Presencia observable externamente
]
#v(2pt)

#text(size: 8.6pt, weight: "bold", fill: rgb("#334155"))[
  Información mercantil publicada y contratación estatal documentada
]
#v(1pt)
#grid(
  columns: (8pt, 1fr),
  gutter: 3pt,
  align: (left, top),
  text(fill: rgb("#475569"), weight: "bold")[•],
  [#text(weight: "bold", fill: rgb("#1e293b"))[Registro mercantil:] directorios comerciales colombianos (Portafolio y eInforma) registran a `AMC SOLUTIONS COLOMBIA S.A.S.` con NIT `901380770-0`, domicilio en Valledupar y número telefónico coincidente con una de las líneas publicadas en el sitio web. En dicho registro figura la dirección `Carrera 14 # 13 C 60, Edificio Ágora, Oficina 308`, una ubicación distinta a la sede de `Carrera 19d # 5-50 (Barrio Arizona)` declarada en la página de contacto actual.],
  text(fill: rgb("#475569"), weight: "bold")[•],
  [#text(weight: "bold", fill: rgb("#1e293b"))[Contratación pública territorial:] en el informe oficial de Rendición de Cuentas 2023 del Municipio de Uribia (La Guajira) consta la contratación de AMC Solutions Colombia S.A.S. mediante Selección Abreviada de Menor Cuantía Nº 014 de 2023 por un valor de \$198.588.212 COP. El contrato tuvo por objeto el control y seguimiento técnico, ambiental y jurídico de 8 unidades productivas mineras y 25 centros de acopio durante el último trimestre de 2023.]
)

#v(1.5pt)
#establishes-box[
  Portafolio y eInforma publican una ficha comercial con la razón social, el NIT y datos de ubicación y contacto de AMC Solutions Colombia S.A.S. Por separado, el informe oficial de Uribia documenta un contrato de 2023, su objeto y el seguimiento reportado a 8 unidades productivas mineras y 25 centros de acopio.
]
#v(1.5pt)
#limits-box[
  el antecedente de Uribia corresponde a la vigencia fiscal 2023; la evidencia documental no permite afirmar si la contratación pública estatal constituye hoy una línea comercial continua o si correspondió a una ejecución puntual. La diferencia entre las dos direcciones requiere confirmación; la información disponible no permite determinar si corresponde a un cambio de sede, a oficinas distintas o a otra circunstancia.
]

#v(3pt)
#text(size: 8.6pt, weight: "bold", fill: rgb("#334155"))[
  Presencia en plataformas y directorios públicos
]
#v(1pt)
#grid(
  columns: (8pt, 1fr),
  gutter: 3pt,
  align: (left, top),
  text(fill: rgb("#475569"), weight: "bold")[•],
  [#text(weight: "bold", fill: rgb("#1e293b"))[Plataformas de mapas y búsqueda local:] en la muestra evaluada de consultas en Google Maps y motores de búsqueda para Valledupar, no se observó una ficha comercial verificada o reclamada en Google Business Profile vinculada a AMC Solutions o a su dirección de Barrio Arizona.],
  text(fill: rgb("#475569"), weight: "bold")[•],
  [#text(weight: "bold", fill: rgb("#1e293b"))[Redes profesionales y corporativas:] en las consultas realizadas sobre el índice público de LinkedIn, no se identificó una página de empresa institucional activa (`linkedin.com/company/`) bajo el nombre de la compañía.],
  text(fill: rgb("#475569"), weight: "bold")[•],
  [#text(weight: "bold", fill: rgb("#1e293b"))[Redes sociales abiertas:] en las búsquedas orientadas a Facebook, Instagram y X (Twitter), no se encontraron perfiles corporativos oficiales activos asociados al dominio o a la denominación de la empresa.]
)

#v(1.5pt)
#establishes-box[
  en las muestras públicas examinadas no se identificaron fichas o perfiles institucionales activos atribuibles a AMC en Google Maps, LinkedIn, Facebook, Instagram o X. La observación se limita a esas consultas y plataformas.
]
#v(1.5pt)
#limits-box[
  estas observaciones corresponden a las muestras públicas indexadas en la fecha de consulta. No descartan trámites de verificación postal en curso, fichas no indexadas, perfiles personales de directivos en redes profesionales ni canales privados de mensajería comercial.
]

#v(3pt)
#text(size: 8.6pt, weight: "bold", fill: rgb("#334155"))[
  Referencias externas no confirmadas
]
#v(1pt)
Se identificó un canal en YouTube (`@amcsolutionscolombia5796`) con un video de topografía con drones publicado en enero de 2025 que utiliza la denominación de la empresa. Sin embargo, no incluye enlaces al dominio web, números telefónicos ni datos de contacto que permitan confirmar con certeza su autoría institucional. Se identificaron menciones en registros públicos de hojas de vida del sector estatal (SIGEP) correspondientes a profesionales con experiencia laboral previa en la empresa en 2020–2021, sin exhibir el NIT de la compañía en la vista pública.

#v(1.5pt)
#establishes-box[
  estas referencias presentan afinidad temática pero carecen de elementos de contacto suficientes para atribuirse formalmente sin validación de la empresa.
]

#pagebreak()

// ==========================================
// PÁGINA 4 — PREGUNTAS Y DISCUSIÓN
// ==========================================

#text(size: 11pt, weight: "bold", fill: rgb("#1e293b"))[
  Parte 3: Preguntas y Discusión
]
#v(1pt)
#line(length: 100%, stroke: 0.8pt + rgb("#cbd5e1"))
#v(3pt)

Las siguientes cuatro preguntas sintetizan las principales dudas que la investigación externa no puede resolver por sí sola. Sus respuestas permitirán orientar el trabajo posterior hacia las necesidades reales de AMC:

#v(3pt)

#question-block(
  num: "1",
  title: "Prioridades comerciales y oferta activa de servicios",
  intro: [
    En el sitio web coexisten cinco áreas de servicios generales (con descripciones esquemáticas) y nueve páginas detalladas sobre trámites mineros específicos ante la ANM.
  ],
  enunciado: "Para la operación actual de AMC:",
  pregunta: [
    ¿Cuáles son hoy las dos o tres líneas de servicio que concentran la mayor actividad y facturación de la empresa, y cuál es la situación real de la línea de servicios empresariales (cuya página web figura sin contenido)?
  ],
  porque: [
    permite comprender qué servicios deben tener prioridad en cualquier análisis posterior de contenidos y arquitectura web.
  ]
)

#v(3pt)

#question-block(
  num: "2",
  title: "Canales habituales de contacto y flujo de clientes",
  intro: [
    La información de contacto en la web se encuentra en texto plano sin formularios interactivos, y los enlaces de cotización en las páginas de trámites dirigen a esos mismos números y correos generales.
  ],
  enunciado: "En el día a día comercial:",
  pregunta: [
    ¿Cómo llegan y se gestionan habitualmente las consultas de nuevos clientes (llamadas directas a los celulares, mensajes por WhatsApp personal o corporativo, correos electrónicos, reuniones presenciales o referencias directas)?
  ],
  porque: [
    permite diseñar puntos de contacto en el sitio web que respeten la forma en que el equipo comercial atiende y cierra acuerdos, evitando imponer herramientas que no se utilicen en la práctica.
  ]
)

#v(3pt)

#question-block(
  num: "3",
  title: "Perfil de clientes y peso de la contratación pública",
  intro: [
    El informe oficial de Uribia documenta un contrato de 2023 cuyo objeto fue el control y seguimiento del funcionamiento y operación de empresas y centros de acopio del sector minero en el municipio. Al mismo tiempo, las páginas de trámites mineros se dirigen a requerimientos de titulares y comercializadores privados.
  ],
  enunciado: "En la composición de su cartera de clientes:",
  pregunta: [
    ¿Qué peso tiene la contratación con alcaldías o gobernaciones frente a la asesoría a empresas y titulares mineros privados, y qué perfil profesional suele tomar la decisión de contratar a AMC (gerentes de operaciones, directores ambientales, abogados o propietarios mineros)?
  ],
  porque: [
    define el tono de comunicación, los argumentos técnicos y la información institucional necesaria para generar confianza en quien efectivamente decide la contratación.
  ]
)

#v(3pt)

#question-block(
  num: "4",
  title: "Sedes de atención y localización en Valledupar",
  intro: [
    Los registros mercantiles registran una oficina en la Carrera 14 (Edificio Ágora), mientras que el sitio web actual indica una sede en la Carrera 19d (Barrio Arizona). Además, no se observa una ficha verificada en Google Maps para la empresa.
  ],
  enunciado: "Respecto a la atención presencial e institucional:",
  pregunta: [
    ¿Cuál es actualmente la sede principal de trabajo y atención a clientes en Valledupar, y cómo acostumbran los clientes o entidades de la región ubicar físicamente las oficinas de AMC?
  ],
  porque: [
    permite unificar la información pública de la empresa en internet y asegurar que quienes buscan los servicios en Valledupar encuentren la ubicación y los canales de atención correctos.
  ]
)

#v(4pt)

// Próximo paso propuesto
#block(
  stroke: (left: 2.5pt + rgb("#10b981"), rest: 0.5pt + rgb("#d1fae5")),
  fill: rgb("#f0fdf4"),
  radius: (right: 3pt),
  inset: (x: 8pt, y: 5pt),
  width: 100%,
  breakable: false,
  [
    #text(weight: "bold", size: 8.5pt, fill: rgb("#065f46"))[
      Próximo paso propuesto
    ]
    #v(1.5pt)
    #text(size: 8pt, fill: rgb("#14532d"))[
      Revisar y contrastar estos puntos de forma conjunta en una sesión de descubrimiento con los representantes de AMC Solutions. A partir de sus respuestas, se definirá el alcance y las prioridades de cualquier propuesta posterior de arquitectura web, contenidos y estrategia de presencia digital.
    ]
  ]
)
