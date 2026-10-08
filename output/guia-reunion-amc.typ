// Guía de Conversación — Descubrimiento Estratégico
// AMC Solutions Colombia — Instrumento de Reunión
// Proyecto: amc-solutions-seo

#set document(
  title: "Guía de Conversación de Descubrimiento — AMC Solutions",
  author: "Equipo de Estrategia y Consultoría Digital",
  date: datetime(year: 2026, month: 10, day: 8),
)

// Configuración general de página
#set page(
  paper: "a4",
  margin: (top: 1.8cm, bottom: 1.7cm, left: 2.1cm, right: 2.1cm),
  header: context {
    grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 8.1pt, fill: rgb("#475569"), weight: "bold")[
        AMC SOLUTIONS COLOMBIA — SESIÓN DE DESCUBRIMIENTO ESTRATÉGICO
      ],
      text(size: 8.1pt, fill: rgb("#64748b"))[
        GUÍA DE CONVERSACIÓN (45–60 MIN)
      ]
    )
    v(-4pt)
    line(length: 100%, stroke: 0.5pt + rgb("#cbd5e1"))
  },
  footer: context {
    line(length: 100%, stroke: 0.5pt + rgb("#e2e8f0"))
    v(1.5pt)
    grid(
      columns: (1fr, auto),
      align: (left, right),
      text(size: 8pt, fill: rgb("#64748b"))[
        Instrumento de facilitación comercial y estratégica · Proyecto: `amc-solutions-seo`
      ],
      text(size: 8pt, fill: rgb("#64748b"))[
        Página #counter(page).display("1") de #counter(page).final().first()
      ]
    )
  }
)

#set text(
  font: "Inter",
  size: 8.9pt,
  fill: rgb("#0f172a"),
  lang: "es",
  spacing: 102%,
)

#set par(
  justify: true,
  leading: 0.52em,
)

// Helper de componente para cada momento conversacional
#let prompt-card(
  num: "",
  eje: "",
  pregunta: "",
  seguimiento: ()
) = block(
  stroke: (left: 3pt + rgb("#2563eb"), rest: 0.5pt + rgb("#e2e8f0")),
  fill: rgb("#f8fafc"),
  radius: (right: 4pt),
  inset: (x: 9.5pt, y: 5.5pt),
  width: 100%,
  breakable: false,
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 6pt,
      align: (left, center),
      box(
        fill: rgb("#dbeafe"),
        radius: 3pt,
        inset: (x: 4.5pt, y: 1.5pt),
        text(weight: "bold", size: 7.8pt, fill: rgb("#1d4ed8"))[Tema #num]
      ),
      text(weight: "bold", size: 8.6pt, fill: rgb("#334155"))[#eje]
    )
    #v(2.5pt)
    #text(size: 9.2pt, weight: "semibold", fill: rgb("#0f172a"))[«#pregunta»]
    #if seguimiento.len() > 0 [
      #v(2.5pt)
      #text(size: 7.9pt, fill: rgb("#64748b"), weight: "medium")[_Profundizar solo si no surge de forma espontánea:_]
      #v(1.5pt)
      #set text(size: 8.3pt, fill: rgb("#334155"))
      #for s in seguimiento [
        #grid(
          columns: (8pt, 1fr),
          gutter: 3pt,
          align: (left, top),
          text(fill: rgb("#3b82f6"), weight: "bold")[•],
          [#s]
        )
        #v(1pt)
      ]
    ]
  ]
)

// ==========================================
// PÁGINA 1: EJES 1 A 5 (NEGOCIO, CLIENTES Y ESTRATEGIA)
// ==========================================

#v(2pt)
#grid(
  columns: (1fr, 42%),
  gutter: 10pt,
  align: (left, top),
  [
    #text(size: 13.5pt, weight: "bold", fill: rgb("#0f172a"))[
      Guía de Conversación: Descubrimiento
    ]
    #v(1.5pt)
    #text(size: 8.3pt, fill: rgb("#475569"))[
      Entrevista abierta para comprender la realidad operativa, comercial y estratégica de AMC Solutions Colombia.
    ]
  ],
  [
    #block(
      fill: rgb("#f1f5f9"),
      stroke: 0.5pt + rgb("#cbd5e1"),
      radius: 4pt,
      inset: (x: 7pt, y: 5pt),
      [
        #text(size: 7.7pt, fill: rgb("#334155"))[
          *Criterio de facilitación:* Plantear cada pregunta abierta y escuchar. Usar las viñetas de seguimiento solo si es necesario clarificar. Evitar jerga técnica.
        ]
      ]
    )
  ]
)

#v(5pt)

#prompt-card(
  num: "1",
  eje: "Entender AMC hoy y su trabajo representativo",
  pregunta: "¿Cómo describirían hoy a AMC y el tipo de trabajo que más representa a la empresa?",
  seguimiento: (
    [¿Cuáles servicios o líneas son realmente los más importantes en volumen y facturación?],
    [¿Hay algo publicado hoy en la página web que ya no represente lo que hacen o que esté descontinuado?],
  )
)

#v(4.5pt)

#prompt-card(
  num: "2",
  eje: "Perfil de clientes y motivo de contacto",
  pregunta: "¿Qué tipo de empresas o personas suelen llegar a ustedes y qué problema normalmente vienen buscando resolver?",
  seguimiento: (
    [¿Quién suele tomar la decisión de contratar (titular minero, director ambiental, área jurídica, gerencia general)?],
    [¿Llegan sabiendo con exactitud el trámite que necesitan, o requieren que AMC diagnostique su situación normativa?],
  )
)

