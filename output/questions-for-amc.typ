// Guía de Preguntas de Descubrimiento — AMC Solutions Colombia
// Documento de Alineación Estratégica, Comercial y Operativa
// Proyecto: amc-solutions-seo

#set document(
  title: "Guía de Preguntas de Descubrimiento — AMC Solutions Colombia",
  author: "Equipo de Investigación y Consultoría Digital",
  date: datetime(year: 2026, month: 10, day: 8),
)

// Configuración general de página y tipografía
#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.3cm, left: 2.5cm, right: 2.5cm),
  header: context {
    let page_num = counter(page).get().first()
    if page_num > 1 {
      grid(
        columns: (1fr, 1fr),
        align: (left, right),
        text(size: 8.5pt, fill: rgb("#64748b"), weight: "medium")[
          AMC SOLUTIONS COLOMBIA — GUÍA DE DESCUBRIMIENTO
        ],
        text(size: 8.5pt, fill: rgb("#94a3b8"))[
          ALINEACIÓN ESTRATÉGICA Y TÉCNICA
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
  size: 9.3pt,
  fill: rgb("#0f172a"),
  lang: "es",
  spacing: 104%,
)

#set par(
  justify: true,
  leading: 0.58em,
)

// Estilos de encabezados
#show heading.where(level: 1): it => block(
  breakable: false,
  above: 1.1em,
  below: 0.6em,
  stack(
    text(size: 12.5pt, weight: "bold", fill: rgb("#1e293b"), it.body),
    v(0.2em),
    line(length: 100%, stroke: 0.8pt + rgb("#cbd5e1"))
  )
)

#show heading.where(level: 2): it => block(
  breakable: false,
  above: 0.9em,
  below: 0.4em,
  text(size: 10.2pt, weight: "bold", fill: rgb("#334155"), it.body)
)

// Código en línea
#show raw.where(block: false): it => box(
  fill: rgb("#f1f5f9"),
  inset: (x: 2.8pt, y: 1pt),
  radius: 2pt,
  baseline: 0%,
  text(font: ("Fira Code", "DejaVu Sans Mono"), size: 8.2pt, fill: rgb("#0f172a"), it)
)

// Componente para preguntas estructuradas
#let question-box(
  num: "",
  title: "",
  contexto: "",
  preguntas: ()
) = block(
  stroke: (left: 3pt + rgb("#2563eb"), rest: 0.5pt + rgb("#e2e8f0")),
  fill: rgb("#f8fafc"),
  radius: (right: 4pt),
  inset: (x: 11pt, y: 7.5pt),
  width: 100%,
  breakable: false,
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 6pt,
      text(weight: "bold", size: 9pt, fill: rgb("#1d4ed8"))[Pregunta #num:],
      text(weight: "bold", size: 9pt, fill: rgb("#1e293b"))[#title]
    )
    #if contexto != "" [
      #v(2.5pt)
      #text(size: 8.5pt, fill: rgb("#475569"), style: "italic")[#contexto]
    ]
    #v(3.5pt)
    #set text(size: 8.9pt, fill: rgb("#1e293b"))
    #for p in preguntas [
      #grid(
        columns: (10pt, 1fr),
        gutter: 4pt,
        align: (left, top),
        text(fill: rgb("#2563eb"), weight: "bold")[•],
        [#p]
      )
      #v(1.5pt)
    ]
  ]
)

// Bloque de nota o contexto metodológico
#let note-box(body, title: "Nota") = block(
  stroke: (left: 3pt + rgb("#94a3b8"), rest: 0.5pt + rgb("#e2e8f0")),
  fill: rgb("#f8fafc"),
  radius: (right: 4pt),
  inset: (x: 10pt, y: 7pt),
  width: 100%,
  breakable: false,
  [
    #text(weight: "bold", size: 8.6pt, fill: rgb("#334155"))[#title:]
    #h(4pt)
    #text(size: 8.6pt, fill: rgb("#475569"))[#body]
  ]
)

