# Conjunto de Trabajo: Presencia Externa - AMC Solutions Colombia

```yaml
# === ESTADO DE INVESTIGACION (CONFORME A RESEARCH_STATE_SCHEMA.MD) ===
investigation_metadata:
  target_organization: "AMC SOLUTIONS COLOMBIA S.A.S."
  capture_date: "2026-10-08"
  phase: 1
  source_classes_targeted: [1, 2, 3]

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
      discovery_rationale: "Dirección administrativa histórica en directorio mercantil"
    - id: "ANC-007"
      value: "Ledys del Rosario Martínez Lara"
      type: "legal_representative"
      strength: "moderate"
      provenance: "SRC-002"
      discovery_rationale: "Representante legal identificada en informe de rendición de cuentas Uribia 2023"

  rejected: []

candidates:
  - id: "SRC-001"
    candidate_kind: "presence"
    source_class: 3
    source_name: "Portafolio / Informa Colombia"
    url: "https://www.informacolombia.com/"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "historico / no fechado"
    identity_status: "attributed"
    disposition: "admit"
    audit_status: "pending"
    matched_anchors: ["ANC-001", "ANC-002", "ANC-003", "ANC-005"]
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: ["ANC-006"]
    confidence: "high"

  - id: "SRC-002"
    candidate_kind: "presence"
    source_class: 1
    source_name: "Alcaldía Municipal de Uribia, La Guajira"
    url: "https://www.uribia-laguajira.gov.co/"
    capture_date: "2026-10-08"
    source_date: "2023-12-31"
    relevant_period: "vigencia fiscal 2023"
    identity_status: "attributed"
    disposition: "admit"
    audit_status: "pending"
    matched_anchors: ["ANC-002", "ANC-003"]
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: ["ANC-007"]
    confidence: "high"

  - id: "SRC-003"
    candidate_kind: "negative_observation"
    source_class: 2
    source_name: "Google Maps / Búsqueda local Valledupar"
    url: "https://www.google.com/maps"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "2026-10-08"
    identity_status: "not_applicable"
    disposition: "admit"
    audit_status: "pending"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: []
    confidence: "negative_scoped"

  - id: "SRC-004"
    candidate_kind: "negative_observation"
    source_class: 3
    source_name: "LinkedIn"
    url: "https://www.linkedin.com/"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "2026-10-08"
    identity_status: "not_applicable"
    disposition: "admit"
    audit_status: "pending"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: []
    confidence: "negative_scoped"

  - id: "DISC-001"
    candidate_kind: "discard"
    source_class: 3
    source_name: "Datacrédito Empresas / Cámara de Comercio Bogotá"
    url: "https://www.datacreditoempresas.com.co/"
    capture_date: "2026-10-08"
    source_date: null
    relevant_period: "no aplicable"
    identity_status: "discarded"
    disposition: "discard"
    audit_status: "passed"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors: ["tax_id", "city", "industry_sector"]
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
    conflicting_anchors: ["domain", "industry_sector"]
    proposed_anchors: []
    confidence: "high"

search_scope:
  phase: 1
  objective: "identity_resolution"
  source_classes_targeted: [1, 2, 3]
  stopping_conditions:
    - condition: "anchor_sufficiency"
      parameter: "2_high_anchors_confirmed"
      status: "satisfied"
    - condition: "max_results_per_query"
      parameter: 20
      status: "satisfied"
  queries_executed:
    - query: "\"AMC SOLUTIONS COLOMBIA S.A.S.\""
      results_inspected: 12
    - query: "\"901380770\""
      results_inspected: 8
    - query: "\"AMC Solutions\" \"Valledupar\""
      results_inspected: 15
    - query: "site:linkedin.com/company \"AMC Solutions Colombia\""
      results_inspected: 5
```

---

