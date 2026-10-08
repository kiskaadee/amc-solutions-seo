// Cuestionario de Validación: Identidad Operativa y Presencia Externa
// AMC Solutions Colombia — Instrumento de Descubrimiento y Validación
// Proyecto: amc-solutions-seo

#set document(
  title: "Cuestionario de Validación: Identidad Operativa y Presencia Externa",
  author: "Equipo de Consultoría y Estrategia Digital",
  date: datetime(year: 2026, month: 10, day: 8),
)

#set page(
  paper: "a4",
  margin: (top: 1.5cm, bottom: 1.4cm, left: 1.8cm, right: 1.8cm),
  header: context {
    grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 7.8pt, fill: rgb("#475569"), weight: "bold")[
        AMC SOLUTIONS COLOMBIA — VALIDACIÓN DE IDENTIDAD Y PRESENCIA
      ],
      text(size: 7.8pt, fill: rgb("#64748b"))[
        CUESTIONARIO ESTRATÉGICO
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
      text(size: 7.8pt, fill: rgb("#64748b"))[
        Instrumento de validación operativa · Proyecto: `amc-solutions-seo`
      ],
      text(size: 7.8pt, fill: rgb("#64748b"))[
        Página #counter(page).display("1") de #counter(page).final().first()
      ]
    )
  }
)

#set text(
  font: "Inter",
  size: 8.6pt,
  fill: rgb("#0f172a"),
  lang: "es",
)

#set par(
  justify: true,
  leading: 0.50em,
)

// Header principal
#v(1pt)
#text(size: 13.5pt, weight: "bold", fill: rgb("#0f172a"))[
  Cuestionario de Validación: Identidad Operativa y Presencia Externa
]

#v(1pt)
#line(length: 100%, stroke: 1.2pt + rgb("#2563eb"))
#v(3pt)

// Contexto del Requerimiento
#text(size: 9.8pt, weight: "bold", fill: rgb("#1e293b"))[
  Contexto del Requerimiento
]

#v(1pt)
Como parte de la investigación de presencia digital de AMC Solutions, realizamos un levantamiento de la huella pública de la empresa en registros oficiales, contratación estatal y plataformas de localización.

El propósito de este cuestionario es contrastar la información pública disponible con la realidad operativa actual de AMC. Sus respuestas nos permitirán alinear la estructura del sitio web y los canales de contacto con las sedes activas y las líneas de negocio estratégicas de la empresa.

#v(4pt)
#text(size: 9.8pt, weight: "bold", fill: rgb("#1e293b"))[
  Preguntas Prioritarias
]

#v(2.5pt)

// Componente para preguntas
#let question-card(
  num: "",
  title: "",
  contexto: [],
  pregunta_enunciado: "",
  pregunta_cuerpo: []
) = block(
  stroke: (left: 3pt + rgb("#2563eb"), rest: 0.5pt + rgb("#cbd5e1")),
  fill: rgb("#f8fafc"),
  radius: (right: 3.5pt),
  inset: (x: 9pt, y: 6pt),
  width: 100%,
  breakable: false,
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 6pt,
      align: (left, center),
      box(
        fill: rgb("#dbeafe"),
        radius: 2.5pt,
        inset: (x: 4.5pt, y: 1.5pt),
        text(weight: "bold", size: 7.8pt, fill: rgb("#1d4ed8"))[Pregunta #num]
      ),
      text(weight: "bold", size: 9pt, fill: rgb("#1e293b"))[#title]
    )
    #v(2.5pt)
    #text(size: 8.2pt, fill: rgb("#475569"))[#contexto]
    #v(2.5pt)
    #rect(
      fill: rgb("#ffffff"),
      stroke: 0.5pt + rgb("#e2e8f0"),
      radius: 2.5pt,
      inset: (x: 7.5pt, y: 4.5pt),
      width: 100%,
      [
        #text(weight: "bold", size: 8.2pt, fill: rgb("#1e293b"))[#pregunta_enunciado]
        #v(1pt)
        #text(size: 8.4pt, fill: rgb("#0f172a"))[#pregunta_cuerpo]
      ]
    )
  ]
)