// ==========================================
// PÁGINA 1: PORTADA
// ==========================================
#page(header: none, footer: none)[
  #v(2.8cm)

  #align(center)[
    #text(size: 9.5pt, weight: "bold", fill: rgb("#64748b"), tracking: 2pt)[
      INSTRUMENTO DE INVESTIGACIÓN Y ALINEACIÓN
    ]
    #v(0.6cm)
    #text(size: 22pt, weight: "bold", fill: rgb("#0f172a"))[
      Guía de Preguntas de Descubrimiento
    ]
    #v(0.35cm)
    #text(size: 12.5pt, weight: "medium", fill: rgb("#475569"))[
      Alineación Estratégica, Comercial y Operativa
    ]
    #v(0.2cm)
    #text(size: 10.5pt, fill: rgb("#64748b"))[
      AMC Solutions Colombia
    ]
  ]

  #v(3.2cm)

  #align(center)[
    #block(
      width: 90%,
      stroke: 0.5pt + rgb("#cbd5e1"),
      radius: 6pt,
      fill: rgb("#f8fafc"),
      inset: (x: 16pt, y: 14pt),
      align(left)[
        #grid(
          columns: (auto, 1fr),
          row-gutter: 8.5pt,
          column-gutter: 14pt,
          text(weight: "bold", size: 8.8pt, fill: rgb("#475569"))[Propósito:],
          text(size: 8.8pt)[Identificar la operación comercial real, prioridades de portafolio y capacidades de gestión antes de definir propuestas o diagnósticos técnicos.],

          text(weight: "bold", size: 8.8pt, fill: rgb("#475569"))[Destinatarios:],
          text(size: 8.8pt)[Dirección general, responsables comerciales y contrapartes técnicas de AMC Solutions.],

          text(weight: "bold", size: 8.8pt, fill: rgb("#475569"))[Base de partida:],
          text(size: 8.8pt)[Reconocimiento preliminar de la presencia digital pública (sitio web y canales institucionales).],

          text(weight: "bold", size: 8.8pt, fill: rgb("#475569"))[Fecha de emisión:],
          text(size: 8.8pt)[Octubre de 2026],

          text(weight: "bold", size: 8.8pt, fill: rgb("#475569"))[Proyecto:],
          text(size: 8.8pt)[`amc-solutions-seo`],

          text(weight: "bold", size: 8.8pt, fill: rgb("#475569"))[Carácter del documento:],
          text(size: 8.8pt)[Guía de conversación y levantamiento de información (no prescriptiva).],
        )
      ]
    )
  ]

  #v(1fr)

  #align(center)[
    #text(size: 8.3pt, fill: rgb("#94a3b8"))[
      Este documento plantea preguntas de exploración neutrales. No adelanta juicios sobre la efectividad comercial actual ni presupone soluciones tecnológicas previas a su debida validación.
    ]
  ]
]

// ==========================================
// PÁGINA 2: INTRODUCCIÓN Y SECCIÓN 1
// ==========================================

= Introducción y Propósito de la Guía

Esta guía estructura una conversación de descubrimiento con el equipo directivo y técnico de AMC Solutions Colombia. El reconocimiento preliminar de los canales digitales públicos identificó áreas de servicio técnico, páginas sobre trámites mineros regulados ante la Agencia Nacional de Minería (ANM) y canales de contacto directo (teléfonos y correo).

Sin embargo, los activos digitales no revelan por sí solos cómo opera el negocio en la práctica: qué servicios representan la base de ingresos, cómo deciden los clientes la contratación, o cómo se gestionan internamente las solicitudes. Formular propuestas técnicas sin conocer estos aspectos conlleva el riesgo de optimizar canales hacia servicios secundarios o proponer dinámicas incompatibles con la operación. Las preguntas aquí reunidas buscan establecer estos hechos antes de diseñar cualquier recomendación.

#v(2pt)

#note-box(
  [Las preguntas son estrictamente exploratorias y neutrales. No auditan la gestión de la empresa ni pretenden confirmar conclusiones previas, sino delimitar objetivos prioritarios y dinámicas comerciales reales.],
  title: "Criterio metodológico"
)

#v(6pt)

= 1. Información Estratégica y Objetivos de Negocio

Esta sección explora la visión directiva sobre el papel que debe cumplir la presencia digital de AMC en los próximos meses, los criterios para evaluar resultados y el ámbito territorial de las operaciones.

#v(4pt)

#question-box(
  num: "1.1",
  title: "Función prioritaria del canal digital",
  contexto: "Las empresas del sector utilizan su presencia digital con diversos objetivos: respaldo institucional, captación comercial activa o posicionamiento como referente técnico.",
  preguntas: (
    [¿Cuál es la función primordial que la dirección espera que cumpla la presencia digital de AMC en los próximos 12 meses?],
    [Entre las siguientes prioridades, ¿cuál refleja mejor el objetivo central: respaldar licitaciones y validar solvencia técnica, captar nuevos prospectos comerciales calificados, o proyectar autoridad técnica especializada en el sector minero-ambiental?],
  )
)