## Metadatos de la Investigacion
- **Organizacion objetivo:** AMC Solutions Colombia (AMC SOLUTIONS COLOMBIA S.A.S.)
- **Fecha de investigacion:** 2026-10-08
- **Clases de fuentes inspeccionadas:** Registros oficiales y gubernamentales (Clase 1), Plataformas locales y mapas (Clase 2), Directorios y agregadores comerciales (Clase 3), Redes profesionales (Clase 3)
- **Limite de parada aplicado:** Consultas booleanas acotadas por anclas clave (`"AMC SOLUTIONS COLOMBIA S.A.S."`, `"901380770"`, `"AMC Solutions" "Valledupar"`, `site:linkedin.com/company "AMC Solutions Colombia"`, `"Amc Solutions S.A.S." "Bogotá"`). Muestra limitada a los primeros 10-20 resultados por consulta; parada tras alcanzar suficiencia de anclas o ausencia reiterada en la clase evaluada.

---

## Identificadores Ancla Verificados (Semilla Canónica)
- **Dominio web:** `amcsolutionscolombia.com`
- **Razon social:** `AMC SOLUTIONS COLOMBIA S.A.S.`
- **Identificacion tributaria / registro:** NIT `901380770` / `901380770-0`
- **Telefonos de contacto:** `+57 3136216458`, `3144138478`, `3152384684`
- **Correos corporativos:** `gerencia@amcsolutionscolombia.com`
- **Ubicacion geografica:** Carrera 19d # 5-50, Local 01, Barrio Arizona, Valledupar, Cesar, Colombia
- **Sector de actividad:** Consultoría técnica en ingeniería minera, formalización minera (ANM/RUCOM), geología y gestión ambiental

---

## Notas de Evaluación de Fuentes (Registro Narrativo de Investigación)

### [SRC-001] Agregadores Comerciales y Directorios Empresariales Nacionales
- **Fuente:** Portafolio / Informa Colombia (agregadores comerciales de datos mercantiles)
- **URLs de referencia:**
  - `https://www.portafolio.co/`
  - `https://www.informacolombia.com/`
- **Fecha de captura:** 2026-10-08
- **Fecha declarada por la fuente:** No declarada explícitamente en el extracto de consulta
- **Clase de fuente:** Clase 3 (Directorios y agregadores comerciales; intermediario comercial, no registro estatutario primario)
- **Estado de identidad:** Confirmada (Atribuida)
- **Identificadores ancla coincidentes:**
  - Anclas de alta fuerza: Razón social (`AMC SOLUTIONS COLOMBIA S.A.S.`), NIT (`901380770` / `901380770-0`).
  - Anclas de moderada fuerza: Localidad (Valledupar, Cesar), números de contacto celular (`3136216458`, `3144138478`, `3152384684`).
- **Verificación de sector:** Consistente (servicios de consultoría e ingeniería minero-ambiental).

#### Observaciones Directas
- La ficha consultada muestra la razón social inscrita **AMC SOLUTIONS COLOMBIA S.A.S.** con NIT **901380770-0** en Valledupar, Cesar.
- La fuente muestra exactamente las tres líneas celulares coincidentes con la web oficial (`3136216458`, `3144138478`, `3152384684`).
- La fuente muestra direcciones administrativas complementarias o históricas en Valledupar: `Carrera 14 # 13 C 60, Edificio Agora, Oficina 308` y `Carrera 14 # 13 B Bis 54, Edificio Perlo, Oficina 106`.

#### Afirmaciones de la Fuente (Claims)
- La fuente afirma que la forma jurídica de la entidad es Sociedad por Acciones Simplificada (S.A.S.).
- La fuente clasifica la actividad económica en servicios de consultoría técnica y minera.

#### Corroboracion
- **Corroboración de identidad:** Razón social y NIT coinciden plenamente con el reporte estatal primario [SRC-002].
- **Consistencia de primera fuente:** Los números celulares y la ciudad de radicación coinciden con los datos declarados en el sitio web de AMC.

#### Evaluacion de Confianza
- **Nivel:** Alta.
- **Justificacion:** Coincidencia de dos anclas de alta fuerza (NIT, razón social) y tres anclas de moderada fuerza (teléfonos directos y ciudad), pese a tratarse de una fuente intermediaria comercial.

#### Preguntas Abiertas
- ¿Las direcciones administrativas de Carrera 14 continúan activas o corresponden a sedes previas al local comercial de Carrera 19d (Arizona)?

