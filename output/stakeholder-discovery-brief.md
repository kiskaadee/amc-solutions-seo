---
communication:
  audience:
    role: "Representantes de AMC Solutions (Dirección General, Operaciones y Comercial)"
    technical_level: "non_technical"
    domain_familiarity: "high"
    project_familiarity: "low"
    decision_authority: "strategic"

  artifact_mode: "meeting_brief"

  immediate_goal:
    type: "inform"
    objective: "Establecer una base fáctica compartida sobre la presencia digital pública de AMC Solutions, delimitar las incertidumbres que la investigación externa no puede resolver y preparar la agenda temática previa a la reunión de descubrimiento."

  project_goal:
    objective: "Construir un entendimiento certero de la operación, prioridades comerciales y canales de AMC para fundamentar cualquier propuesta posterior de arquitectura web y posicionamiento."

  desired_action:
    - "Revisión previa por parte del equipo directivo de AMC antes de la reunión de descubrimiento."
    - "Aclaración sobre prioridades comerciales, canales habituales de atención, sedes operativas y dinámica de contratación."

  source_inputs:
    - "OBS-001 a OBS-005 (Plataforma WordPress, cabeceras técnicas, sitemaps y analítica)"
    - "OBS-006 a OBS-009 (Estructura de portada, jerarquía de encabezados y canales de contacto)"
    - "OBS-010 a OBS-012 (Páginas interiores de servicios y datos de contacto)"
    - "OBS-013 a OBS-015 (Páginas de trámites mineros de la ANM y llamados a la acción)"
    - "OBS-016 (Registro mercantil y directorios empresariales nacionales)"
    - "OBS-017 (Contratación pública territorial: informe de gestión Uribia 2023)"
    - "OBS-018 a OBS-020 (Observaciones negativas delimitadas en Google Maps, LinkedIn y redes sociales)"

  constraints:
    language: "es"
    length: "medium"
    technical_depth: "minimal"
---

# AMC Solutions — Documento de Descubrimiento Inicial

---

## Parte 1: Propósito y Panorama Inicial

Este documento resume los resultados más relevantes obtenidos durante la exploración externa de la presencia digital de AMC Solutions Colombia. Su propósito es establecer una base informativa común entre AMC y el equipo consultor antes de una primera reunión de trabajo.

La exploración examinó dos ámbitos observables públicamente:

1. **El sitio web institucional (`amcsolutionscolombia.com`):** su estructura de páginas, presentación de servicios, mecanismos visibles de contacto y configuración técnica básica.
2. **La presencia externa en internet:** registros mercantiles colombianos, antecedentes de contratación pública estatal, plataformas cartográficas y redes profesionales.

El objetivo de este levantamiento no es presentar un informe de auditoría, evaluar el rendimiento comercial de la empresa ni proponer soluciones técnicas anticipadas. Antes de plantear cambios en diseño, contenidos o posicionamiento en buscadores, es indispensable contrastar lo que es visible desde el exterior con la realidad operativa que solo la empresa conoce.

### Panorama general observado

La investigación externa permite identificar los siguientes elementos principales:

- **Estructura web activa con dos enfoques de contenido:** el sitio web opera sobre WordPress y presenta dos modelos diferenciados: por un lado, cinco páginas de servicios generales presentadas mediante listas esquemáticas; por el otro, nueve páginas dedicadas a trámites y normativas del sector minero colombiano con explicaciones desarrolladas y referencias legales.
- **Canales de contacto expuestos como texto plano:** los números telefónicos, el correo electrónico y la dirección física se presentan como texto estático, sin formularios interactivos ni enlaces de marcación o mensajería directa en las páginas inspeccionadas.
- **Información mercantil publicada y contratación pública documentada:** los directorios comerciales Portafolio y eInforma publican una ficha de AMC Solutions Colombia S.A.S. en Valledupar. Un informe oficial de la Alcaldía de Uribia documenta un contrato de fiscalización minera de 2023 y describe su objeto y alcance.
- **Baja visibilidad en plataformas externas:** en las muestras evaluadas de búsqueda pública no se identificaron fichas verificadas en Google Maps para la sede local ni páginas corporativas institucionales activas en LinkedIn o redes sociales abiertas.