#v(6pt)

#question-box(
  num: "1.2",
  title: "Criterios e indicadores de éxito a corto y mediano plazo",
  contexto: "Definir qué constituye un resultado satisfactorio permite alinear el trabajo técnico con las expectativas reales de la empresa.",
  preguntas: (
    [¿Qué resultados o señales concretas en un horizonte de 3 a 6 meses le confirmarán a la dirección que la presencia digital está cumpliendo su propósito?],
    [¿Se prioriza el volumen de consultas recibidas, la calidad técnica de las solicitudes, o la percepción de solidez institucional por parte de clientes y entidades contratantes?],
  )
)

#v(6pt)

#question-box(
  num: "1.3",
  title: "Cobertura geográfica y mercado objetivo",
  contexto: "La sede física principal de AMC Solutions se encuentra ubicada en Valledupar (departamento del Cesar).",
  preguntas: (
    [¿El mercado activo de AMC se concentra principalmente en el departamento del Cesar y la Región Caribe, o ejecutan habitualmente proyectos a escala nacional?],
    [En términos de proyección comercial para el próximo año, ¿existe interés en expandir la cobertura geográfica hacia otros distritos o cuencas mineras del país?],
  )
)

#pagebreak()

// ==========================================
// PÁGINA 3: SECCIÓN 2: SERVICIOS Y PRIORIDADES
// ==========================================

= 2. Servicios y Prioridades de Negocio

Esta sección busca distinguir qué componentes del portafolio representan el núcleo productivo y económico de la empresa frente a líneas secundarias o complementarias.

#v(4pt)

#question-box(
  num: "2.1",
  title: "Concentración del portafolio y líneas de mayor facturación",
  contexto: "El sitio web presenta diversas áreas de especialidad técnica (servicios geológicos, ambientales, mineros, topográficos y empresariales).",
  preguntas: (
    [En la práctica comercial cotidiana, ¿cuáles 2 o 3 líneas de servicio representan el mayor volumen de facturación o la mayor carga operativa de AMC (principio 80/20)?],
    [¿Existen servicios listados en el sitio web que hayan sido descontinuados, que se presten de manera marginal o que ya no formen parte de la oferta vigente?],
  )
)

#v(6pt)

#question-box(
  num: "2.2",
  title: "Modalidad de contratación de trámites mineros",
  contexto: "El sitio web cuenta con páginas individuales sobre trámites específicos ante la ANM (RUCOM, liquidación de regalías, formalización minera, Plan de Manejo Ambiental, FBM, entre otros).",
  preguntas: (
    [Los trámites regulatorios y mineros, ¿se contratan habitualmente como servicios puntuales e independientes, o suelen formar parte de contratos marco o asesorías técnicas integrales?],
    [¿Representan estos trámites una puerta de entrada para clientes que posteriormente contratan estudios de mayor envergadura, o constituyen una línea de negocio rentable por sí misma?],
  )
)

#v(6pt)

#question-box(
  num: "2.3",
  title: "Alcance y estado de la línea «Servicios Empresariales»",
  contexto: "En la navegación del sitio web figura una categoría denominada «Servicios Empresariales» cuyo alcance no se encuentra detallado en el contenido observable.",
  preguntas: (
    [¿Qué tipo de servicios contempla esta área dentro del modelo comercial de AMC?],
    [¿Se trata de una línea actualmente activa, un área en estructuración, o una categoría que ya no forma parte del portafolio vigente?],
  )
)

#v(6pt)

#question-box(
  num: "2.4",
  title: "Diferenciadores técnicos y propuesta de valor",
  contexto: "En el sector de consultoría minero-ambiental operan diversos actores locales y nacionales con ofertas normativas similares.",
  preguntas: (
    [¿Cuáles son las principales fortalezas o diferenciales técnicos que reconocen los clientes en AMC frente a otras consultoras del sector?],
    [¿Existen acreditaciones de laboratorio, equipos especializados propios, o experiencia específica con entidades como ANLA, ANM o Corporaciones Autónomas Regionales que constituyan ventajas competitivas destacadas?],
  )
)

#pagebreak()

// ==========================================
// PÁGINA 4: SECCIÓN 3: CLIENTES Y PROCESO COMERCIAL
// ==========================================

= 3. Clientes, Adquisición y Proceso Comercial

