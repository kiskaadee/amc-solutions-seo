# Conjunto de Trabajo: Presencia Externa — AMC Solutions Colombia

```yaml
# === ESTADO OPERACIONAL DE INVESTIGACIÓN (CONFORME A RESEARCH_STATE_SCHEMA.MD) ===
investigation_metadata:
  target_organization: "AMC SOLUTIONS COLOMBIA S.A.S."
  capture_date: "2026-10-08"

# --- MÁQUINA DE ESTADO 1: IDENTIFICADORES Y BÚSQUEDA OPERACIONAL ---
anchor_state:
  active:
    - id: "ANC-001"
      value: "amcsolutionscolombia.com"
      type: "domain"
      strength: "high"
      provenance: "seed"
    - id: "ANC-002"
      value: "901380770"
      type: "tax_id"
      strength: "high"
      provenance: "seed"
    - id: "ANC-003"
      value: "AMC SOLUTIONS COLOMBIA S.A.S."
      type: "legal_name"
      strength: "high"
      provenance: "seed"
    - id: "ANC-004"
      value: "Carrera 19d # 5-50, Local 01, Barrio Arizona, Valledupar"
      type: "street_address"
      strength: "moderate"
      provenance: "seed"
    - id: "ANC-005"
      value: "+57 3136216458, 3144138478, 3152384684"
      type: "phone"
      strength: "moderate"
      provenance: "seed"

  proposed:
    - id: "ANC-006"
      value: "Carrera 14 # 13 C 60, Edificio Ágora, Of. 308, Valledupar"
      type: "street_address"
      strength: "moderate"
      provenance: "SRC-001"
      discovery_rationale: "Dirección administrativa / histórica registrada en directorios mercantiles nacionales"
    - id: "ANC-007"
      value: "Ledys del Rosario Martínez Lara"
      type: "legal_representative"
      strength: "moderate"
      provenance: "SRC-002"
      discovery_rationale: "Representante legal identificada en contrato y rendición de cuentas Uribia 2023"

  rejected: []

# --- MÁQUINA DE ESTADO 2: CANDIDATOS Y ADMISIBILIDAD DE EVIDENCIA ---
candidates:
  - id: "SRC-001"
    candidate_kind: "presence"
    source_class: 3
    source_name: "Portafolio.co / eInforma Colombia"
    url: "https://empresas.portafolio.co/AMC-SOLUTIONS-COLOMBIA-SAS.html"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "historico / no fechado"
    identity_status: "attributed"
    disposition: "admit"
    audit_status: "passed"
    matched_anchors:
      - "ANC-002"
      - "ANC-003"
      - "ANC-005"
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors:
      - "ANC-006"
    confidence: "high"

  - id: "SRC-002"
    candidate_kind: "presence"
    source_class: 1
    source_name: "Alcaldía Municipal de Uribia, La Guajira"
    url: "https://www.uribia-laguajira.gov.co/Conectividad/RendiciondeCuentas/INFORME%20DE%20GESTI%C3%93N%20%E2%80%93%20RENDICI%C3%93N%20DE%20CUENTAS%202023.pdf"
    capture_date: "2026-10-08"
    source_date: "2023-12-31"
    relevant_period: "vigencia fiscal 2023"
    identity_status: "attributed"
    disposition: "admit"
    audit_status: "passed"
    matched_anchors:
      - "ANC-002"
      - "ANC-003"
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors:
      - "ANC-007"
    confidence: "high"

  - id: "SRC-003"
    candidate_kind: "presence"
    source_class: 1
    source_name: "Departamento Administrativo de la Función Pública (SIGEP)"
    url: "https://www.funcionpublica.gov.co/dafpIndexerBHV/hvSigep/detallarHV/S2360517-8062-5"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "historico 2020-04-28 a 2021-04-28"
    identity_status: "ambiguous"
    disposition: "hold"
    audit_status: "passed"
    matched_anchors:
      - "ANC-003"
    missing_anchors:
      - "tax_id"
      - "street_address"
    conflicting_anchors: []
    proposed_anchors: []
    confidence: "medium"

  - id: "SRC-004"
    candidate_kind: "negative_observation"
    source_class: 2
    source_name: "Google Maps / Búsqueda local Valledupar"
    url: "https://www.google.com/maps"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "2026-10-08"
    identity_status: "not_applicable"
    disposition: "admit"
    audit_status: "passed"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: []
    confidence: "negative_scoped"

  - id: "SRC-005"
    candidate_kind: "negative_observation"
    source_class: 3
    source_name: "LinkedIn"
    url: "https://www.linkedin.com/"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "2026-10-08"
    identity_status: "not_applicable"
    disposition: "admit"
    audit_status: "passed"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: []
    confidence: "negative_scoped"

  - id: "SRC-006"
    candidate_kind: "negative_observation"
    source_class: 3
    source_name: "Redes Sociales Abiertas (Facebook, Instagram, X)"
    url: "https://www.facebook.com/"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "2026-10-08"
    identity_status: "not_applicable"
    disposition: "admit"
    audit_status: "passed"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: []
    confidence: "negative_scoped"

  - id: "SRC-007"
    candidate_kind: "presence"
    source_class: 4
    source_name: "YouTube"
    url: "https://www.youtube.com/watch?v=wm_2QLYIpVk"
    capture_date: "2026-10-08"
    source_date: "2025-01-03"
    relevant_period: "2025-01-03"
    identity_status: "ambiguous"
    disposition: "hold"
    audit_status: "passed"
    matched_anchors:
      - "ANC-003"
    missing_anchors:
      - "domain"
      - "tax_id"
      - "phone"
      - "street_address"
    conflicting_anchors: []
    proposed_anchors: []
    confidence: "low"

  - id: "DISC-001"
    candidate_kind: "discard"
    source_class: 3
    source_name: "Informa Colombia / Datacrédito Empresas"
    url: "https://www.informacolombia.com/directorio-empresas/informacion-empresa/amc-solutions-sas"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "no aplicable"
    identity_status: "discarded"
    disposition: "discard"
    audit_status: "passed"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors:
      - "city"
      - "industry_sector"
    proposed_anchors: []
    confidence: "high"

  - id: "DISC-002"
    candidate_kind: "discard"
    source_class: 4
    source_name: "DeviantArt"
    url: "https://www.deviantart.com/"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "no aplicable"
    identity_status: "discarded"
    disposition: "discard"
    audit_status: "passed"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors:
      - "domain"
      - "industry_sector"
    proposed_anchors: []
    confidence: "high"

  - id: "DISC-003"
    candidate_kind: "discard"
    source_class: 4
    source_name: "Scribd"
    url: "https://es.scribd.com/document/469683933/BASE-DATOS-COMERCIO-VALLEDUPAR-xlsx"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "no aplicable"
    identity_status: "discarded"
    disposition: "discard"
    audit_status: "passed"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors:
      - "legal_name"
    proposed_anchors: []
    confidence: "high"

# --- ALCANCE Y CONDICIONES DE PARADA VINCULADAS AL OBJETIVO ---
search_scope:
  phase: 2
  objective: "presence_coverage"
  source_classes_targeted: [1, 2, 3, 4]
  stopping_conditions:
    - condition: "anchor_sufficiency"
      parameter: "2_high_anchors_confirmed"
      status: "satisfied"
    - condition: "max_results_per_query"
      parameter: 20
      status: "satisfied"
    - condition: "diminishing_returns"
      parameter: "3_consecutive_queries_without_new_domain"
      status: "satisfied"
    - condition: "disambiguation_ceiling"
      parameter: "hold_on_missing_moderate_anchors"
      status: "satisfied"
  queries_executed:
    - query: "\"AMC SOLUTIONS COLOMBIA\""
      results_inspected: 12
    - query: "\"901380770\""
      results_inspected: 1
    - query: "\"901380770\" Valledupar"
      results_inspected: 5
    - query: "site:uribia-laguajira.gov.co \"AMC SOLUTIONS\""
      results_inspected: 2
    - query: "site:uribia-laguajira.gov.co \"Selección Abreviada de Menor Cuantía Nº 014 de 2023\""
      results_inspected: 2
    - query: "site:secop.gov.co \"901380770\" OR \"AMC SOLUTIONS COLOMBIA\""
      results_inspected: 0
    - query: "site:colombiacompra.gov.co \"901380770\""
      results_inspected: 0
    - query: "site:gov.co \"AMC SOLUTIONS COLOMBIA\""
      results_inspected: 8
    - query: "site:informacolombia.com \"AMC SOLUTIONS\""
      results_inspected: 4
    - query: "\"amcsolutionscolombia.com\" -site:amcsolutionscolombia.com"
      results_inspected: 4
    - query: "site:linkedin.com/company \"AMC Solutions Colombia\" OR \"AMC Solutions\" \"Valledupar\""
      results_inspected: 10
    - query: "\"AMC Solutions\" \"Valledupar\" site:google.com/maps OR inurl:maps"
      results_inspected: 4
    - query: "\"AMC Solutions Colombia\" site:google.com/maps"
      results_inspected: 7
    - query: "site:facebook.com \"AMC Solutions Colombia\" OR \"amcsolutionscolombia\""
      results_inspected: 0
    - query: "site:instagram.com \"AMC Solutions Colombia\" OR \"amcsolutionscolombia\""
      results_inspected: 0
    - query: "site:x.com \"AMC Solutions Colombia\" OR site:twitter.com \"AMC Solutions Colombia\""
      results_inspected: 0
    - query: "\"AMC Solutions\" Valledupar bing maps"
      results_inspected: 4
    - query: "site:computrabajo.com.co \"AMC SOLUTIONS\" OR site:elempleo.com \"AMC SOLUTIONS\""
      results_inspected: 0
    - query: "site:rues.org.co \"AMC SOLUTIONS COLOMBIA\" OR \"901380770\""
      results_inspected: 0
    - query: "site:anm.gov.co \"AMC SOLUTIONS\" OR \"901380770\""
      results_inspected: 0
    - query: "site:corpocesar.gov.co \"AMC SOLUTIONS\" OR \"901380770\""
      results_inspected: 0
    - query: "site:valledupar-cesar.gov.co \"AMC SOLUTIONS\" OR \"901380770\""
      results_inspected: 0
    - query: "site:cesar.gov.co \"AMC SOLUTIONS\" OR \"901380770\""
      results_inspected: 0
    - query: "site:laguajira.gov.co \"AMC SOLUTIONS\" OR \"901380770\""
      results_inspected: 0
    - query: "\"3136216458\" OR \"3144138478\" OR \"3152384684\""
      results_inspected: 5
```