---

## Parte 2: Hallazgos

### 1. Servicios y canales de contacto

#### Estructura y presentación del portafolio
El sitio web alberga dos conjuntos de páginas de contenido técnico accesibles desde la portada:

- **Páginas generales de servicios:** bajo la sección de servicios se identificaron cinco páginas (`/servicios-ambientales/`, `/servicios-de-topografia/`, `/servicios-geologicos/`, `/servicios-mineros/` y `/servicios-empresariales/`). Cuatro de ellas contienen únicamente un título y una lista de nombres de servicios (entre 5 y 15 conceptos por página), sin párrafos explicativos, imágenes descriptivas ni llamados a solicitar cotización. La página de servicios empresariales no contiene texto ni listados en su sección principal.
- **Páginas de trámites mineros:** se identificaron nueve páginas dedicadas a trámites y figuras regulatorias de la Agencia Nacional de Minería (ANM) y el Servicio Geológico Colombiano (SGC), tales como RUCOM, liquidación de regalías, formalización minera y Formato Básico Minero. Estas páginas presentan textos explicativos con citas normativas específicas (Leyes 685 de 2001 y 2250 de 2022, resoluciones de la ANM).

*Lo que esto establece:* la empresa cuenta con contenidos informativos detallados para trámites mineros específicos, mientras que las grandes líneas de servicio operan como esquemas de términos técnicos.

*Límites de la observación:* la observación no determina cuáles de estos servicios representan las líneas de mayor facturación o prioridad comercial para AMC hoy, ni si la falta de contenido en servicios empresariales corresponde a una sección en desarrollo o a una línea descontinuada.

#### Mecanismos de contacto y cotización
- En la portada y en la página `/contacto/`, los datos de contacto corresponden a tres números de teléfono móvil, una dirección de correo electrónico corporativo y una dirección física en el Barrio Arizona de Valledupar. Todos estos datos se presentan exclusivamente en texto plano.
- En el código fuente de las páginas inspeccionadas no se encontraron enlaces directos de llamada (`tel:`), enlaces directos de correo (`mailto:`), botones de enlace a WhatsApp ni formularios de contacto web (el único formulario presente en la página corresponde al buscador interno de la plantilla).
- En cuatro de las nueve páginas de trámites mineros existen enlaces de texto que invitan al usuario a cotizar (*«Cotizar aquí su trámite»*, *«Haga su cotización aquí!»*), los cuales dirigen a la página `/contacto/`.

*Lo que esto establece:* cualquier visitante que desee comunicarse con AMC desde el sitio web debe transcribir manualmente los números telefónicos o copiar la dirección de correo. Quienes siguen los enlaces de cotización desde las páginas de trámites llegan a una página de contacto general que no incluye un formulario específico para describir el trámite de interés.

*Límites de la observación:* no es posible establecer desde el exterior si este esquema responde a una preferencia operativa de la empresa por recibir llamadas directas, si el flujo habitual de clientes llega por canales externos no vinculados a la web, o si los usuarios experimentan dificultades para completar el contacto.

---

### 2. Señales técnicas en el sitio web

#### Plataforma y arquitectura base
- El sitio web responde sobre servidor Apache y lenguaje PHP 8.2, operando bajo la plataforma WordPress 7.1.3 con el tema visual "Blogus".
- El archivo de control de rastreo (`robots.txt`) y el mapa del sitio (`/sitemap.xml`) están activos y exponen los índices estándar generados automáticamente por WordPress.

*Lo que esto establece:* en el sitio inspeccionado se detectó WordPress 7.1.3 con el tema Blogus, sobre servidor Apache y PHP 8.2.

#### Metadatos y visibilidad para motores de búsqueda
- En las páginas evaluadas se identificó la etiqueta de enlace canónico (que indica a los motores de búsqueda la dirección preferida de cada página).
- En el código HTML de la portada, de las páginas de servicios y de las páginas de trámites inspeccionadas, no se encontraron etiquetas de descripción para buscadores (`meta description`), etiquetas para previsualización en redes sociales (OpenGraph o Twitter Cards) ni datos estructurados de organización o servicios locales (formato JSON-LD).