Comprender la dinámica de contratación en el sector permite diseñar puntos de contacto ajustados al perfil y comportamiento de los tomadores de decisión.

#v(4pt)

#question-box(
  num: "3.1",
  title: "Perfil de los tomadores de decisión (B2B)",
  contexto: "Los servicios prestados involucran normativas técnicas y regulatorias de alta especificidad jurídica y operativa.",
  preguntas: (
    [¿Quiénes son las contrapartes habituales que contratan los servicios de AMC (titulares de concesión minera, directores ambientales o de operaciones, asesores jurídicos corporativos, o pequeños mineros en proceso de formalización)?],
    [¿Varía el perfil del contratante según la naturaleza del servicio solicitado (por ejemplo, estudios de impacto ambiental frente a trámites de regalías o RUCOM)?],
  )
)

#v(6pt)

#question-box(
  num: "3.2",
  title: "Nivel de conocimiento y madurez técnica del cliente al contactar",
  contexto: "El grado de comprensión previa de los prospectos determina si la comunicación digital debe ser eminentemente técnica o de orientación normativa.",
  preguntas: (
    [Cuando un potencial cliente se comunica por primera vez, ¿suele solicitar un trámite o estudio específico ya definido, o requiere que el equipo técnico evalúe su situación y diagnostique la necesidad normativa?],
    [¿Qué proporción aproximada de prospectos requiere una labor previa de clarificación o estructuración técnica antes de poder emitir una cotización?],
  )
)

#v(6pt)

#question-box(
  num: "3.3",
  title: "Duración y etapas del ciclo comercial",
  contexto: "En servicios de consultoría técnica y regulatoria, los tiempos de maduración de propuestas suelen tener dinámicas particulares.",
  preguntas: (
    [¿Cuánto tiempo transcurre normalmente desde la primera consulta de un prospecto hasta el cierre y formalización de un contrato de servicio?],
    [¿Cuáles son los requisitos habituales que deben cumplirse para formalizar la contratación (revisión de términos de referencia, pólizas, visitas técnicas previas a terreno)?],
  )
)

#v(6pt)

#question-box(
  num: "3.4",
  title: "Registro y atribución del origen de prospectos comerciales",
  contexto: "Conocer las vías efectivas de llegada de clientes permite evaluar qué papel juegan los canales actuales frente a otros medios de captación.",
  preguntas: (
    [¿Cómo llegan habitualmente los clientes actuales a AMC (referencias comerciales, licitaciones privadas, gremios sectoriales, o búsquedas en internet)?],
    [Cuando ingresa una solicitud por teléfono o correo, ¿se cuenta con algún método o protocolo para registrar cómo conoció el cliente a la empresa?],
  )
)

#pagebreak()

// ==========================================
// PÁGINA 5: SECCIÓN 4: PRESENCIA DIGITAL Y CANALES
// ==========================================

= 4. Presencia Digital, Canales y Contenidos

Esta sección examina cómo interactúan los prospectos con los canales de atención de AMC y qué materiales de apoyo utiliza la empresa en su gestión comercial.

#v(4pt)

#question-box(
  num: "4.1",
  title: "Atención y gestión de canales de contacto directo",
  contexto: "La información de contacto en el sitio web expone tres números celulares, un correo electrónico y dirección física en Valledupar.",
  preguntas: (
    [¿Cómo se gestiona internamente la atención de las líneas celulares publicadas (las atienden roles comerciales, ingenieros técnicos o la dirección general)?],
    [Entre las opciones de contacto disponibles, ¿qué medio suelen preferir los potenciales clientes para solicitar presupuestos (llamadas directas, mensajería instantánea, correo electrónico o reuniones presenciales)?],
    [¿Se dispone de horarios de atención definidos o acuerdos de tiempo de respuesta para las consultas recibidas por correo o teléfono?],
  )
)

#v(6pt)

#question-box(
  num: "4.2",
  title: "Gestión de solicitudes sobre trámites específicos y cotizaciones",
  contexto: "Las páginas sobre trámites mineros invitan a cotizar trámites específicos redirigiendo a los canales generales de contacto.",
  preguntas: (
    [¿Reciben habitualmente consultas o solicitudes de cotización específicas sobre estos trámites mineros a través de los canales de la empresa?],
    [Cuando un interesado solicita cotizar un trámite técnico, ¿qué información mínima o documentación previa requiere AMC para poder elaborar un presupuesto formal?],
  )
)

#v(6pt)