---

## 1. Identificadores Ancla Activos (Operacionales para Búsqueda)

- **Dominio web oficial (ANC-001):** `amcsolutionscolombia.com` (Fuerza: Alta | Proveniencia: Semilla).
- **Número de Identificación Tributaria (ANC-002):** `901380770` / `901380770-0` (Fuerza: Alta | Proveniencia: Semilla).
- **Razón social legal (ANC-003):** `AMC SOLUTIONS COLOMBIA S.A.S.` (Fuerza: Alta | Proveniencia: Semilla).
- **Dirección física declarada (ANC-004):** `Carrera 19d # 5-50, Local 01, Barrio Arizona, Valledupar, Cesar` (Fuerza: Moderada | Proveniencia: Semilla).
- **Teléfonos de contacto verificados (ANC-005):** `+57 3136216458`, `3144138478`, `3152384684` (Fuerza: Moderada | Proveniencia: Semilla).

### Identificadores Ancla Propuestos (Pendientes de Validación Operativa)
- **Dirección administrativa histórica (ANC-006):** `Carrera 14 # 13 C 60, Edificio Ágora, Of. 308, Valledupar` (Fuerza: Moderada | Proveniencia: SRC-001).
- **Representante legal identificada (ANC-007):** `Ledys del Rosario Martínez Lara` (Fuerza: Moderada | Proveniencia: SRC-002).