*Lo que esto establece:* la inspección no encontró esas descripciones ni etiquetas de previsualización en el HTML examinado. En su ausencia, los buscadores o plataformas podrían generar fragmentos a partir del contenido disponible; esta inspección no comprobó cómo se presentan los enlaces en cada plataforma.

*Límites de la observación:* la ausencia de estas etiquetas en el código HTML no indica el volumen de tráfico que recibe el sitio ni su posición en resultados de búsqueda para consultas particulares.

#### Medición y analítica web
- En las dieciséis páginas examinadas no se detectaron scripts de analítica web del lado del navegador (tales como Google Analytics, Google Tag Manager o etiquetas de plataformas publicitarias).

*Lo que esto establece:* la inspección del HTML de las páginas examinadas no detectó scripts relevantes de analítica del lado del navegador.

*Límites de la observación:* esta inspección se limita a los scripts cargados en las páginas visibles. No descarta la existencia de herramientas de medición configuradas a nivel de dominio en Google Search Console, estadísticas de visitas en el servidor de alojamiento o registros históricos previos.

---

### 3. Presencia observable externamente

#### Información mercantil publicada y contratación estatal documentada
- **Registro mercantil:** directorios comerciales colombianos (Portafolio y eInforma) registran a `AMC SOLUTIONS COLOMBIA S.A.S.` con NIT `901380770-0`, domicilio en Valledupar y número telefónico coincidente con una de las líneas publicadas en el sitio web. En dicho registro figura la dirección `Carrera 14 # 13 C 60, Edificio Ágora, Oficina 308`, una ubicación distinta a la sede de `Carrera 19d # 5-50 (Barrio Arizona)` declarada en la página de contacto actual.
- **Contratación pública territorial:** en el informe oficial de Rendición de Cuentas 2023 del Municipio de Uribia (La Guajira) consta la contratación de AMC Solutions Colombia S.A.S. mediante Selección Abreviada de Menor Cuantía Nº 014 de 2023 por un valor de \$198.588.212 COP. El contrato tuvo por objeto el control y seguimiento técnico, ambiental y jurídico de 8 unidades productivas mineras y 25 centros de acopio durante el último trimestre de 2023.

*Lo que esto establece:* Portafolio y eInforma publican una ficha comercial con la razón social, el NIT y datos de ubicación y contacto de AMC Solutions Colombia S.A.S. Por separado, el informe oficial de Uribia documenta un contrato de 2023, su objeto y el seguimiento reportado a 8 unidades productivas mineras y 25 centros de acopio.

*Límites de la observación:* el antecedente de Uribia corresponde a la vigencia fiscal 2023; la evidencia documental no permite afirmar si la contratación pública estatal constituye hoy una línea comercial continua o si correspondió a una ejecución puntual. La diferencia entre las dos direcciones requiere confirmación; la información disponible no permite determinar si corresponde a un cambio de sede, a oficinas distintas o a otra circunstancia.

#### Presencia en plataformas y directorios públicos
- **Plataformas de mapas y búsqueda local:** en la muestra evaluada de consultas en Google Maps y motores de búsqueda para Valledupar, no se observó una ficha comercial verificada o reclamada en Google Business Profile vinculada a AMC Solutions o a su dirección de Barrio Arizona.
- **Redes profesionales y corporativas:** en las consultas realizadas sobre el índice público de LinkedIn, no se identificó una página de empresa institucional activa (`linkedin.com/company/`) bajo el nombre de la compañía.
- **Redes sociales abiertas:** en las búsquedas orientadas a Facebook, Instagram y X (Twitter), no se encontraron perfiles corporativos oficiales activos asociados al dominio o a la denominación de la empresa.

*Lo que esto establece:* en las muestras públicas examinadas no se identificaron fichas o perfiles institucionales activos atribuibles a AMC en Google Maps, LinkedIn, Facebook, Instagram o X. La observación se limita a esas consultas y plataformas.

*Límites de la observación:* estas observaciones corresponden a las muestras públicas indexadas en la fecha de consulta. No descartan trámites de verificación postal en curso, fichas no indexadas, perfiles personales de directivos en redes profesionales ni canales privados de mensajería comercial.