#question-box(
  num: "4.3",
  title: "Materiales comerciales de apoyo y difusión digital previa",
  contexto: "El material comercial fuera de la web y los antecedentes de promoción digital aportan contexto indispensable sobre la comunicación de la marca.",
  preguntas: (
    [¿Dispone AMC de presentaciones corporativas, portafolios en PDF, fichas técnicas o credenciales institucionales que se compartan con clientes por fuera del sitio web?],
    [¿Ha realizado la empresa en el pasado acciones de difusión digital pagada (Google Ads, redes sociales o publicaciones del sector) dirigidas al sitio web o a líneas de contacto?],
  )
)

#v(6pt)

#note-box(
  [Conocer si los clientes prefieren canales conversacionales (llamadas o mensajería) o medios formales (correo institucional con pliegos de términos de referencia) resulta indispensable para estructurar puntos de contacto efectivos en el rediseño.],
  title: "Relevancia comercial"
)

#pagebreak()

// ==========================================
// PÁGINA 6: SECCIÓN 5 Y CIERRE
// ==========================================

= 5. Información Técnica y Administrativa

Preguntas acotadas estrictamente a verificar la titularidad de los activos digitales, los mecanismos de mantenimiento técnico y la disponibilidad de datos de medición históricos.

#v(4pt)

#question-box(
  num: "5.1",
  title: "Titularidad, mantenimiento y accesos de la plataforma web",
  contexto: "El sitio web opera sobre WordPress. Es indispensable determinar el esquema actual de administración y propiedad técnica de los activos.",
  preguntas: (
    [¿Quién se encarga actualmente del soporte técnico, administración de hosting, copias de seguridad y actualización del sitio web (personal interno, un desarrollador externo o una agencia previa)?],
    [¿Dispone AMC de credenciales de acceso administrativo propio al panel de WordPress, a la consola de administración del hosting y al proveedor de registro de dominio (DNS)?],
  )
)

#v(6pt)

#question-box(
  num: "5.2",
  title: "Herramientas de medición y registros históricos de clientes",
  contexto: "Conocer la existencia de herramientas previas permite determinar si se dispone de datos históricos de tráfico o comportamiento.",
  preguntas: (
    [¿Cuenta la empresa con alguna propiedad configurada en Google Search Console a nivel de dominio, o acceso a paneles de estadísticas del servidor de hosting?],
    [¿Se utiliza internamente algún sistema de gestión de clientes (CRM), hoja de cálculo o registro estructurado donde se documente el historial de consultas recibidas?],
  )
)

#v(14pt)

= Cierre Metodológico y Próximos Pasos

#block(
  stroke: (left: 3pt + rgb("#0f766e"), rest: 0.5pt + rgb("#cbd5e1")),
  fill: rgb("#f0fdfa"),
  radius: (right: 4pt),
  inset: (x: 12pt, y: 10pt),
  width: 100%,
  breakable: false,
  [
    #text(weight: "bold", size: 9.5pt, fill: rgb("#115e59"))[Uso y aplicación de las respuestas obtenidas]
    #v(4pt)
    #set text(size: 8.8pt, fill: rgb("#134e4a"))
    Las respuestas recopiladas a partir de esta guía de descubrimiento cumplirán un papel instrumental directo en las siguientes fases del proyecto:

    #v(2pt)
    #grid(
      columns: (10pt, 1fr),
      gutter: 4pt,
      align: (left, top),
      text(fill: rgb("#0f766e"), weight: "bold")[1.],
      [Delimitar las líneas prioritarias del portafolio que concentran el valor económico del negocio, asegurando que la arquitectura de información y la estrategia de contenidos reflejen la oferta real de AMC.]
    )
    #v(2pt)
    #grid(
      columns: (10pt, 1fr),
      gutter: 4pt,
      align: (left, top),
      text(fill: rgb("#0f766e"), weight: "bold")[2.],
      [Definir el perfil exacto de los tomadores de decisión (B2B) para orientar el tono de comunicación, la profundidad técnica de los textos y los mecanismos de contacto adecuados para el sector.]
    )
    #v(2pt)
    #grid(
      columns: (10pt, 1fr),
      gutter: 4pt,
      align: (left, top),
      text(fill: rgb("#0f766e"), weight: "bold")[3.],
      [Garantizar el control administrativo y la trazabilidad de métricas sobre la infraestructura digital antes de formular cualquier plan de optimización técnica o posicionamiento orgánico.]
    )
  ]
)