---

### [SRC-002] Contratación Pública Territorial — Rendición de Cuentas Alcaldía de Uribia 2023
- **Fuente:** Alcaldía Municipal de Uribia, La Guajira (Informe de Gestión y Rendición de Cuentas 2023)
- **URL de referencia:** `https://www.uribia-laguajira.gov.co/`
- **Fecha de captura:** 2026-10-08
- **Fecha declarada por la fuente:** Vigencia fiscal 2023
- **Clase de fuente:** Clase 1 (Registros oficiales y contratación pública primaria)
- **Estado de identidad:** Confirmada (Atribuida)
- **Identificadores ancla coincidentes:**
  - Anclas de alta fuerza: Razón social (`AMC SOLUTIONS COLOMBIA S.A.S.`), NIT (`901380770-0`).
- **Verificación de sector:** Consistente (fiscalización y control minero: sal, yeso, asfáltita).

#### Observaciones Directas
- El documento oficial de rendición de cuentas muestra la adjudicación del contrato Selección Abreviada de Menor Cuantía Nº 014 de 2023 a nombre de **AMC SOLUTIONS COLOMBIA S.A.S.** con NIT **901380770-0**.
- El objeto contractual registrado muestra: *«Control y seguimiento 2023 del funcionamiento y operación de las empresas y centros de acopio del sector minero en el municipio de Uribia, La Guajira»*.
- El documento muestra cuantía de $198.588.212 COP y registro de representación legal a nombre de Ledys del Rosario Martínez Lara.

#### Afirmaciones de la Fuente (Claims)
- La fuente documenta la adjudicación y contratación de la empresa para el objeto indicado durante la vigencia 2023. La fuente no documenta actas de liquidación o informe final de entrega que acrediten de forma independiente la ejecución física o financiera completa.

#### Corroboracion
- **Corroboración de identidad:** Razón social y NIT son idénticos a los del registro mercantil [SRC-001].
- **Consistencia de primera fuente:** El objeto contractual coincide temáticamente con los servicios de RUCOM y fiscalización minera publicados en el sitio web oficial.

#### Evaluacion de Confianza
- **Nivel:** Alta.
- **Justificacion:** Fuente gubernamental primaria con concordancia exacta en NIT y denominación corporativa.

#### Preguntas Abiertas
- ¿La contratación pública territorial representa una línea de negocio recurrente para la empresa o fue una adjudicación excepcional?
- ¿Existen procesos adicionales adjudicados o en curso en el sistema electrónico SECOP?

---

### [SRC-003] Plataforma Local — Google Maps / Directorios Locales en Valledupar
- **Fuente:** Google Maps / Búsqueda local orgánica
- **URL de referencia:** `https://www.google.com/maps`
- **Fecha de captura:** 2026-10-08
- **Fecha declarada por la fuente:** N/A
- **Clase de fuente:** Clase 2 (Plataformas locales y mapas)
- **Estado de identidad:** Negativa delimitada
- **Identificadores ancla evaluados:** Nombre comercial, ciudad (Valledupar), dirección (Carrera 19d).

#### Observaciones Directas
- En la muestra evaluada de resultados de búsqueda para `"AMC Solutions" "Valledupar"` y consultas en Google Maps, no se observó una ficha comercial verificada o reclamada en Google Business Profile vinculada a `amcsolutionscolombia.com` o a la dirección de Carrera 19d.
- Se observan referencias geográficas agregadas no gestionadas en directorios no verificados de terceros (ej. Maptons), pero ningún perfil institucional reclamado con panel de conocimiento, horarios verificados o reseñas de clientes.

#### Afirmaciones de la Fuente (Claims)
- Ninguna atribuible a un perfil oficial o reclamado en la plataforma.

#### Evaluacion de Confianza
- **Nivel:** Negativa delimitada.
- **Justificacion:** En la muestra de búsqueda examinada a la fecha de captura no se identifica ficha comercial oficial reclamada o verificada.

#### Preguntas Abiertas
- ¿AMC Solutions ha iniciado o completado el proceso de reclamación de perfil en Google Business Profile para su sede en Valledupar?