---

## 2. Notas de Evaluación de Fuentes (Registro Narrativo de Investigación)

### [SRC-001] Agregadores Comerciales y Directorios Empresariales Nacionales
- **Tipo de candidato:** Presencia atribuible (`presence`)
- **Fuente:** Portafolio.co / eInforma Colombia (agregadores mercantiles de datos empresariales)
- **URLs de referencia:**
  - `https://empresas.portafolio.co/AMC-SOLUTIONS-COLOMBIA-SAS.html`
  - `https://directorio-empresas.einforma.co/informacion-empresa/amc-solutions-colombia-sas`
- **Fecha de captura:** 2026-10-08
- **Fecha declarada por la fuente:** No declarada explícitamente (ficha continua sindicada)
- **Periodo relevante:** Histórico / no fechado (con proyecciones financieras modeladas 2023–2025)
- **Clase de fuente:** Clase 3 (Directorios y agregadores comerciales; intermediario de datos mercantiles)
- **Estado de identidad:** Confirmada (Atribuida)
- **Disposición del investigador:** Admitida para formalización (`admit`)
- **Estado de auditoría:** Aprobada (`passed`)
- **Identificadores ancla coincidentes:**
  - Alta fuerza: Razón social (`AMC SOLUTIONS COLOMBIA S.A.S.`, ANC-003), NIT (`9013807700` equivalente a `901380770-0`, ANC-002).
  - Moderada fuerza: Teléfono directo (`3144138478`, ANC-005), radicación en Valledupar, Cesar.