#question-card(
  num: "1",
  title: "Sedes físicas y atención presencial en Valledupar",
  contexto: [
    En el sitio web oficial se presenta la sede en el Barrio Arizona (`Carrera 19d # 5-50`), mientras que en directorios empresariales consultados figuran oficinas en la `Carrera 14 # 13 C 60 (Edificio Ágora)` y `Carrera 14 # 13 B Bis 54 (Edificio Perlo)`.
  ],
  pregunta_enunciado: "Para efectos de atención a clientes y correspondencia comercial en Valledupar:",
  pregunta_cuerpo: [
    Cuando un cliente, aliado o entidad requiere reunirse presencialmente con el equipo o remitir correspondencia física, ¿a qué sede acuden habitualmente y qué función operativa cumplen hoy las oficinas de la Carrera 14?
  ]
)

#v(3pt)

#question-card(
  num: "2",
  title: "Alcance y prioridad de la contratación pública",
  contexto: [
    En registros gubernamentales territoriales se identificó la adjudicación del contrato de control y seguimiento minero en el municipio de Uribia (La Guajira, vigencia fiscal 2023), estrechamente vinculado a las capacidades técnicas de formalización minera y RUCOM que ofrece AMC.
  ],
  pregunta_enunciado: "Dentro del modelo de servicios y captación de AMC:",
  pregunta_cuerpo: [
    ¿Qué papel juega la contratación técnica con entidades del sector público dentro de la actividad habitual de la empresa, y cómo se articula con los servicios prestados a titulares y compañías del sector privado?
  ]
)

#v(3pt)

#question-card(
  num: "3",
  title: "Localización digital y gestión de Google Maps",
  contexto: [
    Al examinar la presencia territorial en búsquedas web orientadas a mapas para Valledupar, no se observa una ficha comercial verificada o reclamada en Google Business Profile asociada directamente a AMC Solutions.
  ],
  pregunta_enunciado: "En el día a día comercial de la empresa:",
  pregunta_cuerpo: [
    Cuando una empresa o profesional de la región busca los servicios o la oficina de AMC en Google, ¿cuentan internamente con una ficha de Google Maps administrada por el equipo (en proceso de validación o con otro nombre), o la llegada de prospectos y visitas ocurre principalmente por contacto telefónico y referencias directas?
  ]
)

#v(4pt)

// Forma de Respuesta Esperada
#block(
  stroke: (left: 3pt + rgb("#10b981"), rest: 0.5pt + rgb("#e2e8f0")),
  fill: rgb("#f0fdf4"),
  radius: (right: 3.5pt),
  inset: (x: 8.5pt, y: 5.5pt),
  width: 100%,
  breakable: false,
  [
    #text(weight: "bold", size: 8.8pt, fill: rgb("#065f46"))[
      Forma de Respuesta Esperada
    ]
    #v(2pt)
    #text(size: 8.1pt, fill: rgb("#1f2937"))[
      No se requieren respuestas técnicas ni extensas. Pueden responder a estas tres preguntas mediante:
    ]
    #v(1.5pt)
    #grid(
      columns: (8pt, 1fr),
      gutter: 2.5pt,
      align: (left, top),
      text(fill: rgb("#059669"), weight: "bold")[•],
      text(size: 8.1pt, fill: rgb("#1f2937"))[Comentarios breves por escrito en este mismo documento.],
      text(fill: rgb("#059669"), weight: "bold")[•],
      text(size: 8.1pt, fill: rgb("#1f2937"))[Notas de voz o mensajes de texto a través del canal de coordinación del proyecto.],
      text(fill: rgb("#059669"), weight: "bold")[•],
      text(size: 8.1pt, fill: rgb("#1f2937"))[O bien, podemos destinar los primeros 10 minutos de nuestra próxima sesión de trabajo para revisar conjuntamente estos tres puntos.]
    )
  ]
)