---

### [SRC-004] Red Profesional Corporativa — LinkedIn
- **Fuente:** LinkedIn
- **URL de referencia:** `https://www.linkedin.com/`
- **Fecha de captura:** 2026-10-08
- **Fecha declarada por la fuente:** N/A
- **Clase de fuente:** Clase 3 (Redes profesionales)
- **Estado de identidad:** Negativa delimitada
- **Identificadores ancla evaluados:** Nombre de empresa (`AMC Solutions Colombia`), dominio (`amcsolutionscolombia.com`), localidad (`Valledupar`).

#### Observaciones Directas
- La consulta estructurada `site:linkedin.com/company "AMC Solutions Colombia" OR ("AMC Solutions" "Valledupar")` no arrojó ninguna página corporativa institucional activa en la muestra evaluada.

#### Afirmaciones de la Fuente (Claims)
- Ninguna atribuible.

#### Evaluacion de Confianza
- **Nivel:** Negativa delimitada.
- **Justificacion:** No se observa presencia de página corporativa oficial en la muestra evaluada a la fecha de consulta.

#### Preguntas Abiertas
- ¿Existen perfiles individuales de directivos o consultores técnicos en LinkedIn vinculados a la empresa que no cuenten con página de empresa asociada?

---

## Descartes de Homonimos y Coincidencias Espurias

### [DISC-001] Amc Solutions S.A.S. (Bogotá, D.C.)
- **Fuente:** Registros mercantiles de la Cámara de Comercio de Bogotá / Datacrédito Empresas
- **URL de referencia:** `https://www.datacreditoempresas.com.co/`
- **Fecha de consulta:** 2026-10-08
- **Criterio de descarte:** Conflicto insubsanable en NIT, radicación geográfica y sector de actividad.
- **Justificacion:**
  - Comparte nombre similar (*Amc Solutions S.A.S.*), pero está matriculada en Bogotá (Calle 74 # 95-13).
  - Opera bajo el código CIIU 7730 (alquiler de maquinaria y equipo comercial general), no en consultoría de ingeniería minera o geología.
  - No coincide en NIT, teléfonos ni dominio web con AMC Solutions Colombia.
- **Decision:** Descartada. No se atribuye ningún registro de esta sociedad a la empresa investigada.

### [DISC-002] Coincidencia Numérica en DeviantArt (`901380770`)
- **Fuente:** Plataforma de arte digital DeviantArt
- **URL de referencia:** `https://www.deviantart.com/`
- **Fecha de consulta:** 2026-10-08
- **Criterio de descarte:** Coincidencia puramente numérica en identificador de URL.
- **Justificacion:** El número de 9 dígitos `901380770` aparece como identificador interno de recurso gráfico en la URL de la plataforma, sin relación ontológica con la persona jurídica colombiana ni con el sector minero.
- **Decision:** Descartada inmediatamente en la etapa de resolución de identidad sin contaminar la investigación.

---

## Sintesis para Formalizacion en `evidence/`
1. **Fuentes confirmadas para formalización:**
   - `[SRC-001]` Ficha en agregador comercial con NIT 901380770-0, 3 celulares coincidentes y sedes de Carrera 14 en Valledupar.
   - `[SRC-002]` Contrato estatal Alcaldía de Uribia 2023 por $198.5M COP adjudicado a NIT 901380770-0.
2. **Hallazgos negativos delimitados:**
   - `[SRC-003]` Ausencia de Google Business Profile verificado o reclamado observable en la muestra de búsqueda local.
   - `[SRC-004]` Ausencia de página corporativa observable en LinkedIn.
3. **Descartes documentados:**
   - Homónimo en Bogotá (`[DISC-001]`) y coincidencia espuria numérica (`[DISC-002]`).
4. **Preguntas abiertas clave para AMC:**
   - Vigencia operativa de sedes en Carrera 14 frente a Carrera 19d.
   - Rol de contratación estatal (SECOP) en la estrategia comercial de la empresa.
   - Estado de reclamación de perfil en Google Business Profile y presencia del equipo en LinkedIn.