- **Anclas propuestas emitidas:** `ANC-006` (Carrera 14 # 13 C 60, Edificio Ágora, Of. 308).

#### Observaciones Directas
- La ficha consultada muestra la razón social inscrita **Amc Solutions Colombia S A S** con **NIT 9013807700** y domicilio en Valledupar, Cesar.
- Muestra el número telefónico **3144138478**, coincidente con una de las tres líneas celulares publicadas en la portada y página de contacto de la web corporativa.
- Muestra la dirección `CARRERA 14 13 C 60 ED AGORA OF 308` en Valledupar, Cesar.

#### Afirmaciones de la Fuente (Claims)
- La fuente clasifica la actividad bajo el código CIIU 4663 (*«Comercio al por mayor de materiales de construcción, artículos de ferretería, pinturas, productos de vidrio, equipo y materiales de fontanería y calefacción»*).
- Afirma que la forma jurídica de la entidad es Sociedad por Acciones Simplificada.
- Presenta estimaciones financieras no auditadas: patrimonio neto de \$114.679.986 COP y rango de ventas entre \$1.000M y \$2.000M COP.

#### Corroboración
- **Corroboración de identidad:** Razón social y NIT coinciden plenamente con el reporte estatal primario [SRC-002].
- **Consistencia de atributos:** El número telefónico y la ciudad de radicación coinciden con los datos verificados en el sitio web de AMC.

#### Evaluación de Confianza
- **Nivel:** Alta.
- **Justificación:** Coincidencia estricta de dos anclas de alta fuerza (NIT y razón social) y un ancla de moderada fuerza (teléfono exacto), además de coherencia geográfica.

#### Incertidumbre Operativa / Preguntas Abiertas
- ¿La dirección de Carrera 14 # 13 C 60 (Edificio Ágora) corresponde a una sede administrativa previa al local comercial de Carrera 19d (Barrio Arizona) o continúa operando como sede secundaria?

---

### [SRC-002] Contratación Pública Territorial — Rendición de Cuentas Alcaldía de Uribia 2023
- **Tipo de candidato:** Presencia atribuible (`presence`)
- **Fuente:** Alcaldía Municipal de Uribia, La Guajira (Informe de Gestión y Rendición de Cuentas 2023)
- **URL de referencia:** `https://www.uribia-laguajira.gov.co/Conectividad/RendiciondeCuentas/INFORME%20DE%20GESTI%C3%93N%20%E2%80%93%20RENDICI%C3%93N%20DE%20CUENTAS%202023.pdf` (páginas 122–123)
- **Fecha de captura:** 2026-10-08
- **Fecha declarada por la fuente:** 2023-12-31
- **Periodo relevante:** Vigencia fiscal 2023 (ejecución contractual: 04 de octubre de 2023 al 31 de diciembre de 2023)
- **Clase de fuente:** Clase 1 (Registros oficiales y contratación pública estatal primaria)
- **Estado de identidad:** Confirmada (Atribuida)
- **Disposición del investigador:** Admitida para formalización (`admit`)
- **Estado de auditoría:** Aprobada (`passed`)
- **Identificadores ancla coincidentes:**
  - Alta fuerza: Razón social (`AMC SOLUTIONS COLOMBIA S.A.S.`, ANC-003), NIT (`901380770-0`, ANC-002).
- **Anclas propuestas emitidas:** `ANC-007` (Ledys del Rosario Martínez Lara, Representante Legal).

#### Observaciones Directas
- En las páginas 122 y 123 del informe oficial figura textualmente: *«CONTRATO DERIVADO DE LA SELECCIÓN ABREVIADA DE MENOR CUANTÍA Nº 014 DE 2023, SUSCRITO ENTRE EL MUNICIPIO DE URIBIA Y LEDYS DEL ROSARIO MARTINEZ LARA, REPRESENTANTE LEGAL DE AMC SOLUTIONS COLOMBIA S.A.S CON NIT: 901380770-0»*.
- **Objeto:** *«Control y seguimiento 2023 del funcionamiento y operación de las empresas y centros de acopio del sector minero en el municipio de Uribia. La Guajira»*.
- **Valor:** Ciento noventa y ocho millones quinientos ochenta y ocho mil doscientos doce pesos (\$198.588.212) m/l, con cargo al presupuesto de la vigencia 2023.
- **Plazo:** Dos (2) meses y veintiocho (28) días. Fechas registradas: del 04 de octubre de 2023 al 31 de diciembre de 2023.
- **Acciones y beneficiarios registrados:** Visitas de seguimiento a 8 unidades productivas mineras y 25 centros de acopio ubicados en zona rural de Uribia y en el km 1 vía Uribia–Manaure, aplicando listas de chequeo técnico, jurídico, ambiental y de seguridad minera, formulando planes de mejoramiento enfocados en la contención de la extracción ilícita de minerales.

#### Afirmaciones de la Fuente (Claims)
- La fuente documenta la suscripción, alcance operativo programado e impacto social perseguido para la vigencia 2023. El documento no incluye actas de liquidación final independiente en este extracto.

#### Corroboración
- **Corroboración de identidad:** Razón social y NIT idénticos a los del registro mercantil [SRC-001].
- **Consistencia de primera fuente:** El objeto contractual es temáticamente coincidente con los servicios de RUCOM, fiscalización minera y asesoría ambiental publicados en el sitio web de AMC.

#### Evaluación de Confianza
- **Nivel:** Alta.
- **Justificación:** Documento oficial gubernamental primario con concordancia exacta en dos anclas de alta fuerza (NIT y denominación legal completa).

#### Incertidumbre Operativa / Preguntas Abiertas
- ¿La contratación estatal territorial representa una línea comercial activa y recurrente para la empresa o respondió a un proyecto coyuntural en 2023?
- ¿El representante legal registrado en 2023 (`ANC-007`) continúa en ejercicio del cargo?

---

### [SRC-003] Registro Oficial de Hoja de Vida — SIGEP Función Pública
- **Tipo de candidato:** Presencia identificada retenida (`presence`)
- **Fuente:** Departamento Administrativo de la Función Pública — SIGEP (Directorio de Servidores Públicos)
- **URL de referencia:** `https://www.funcionpublica.gov.co/dafpIndexerBHV/hvSigep/detallarHV/S2360517-8062-5`
- **Fecha de captura:** 2026-10-08
- **Fecha declarada por la fuente:** Registro continuo institucional de servidores públicos
- **Periodo relevante:** Histórico (28/04/2020 a 28/04/2021)
- **Clase de fuente:** Clase 1 (Registro oficial gubernamental nacional)
- **Estado de identidad:** Ambigua (`ambiguous`)
- **Disposición del investigador:** Retenida en conjunto de trabajo (`hold`)
- **Estado de auditoría:** Aprobada en retención (`passed`)
- **Identificadores ancla coincidentes:**
  - Alta fuerza: Razón social (`AMC SOLUTIONS COLOMBIA S.A.S.`, ANC-003).
- **Anclas faltantes para atribución definitiva:** `tax_id` (NIT no visible en tabla de experiencia de SIGEP), `street_address` (dirección física de la empresa no desplegada).

#### Observaciones Directas
- En la hoja de vida pública del Ingeniero de Minas Jose Jorge Brochero Herrera (nacido en Valledupar, Cesar), figura un registro de experiencia laboral en la entidad **AMC SOLUTIONS COLOMBIA S.A.S** en el cargo de **INGENIERO DE MINAS**, con fecha de inicio `28/04/2020` y fecha de finalización `28/04/2021`.
- La misma hoja de vida documenta trayectoria profesional en la Corporación Autónoma Regional del Cesar (Corpocesar) y en la Agencia Nacional de Minería (ANM).

#### Afirmaciones de la Fuente (Claims)
- Declaración juramentada del titular en la plataforma oficial del Estado colombiano.

#### Disciplina de Atribución y Preservación de Incertidumbre
- Aunque existe coincidencia exacta en la denominación societaria (S.A.S.), coherencia sectorial (ingeniería de minas) y procedencia geográfica del profesional (Valledupar), el sistema SIGEP no expone en esta vista el NIT de las empresas empleadoras privadas.
- Conforme a `references/identity_resolution.md`, un nombre corporativo aislado no es suficiente para formalizar atribución plena sin un segundo ancla independiente. Se retiene en estado operativo (`hold`) y se documenta como pregunta de verificación.

---

### [SRC-004] Plataformas Locales y Cartográficas — Google Maps / Valledupar
- **Tipo de candidato:** Observación negativa delimitada (`negative_observation`)
- **Fuente:** Google Maps / Búsqueda local orgánica
- **URL de referencia:** `https://www.google.com/maps`
- **Fecha de captura:** 2026-10-08
- **Periodo relevante:** 2026-10-08
- **Clase de fuente:** Clase 2 (Plataformas locales y cartográficas)
- **Estado de identidad:** No aplicable (`not_applicable`)
- **Disposición del investigador:** Admitida para formalización (`admit`)
- **Estado de auditoría:** Aprobada (`passed`)
- **Identificadores ancla evaluados:** Nombre comercial, ciudad (Valledupar), dirección (Carrera 19d).

#### Observaciones Directas
- En la muestra evaluada de resultados de búsqueda para `"AMC Solutions" "Valledupar"`, `"AMC Solutions Colombia"` y consultas de dirección en Google Maps, **no se observó una ficha comercial verificada o reclamada en Google Business Profile** vinculada a `amcsolutionscolombia.com` ni a la sede de Carrera 19d.
- No se observa panel de conocimiento institucional (*Knowledge Panel*), categorías comerciales locales activas, horarios comprobados ni reseñas de clientes en la plataforma.
- Se observan referencias indexadas en agregadores cartográficos no gestionados (ej. Maptons), pero el recurso bloquea consultas automatizadas (código HTTP 403) y no constituye presencia institucional controlada.

#### Evaluación de Confianza
- **Nivel:** Negativa delimitada (`negative_scoped`).

---

### [SRC-005] Red Profesional Corporativa — LinkedIn
- **Tipo de candidato:** Observación negativa delimitada (`negative_observation`)
- **Fuente:** LinkedIn
- **URL de referencia:** `https://www.linkedin.com/`
- **Fecha de captura:** 2026-10-08
- **Periodo relevante:** 2026-10-08
- **Clase de fuente:** Clase 3 (Redes profesionales)
- **Estado de identidad:** No aplicable (`not_applicable`)
- **Disposición del investigador:** Admitida para formalización (`admit`)
- **Estado de auditoría:** Aprobada (`passed`)

#### Observaciones Directas
- En la muestra evaluada de consultas estructuradas `site:linkedin.com/company "AMC Solutions Colombia"` y combinaciones con `Valledupar`, **no se observó ninguna página corporativa institucional activa** (`linkedin.com/company/`) asociada a la empresa.
- En la inspección previa del sitio web (`OBS-009`, `OBS-010`) tampoco se observaron enlaces salientes hacia LinkedIn.

#### Evaluación de Confianza
- **Nivel:** Negativa delimitada (`negative_scoped`).

---

### [SRC-006] Redes Sociales Abiertas — Facebook, Instagram, X (Twitter)
- **Tipo de candidato:** Observación negativa delimitada (`negative_observation`)
- **Fuente:** Facebook / Instagram / X
- **URLs de referencia:** `https://www.facebook.com/`, `https://www.instagram.com/`, `https://x.com/`
- **Fecha de captura:** 2026-10-08
- **Periodo relevante:** 2026-10-08
- **Clase de fuente:** Clase 3 (Plataformas sociales públicas)
- **Estado de identidad:** No aplicable (`not_applicable`)
- **Disposición del investigador:** Admitida para formalización (`admit`)
- **Estado de auditoría:** Aprobada (`passed`)

#### Observaciones Directas
- En la muestra evaluada mediante consultas orientadas por dominio (`site:facebook.com "amcsolutionscolombia"`, `site:instagram.com "amcsolutionscolombia"`, `site:x.com "amcsolutionscolombia"`) y denominación comercial de la empresa, **no se observaron páginas institucionales verificadas, cuentas oficiales ni perfiles públicos activos** atribuibles a la empresa.

#### Evaluación de Confianza
- **Nivel:** Negativa delimitada (`negative_scoped`).

---

## 3. Candidatos Ambiguos en Retención (Hold)

### [SRC-007] Canal y Video en YouTube — Topografía con Drones
- **Fuente:** YouTube
- **URL de referencia:** `https://www.youtube.com/watch?v=wm_2QLYIpVk` (Canal: `https://www.youtube.com/@amcsolutionscolombia5796`, ID: `UCjkY99bDaAkU0Vc3ceNcn9w`)
- **Fecha de captura:** 2026-10-08
- **Fecha de publicación:** 2025-01-03
- **Periodo relevante:** 2025-01-03
- **Estado de identidad:** Ambigua (`ambiguous`)
- **Disposición:** Retenido en conjunto de trabajo (`hold`)
- **Estado de auditoría:** Aprobada en retención (`passed`)
- **Anclas coincidentes:** Razón social / nombre comercial (`AMC SOLUTIONS COLOMBIA`, ANC-003). Consistencia temática en línea de servicio (topografía con drones).
- **Anclas faltantes para resolución:** Dominio web (`domain`), NIT (`tax_id`), teléfono (`phone`) o dirección (`street_address`).
- **Observaciones directas:**
  - Canal creado bajo el identificador `@amcsolutionscolombia5796` con nombre visible "AMC SOLUTIONS COLOMBIA".
  - Publicó un único video el 03 de enero de 2025 titulado: *«AMC SOLUTIONS COLOMBIA, Topografía Drones en Colombia.»*, con 7 reproducciones registradas.
  - La descripción del video y la pestaña de información del canal se encuentran vacías; no muestran enlaces al sitio web, teléfonos ni datos de radicación.
- **Incertidumbre / Justificación de retención:** Existe concordancia nominal y afinidad temática con los servicios de fotogrametría y topografía que AMC ofrece en su web, pero carece de un segundo ancla moderado o fuerte que permita confirmar la autoría institucional. Se mantiene en retención y no se promueve a evidencia formal.

---

## 4. Descartes de Homónimos y Coincidencias Espurias (Discard)

### [DISC-001] Amc Solutions S.A.S. (Bogotá, D.C.)
- **Fuente:** Registros mercantiles nacionales / Informa Colombia
- **URL de referencia:** `https://www.informacolombia.com/directorio-empresas/informacion-empresa/amc-solutions-sas`
- **Fecha de captura:** 2026-10-08
- **Criterio de descarte:** Conflicto en radicación geográfica, número de contacto y sector de actividad económica.
- **Observaciones directas:** Ficha mercantil registra a la sociedad "Amc Solutions S A S" domiciliada en BOGOTÁ D C, con número telefónico `3102869228` y actividad declarada bajo el código CIIU 7730 (*«Alquiler y arrendamiento de otros tipos de maquinaria, equipo y bienes tangibles n.c.p.»*).
- **Justificación:** Entidad radicada en Bogotá, con contacto no coincidente con las líneas de AMC Solutions y dedicada a alquiler de maquinaria general, no a consultoría de ingeniería minera o ambiental.
- **Estado de auditoría:** Aprobada (`passed`).

### [DISC-002] Coincidencia Numérica en DeviantArt (`901380770`)
- **Fuente:** Plataforma de arte digital DeviantArt
- **URL de referencia:** `https://www.deviantart.com/`
- **Fecha de captura:** 2026-10-08
- **Criterio de descarte:** Coincidencia puramente numérica en identificador de URL.
- **Observaciones directas:** El número de 9 dígitos `901380770` aparece como un parámetro identificador de recurso gráfico interno en la URL de la plataforma artística.
- **Justificación:** Coincidencia sintáctica espuria sin relación jurídica, institucional ni sectorial con la empresa colombiana.
- **Estado de auditoría:** Aprobada (`passed`).

### [DISC-003] Coincidencia Sintáctica en Documento Scribd (Valledupar)
- **Fuente:** Plataforma documental Scribd
- **URL de referencia:** `https://es.scribd.com/document/469683933/BASE-DATOS-COMERCIO-VALLEDUPAR-xlsx`
- **Fecha de captura:** 2026-10-08
- **Criterio de descarte:** Falso positivo originado por snippet de motor de búsqueda.
- **Observaciones directas:** La inspección directa del texto completo del archivo (`BASE DATOS COMERCIO VALLEDUPAR.xlsx`) constató que la sociedad **AMC SOLUTIONS COLOMBIA S.A.S.** y su NIT **901380770** no existen dentro del documento. La concordancia en el snippet de búsqueda provino de fragmentos de clases de estilos CSS (`AMCRxk`, `AmclfkDFWAYk...`).
- **Justificación:** Se descarta la fuente tras verificar que el contenido subyacente no contiene información atribuible a la entidad.
- **Estado de auditoría:** Aprobada (`passed`).

---

## 5. Síntesis para Formalización en evidence/external/

- **Candidatos elegibles para formalización en `evidence/external/` (`disposition == "admit"` AND `audit_status == "passed"`):**
  1. `SRC-001` (Directorio comercial eInforma / Portafolio con NIT 901380770-0, teléfono 3144138478 y sede Carrera 14).
  2. `SRC-002` (Contrato estatal Selección Abreviada Nº 014 de 2023 en Alcaldía de Uribia por \$198.5M COP).
  3. `SRC-004` (Observación negativa delimitada: ausencia de Google Business Profile reclamado en muestra de búsqueda local).
  4. `SRC-005` (Observación negativa delimitada: ausencia de página corporativa activa en LinkedIn).
  5. `SRC-006` (Observación negativa delimitada: ausencia de perfiles oficiales en redes sociales abiertas evaluadas).

- **Candidatos retenidos en conjunto de trabajo (`disposition: hold`):**
  1. `SRC-003` (Registro SIGEP de experiencia laboral en minería en 2020-2021; retenido por carecer de NIT explícito en la vista pública).
  2. `SRC-007` (Canal de YouTube @amcsolutionscolombia5796 con video de topografía con drones; retenido por ausencia de anclas de contacto directas).

- **Descartes confirmados por auditoría (`disposition: discard` AND `audit_status: passed`):**
  1. `DISC-001` (Homónimo en Bogotá en alquiler de maquinaria).
  2. `DISC-002` (Parámetro de URL en DeviantArt).
  3. `DISC-003` (Falso positivo de CSS en documento de Scribd).