#### Referencias externas no confirmadas
- Se identificó un canal en YouTube (`@amcsolutionscolombia5796`) con un video de topografía con drones publicado en enero de 2025 que utiliza la denominación de la empresa. Sin embargo, no incluye enlaces al dominio web, números telefónicos ni datos de contacto que permitan confirmar con certeza su autoría institucional.
- Se identificaron menciones en registros públicos de hojas de vida del sector estatal (SIGEP) correspondientes a profesionales con experiencia laboral previa en la empresa en 2020–2021, sin exhibir el NIT de la compañía en la vista pública.

*Lo que esto establece:* estas referencias presentan afinidad temática pero carecen de elementos de contacto suficientes para atribuirse formalmente sin validación de la empresa.

---

## Parte 3: Preguntas y Discusión

Las siguientes cuatro preguntas sintetizan las principales dudas que la investigación externa no puede resolver por sí sola. Sus respuestas permitirán orientar el trabajo posterior hacia las necesidades reales de AMC:

### 1. Prioridades comerciales y oferta activa de servicios
En el sitio web coexisten cinco áreas de servicios generales (con descripciones esquemáticas) y nueve páginas detalladas sobre trámites mineros específicos ante la ANM.

> **Para la operación actual de AMC:**  
> ¿Cuáles son hoy las dos o tres líneas de servicio que concentran la mayor actividad y facturación de la empresa, y cuál es la situación real de la línea de servicios empresariales (cuya página web figura sin contenido)?

*Por qué importa:* permite comprender qué servicios deben tener prioridad en cualquier análisis posterior de contenidos y arquitectura web.

---

### 2. Canales habituales de contacto y flujo de clientes
La información de contacto en la web se encuentra en texto plano sin formularios interactivos, y los enlaces de cotización en las páginas de trámites dirigen a esos mismos números y correos generales.

> **En el día a día comercial:**  
> ¿Cómo llegan y se gestionan habitualmente las consultas de nuevos clientes (llamadas directas a los celulares, mensajes por WhatsApp personal o corporativo, correos electrónicos, reuniones presenciales o referencias directas)?

*Por qué importa:* permite diseñar puntos de contacto en el sitio web que respeten la forma en que el equipo comercial atiende y cierra acuerdos, evitando imponer herramientas que no se utilicen en la práctica.

---

### 3. Perfil de clientes y peso de la contratación pública
    El informe oficial de Uribia documenta un contrato de 2023 cuyo objeto fue el control y seguimiento del funcionamiento y operación de empresas y centros de acopio del sector minero en el municipio. Al mismo tiempo, las páginas de trámites mineros se dirigen a requerimientos de titulares y comercializadores privados.

> **En la composición de su cartera de clientes:**  
> ¿Qué peso tiene la contratación con alcaldías o gobernaciones frente a la asesoría a empresas y titulares mineros privados, y qué perfil profesional suele tomar la decisión de contratar a AMC (gerentes de operaciones, directores ambientales, abogados o propietarios mineros)?

*Por qué importa:* define el tono de comunicación, los argumentos técnicos y la información institucional necesaria para generar confianza en quien efectivamente decide la contratación.

---

### 4. Sedes de atención y localización en Valledupar
Los registros mercantiles registran una oficina en la Carrera 14 (Edificio Ágora), mientras que el sitio web actual indica una sede en la Carrera 19d (Barrio Arizona). Además, no se observa una ficha verificada en Google Maps para la empresa.

> **Respecto a la atención presencial e institucional:**  
> ¿Cuál es actualmente la sede principal de trabajo y atención a clientes en Valledupar, y cómo acostumbran los clientes o entidades de la región ubicar físicamente las oficinas de AMC?

*Por qué importa:* permite unificar la información pública de la empresa en internet y asegurar que quienes buscan los servicios en Valledupar encuentren la ubicación y los canales de atención correctos.

---

### Próximo paso propuesto

Revisar y contrastar estos puntos de forma conjunta en una sesión de descubrimiento con los representantes de AMC Solutions. A partir de sus respuestas, se definirá el alcance y las prioridades de cualquier propuesta posterior de arquitectura web, contenidos y estrategia de presencia digital.