#v(4.5pt)

#prompt-card(
  num: "3",
  eje: "El viaje real del cliente (Caso concreto)",
  pregunta: "Pensando en un cliente reciente que haya sido un buen negocio para ustedes: ¿cómo llegó a AMC y qué pasó desde el primer contacto hasta que se concretó el trabajo?",
  seguimiento: (
    [Si llegó por recomendación o referencia: ¿qué necesitó ver o conversar después de esa llamada para decidirse a contratar?],
    [¿Cuánto tiempo transcurrió aproximadamente entre esa primera llamada y el inicio formal del servicio?],
  )
)

#v(4.5pt)

#prompt-card(
  num: "4",
  eje: "Diferenciación y motivos de elección",
  pregunta: "Cuando un cliente los compara con otra empresa o consultora del sector, ¿por qué termina escogiendo a AMC?",
  seguimiento: (
    [¿Qué valoran más: experiencia previa, conocimiento normativo/regional, cercanía territorial en Cesar, rapidez o capacidad operativa?],
  )
)

#v(4.5pt)

#prompt-card(
  num: "5",
  eje: "Visión de crecimiento y prioridades comerciales",
  pregunta: "Si pensamos en el próximo año, ¿qué les gustaría que creciera o cambiara en el negocio de AMC?",
  seguimiento: (
    [¿Hay algún servicio, tipo de cliente o zona geográfica que quieran desarrollar o consolidar especialmente?],
  )
)

#pagebreak()

// ==========================================
// PÁGINA 2: EJES 6 A 10 (CANALES, OPERACIÓN Y ÉXITO)
// ==========================================

#v(2pt)

#prompt-card(
  num: "6",
  eje: "Rol actual de los canales digitales",
  pregunta: "¿Qué papel cumple actualmente la página web y las redes dentro de cómo consiguen o respaldan negocios?",
  seguimiento: (
    [¿Llegan consultas directas por búsquedas en internet, o la página opera principalmente como respaldo institucional ante clientes que ya los conocen?],
    [Cuando alguien llama o escribe, ¿tienen forma de saber si los encontró en internet o por referencia directa?],
  )
)

#v(4.5pt)

#prompt-card(
  num: "7",
  eje: "Dinámica de contacto y atención comercial",
  pregunta: "Cuando alguien llega interesado en un servicio o trámite, ¿cómo suele continuar la conversación con ustedes?",
  seguimiento: (
    [¿Qué medio suelen preferir los clientes: llamada telefónica directa, WhatsApp, correo formal o reunión presencial?],
    [¿Quién atiende habitualmente ese primer contacto dentro de la empresa?],
    [¿Qué información básica necesitan recibir para poder preparar una cotización o propuesta técnica?],
  )
)

#v(4.5pt)

#prompt-card(
  num: "8",
  eje: "Materiales comerciales de apoyo existentes",
  pregunta: "Cuando tienen que presentarle AMC a un cliente nuevo fuera de la web, ¿qué le muestran?",
  seguimiento: (
    [¿Utilizan presentaciones corporativas, portafolios en PDF, fichas técnicas, fotografías de campo, certificaciones o documentos de proyectos anteriores?],
  )
)

#v(4.5pt)

#prompt-card(
  num: "9",
  eje: "Iniciativas y experiencias previas en digital",
  pregunta: "¿Han hecho antes alguna iniciativa para atraer clientes por internet o fortalecer la presencia digital? ¿Qué ocurrió?",
  seguimiento: (
    [¿Han probado publicidad pagada (Google Ads, redes sociales), rediseños previos o artículos en medios del sector?],
    [¿Qué aprendizajes o resultados obtuvieron de esas iniciativas?],
  )
)

#v(4.5pt)

#prompt-card(
  num: "10",
  eje: "Criterio de éxito de la inversión",
  pregunta: "Si nosotros hacemos bien este trabajo y dentro de seis meses ustedes dicen «valió la pena», ¿qué tendría que haber pasado?",
  seguimiento: (
    [¿Qué tendría que quedar diferente en el negocio o en la operación para que la dirección considere que fue una inversión exitosa?],
  )
)

#v(6pt)

#block(
  stroke: (left: 3pt + rgb("#0f766e"), rest: 0.5pt + rgb("#cbd5e1")),
  fill: rgb("#f0fdfa"),
  radius: (right: 4pt),
  inset: (x: 9pt, y: 6pt),
  width: 100%,
  breakable: false,
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 5pt,
      text(weight: "bold", size: 8.2pt, fill: rgb("#0f766e"))[Nota de facilitación:],
      text(weight: "bold", size: 8.2pt, fill: rgb("#115e59"))[Separación de temas técnicos y de infraestructura]
    )
    #v(2pt)
    #text(size: 7.9pt, fill: rgb("#134e4a"))[
      Las preguntas sobre titularidad de hosting, accesos a WordPress, gestión de dominios (DNS), Google Search Console y registros históricos de analítica *no forman parte de esta reunión estratégica*. Esos requerimientos se recopilan mediante el _Checklist de Onboarding Técnico_ directamente con la persona o proveedor encargado del soporte web.
    ]
  ]
)
