# Plantilla del Conjunto de Trabajo (Research Working Set)

Estructura estandarizada para documentar el conjunto de trabajo de investigacion de presencia externa.

Combina dos capas complementarias:
1. **Bloque de Estado Estructurado (YAML):** Contrato de estado operacional conforme a `references/research_state_schema.md` para coordinacion y control de admisibilidad.
2. **Notas de Evaluación de Fuentes (Registro Narrativo de Investigación):** Detalle descriptivo en Markdown para revision humana y formalizacion posterior en `evidence/`.

---

```markdown
# Conjunto de Trabajo: Presencia Externa - [Nombre de la Organizacion]

```yaml
# === ESTADO OPERACIONAL DE INVESTIGACION (CONFORME A RESEARCH_STATE_SCHEMA.MD) ===
investigation_metadata:
  target_organization: "[Nombre Comercial y Razon Social]"
  capture_date: "[YYYY-MM-DD]"

# --- MAQUINA DE ESTADO 1: IDENTIFICADORES Y BUSQUEDA OPERACIONAL ---
anchor_state:
  active:
    - id: "ANC-001"
      value: "[dominio.com]"
      type: "domain"
      strength: "high"
      provenance: "seed"
    - id: "ANC-002"
      value: "[NIT / ID Tributario]"
      type: "tax_id"
      strength: "high"
      provenance: "seed"
    - id: "ANC-003"
      value: "[Direccion Fisica]"
      type: "street_address"
      strength: "moderate"
      provenance: "seed"
  proposed:
    - id: "ANC-004"
      value: "[Nuevo Identificador Descubierto]"
      type: "[legal_representative | street_address | phone]"
      strength: "[moderate | high]"
      provenance: "SRC-00X"
      discovery_rationale: "[Motivo por el que se propone como ancla de busqueda]"
  rejected: []

# --- MAQUINA DE ESTADO 2: CANDIDATOS Y ADMISIBILIDAD DE EVIDENCIA ---
candidates:
  - id: "SRC-001"
    candidate_kind: "presence"   # presence | negative_observation | discard
    source_class: 3
    source_name: "[Nombre de la Fuente / Directorio]"
    url: "[URL]"
    capture_date: "[YYYY-MM-DD]"
    source_date: null
    relevant_period: "[vigencia fiscal 2023 | actual 2026 | historico no fechado]"
    identity_status: "attributed" # attributed | ambiguous | discarded | not_applicable
    disposition: "admit"         # admit | hold | discard
    audit_status: "pending"      # pending | passed | failed
    matched_anchors: ["ANC-001", "ANC-002"]
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: ["ANC-004"]
    confidence: "high"

  - id: "SRC-003"
    candidate_kind: "negative_observation"
    source_class: 2
    source_name: "[Plataforma o Directorio Inspeccionado]"
    url: "[URL]"
    capture_date: "[YYYY-MM-DD]"
    source_date: null
    relevant_period: "[actual 2026]"
    identity_status: "not_applicable"
    disposition: "admit"
    audit_status: "pending"
    matched_anchors: []
    missing_anchors: []
    conflicting_anchors: []
    proposed_anchors: []
    confidence: "negative_scoped"

# --- ALCANCE Y CONDICIONES DE PARADA VINCULADAS AL OBJETIVO ---
search_scope:
  phase: 1
  objective: "identity_resolution" # identity_resolution | presence_coverage | activity_attribution | serp_boundary_exhaustion
  source_classes_targeted: [1, 3]
  stopping_conditions:
    - condition: "anchor_sufficiency"
      parameter: "2_high_anchors_confirmed"
      status: "satisfied"
    - condition: "max_results_per_query"
      parameter: 20
      status: "satisfied"
  queries_executed:
    - query: "\"[Cadena booleana]\""
      results_inspected: 10
```

---

## 1. Identificadores Ancla Activos (Operacionales para Búsqueda)
- **Dominio web:** `[dominio.com]` (ANC-001)
- **Razon social:** `[Denominacion Legal S.A.S. / S.A.]`
- **Identificacion tributaria / registro:** `[NIT / RFC / CIF / NIF]` (ANC-002)
- **Telefonos de contacto:** `[+XX XXX XXXXXXX]`
- **Correos corporativos:** `[contacto@dominio.com]`
- **Ubicacion geografica:** `[Ciudad, Region, Pais]`
- **Sector de actividad:** `[Sector economico principal]`

---

## 2. Notas de Evaluación de Fuentes (Registro Narrativo de Investigación)

### [SRC-001] [Nombre de la Fuente / Titulo del Registro]
- **Tipo de candidato:** Presencia atribuible (presence)
- **Fuente:** [Nombre de la plataforma o entidad emisora]
- **URL de referencia:** `[URL]`
- **Fecha de captura:** [YYYY-MM-DD]
- **Fecha declarada por la fuente:** [YYYY-MM-DD o No declarada]
- **Periodo relevante:** [Vigencia fiscal 2023 | 2026 | Historico / no fechado]
- **Clase de fuente:** [Clase 1: Registro oficial | Clase 2: Plataforma local | Clase 3: Directorio comercial | Clase 4: Medios]
- **Estado de identidad:** Confirmada (Atribuida)
- **Disposicion del investigador:** Admitida para auditoria (admit)
- **Estado de auditoria:** Pendiente (pending) | Aprobada (passed) | Rechazada (failed)
- **Identificadores ancla coincidentes:** [ANC-001, ANC-002]

#### Observaciones Directas
- [Hecho directamente observable en la pagina inspeccionada]

#### Afirmaciones de la Fuente (Claims)
- [Informacion atribuida o afirmada por la fuente sin verificacion primaria]

#### Corroboracion
- **Tipo de corroboracion:** [Identidad | Atributos | Consistencia de primera fuente | Externa independiente | Ninguna]
- **Referencias:** [SRC-xxx]

#### Evaluacion de Confianza
- **Nivel:** [Alta | Media | Baja | Negativa delimitada]
- **Justificacion:** [Basada en identificadores coincidentes y tipo de fuente]

#### Preguntas Abiertas
- [Dudas, discrepancias o vacios de informacion detectados en esta fuente]

---

### [SRC-003] [Plataforma Inspeccionada - Observación Negativa Delimitada]
- **Tipo de candidato:** Observación negativa (negative_observation)
- **Fuente:** [Nombre de la plataforma inspeccionada]
- **URL de referencia:** `[URL]`
- **Fecha de captura:** [YYYY-MM-DD]
- **Periodo relevante:** [Fecha de consulta]
- **Clase de fuente:** [Clase 2: Plataforma local | Clase 3: Red profesional]
- **Estado de identidad:** No aplicable (no se observa entidad)
- **Disposicion del investigador:** Admitida para auditoria (admit)
- **Estado de auditoria:** Pendiente (pending)

#### Observaciones Directas
- [Delimitación exacta de la muestra consultada y ausencia de ficha comercial/oficial observada]

---

## 3. Candidatos Ambiguos en Retencion (Hold)

### [SRC-00X] [Nombre del Candidato Ambiguo]
- **Fuente:** [Plataforma consultada]
- **URL de referencia:** `[URL]`
- **Periodo relevante:** [Indeterminado | Periodo especifico]
- **Estado de identidad:** Ambigua
- **Disposicion:** Retenido en estado (Hold)
- **Estado de auditoria:** N/A (no admitido para formalizacion)
- **Anclas coincidentes:** [ANC-xxx]
- **Anclas faltantes para resolucion:** [tax_id, domain, etc.]
- **Pregunta abierta / hipotesis:** [Que dato se requiere para atribuir o descartar]

---

## 4. Descartes de Homonimos y Coincidencias Espurias (Discard)

### [DISC-001] [Nombre de la Entidad Homonima]
- **Tipo de candidato:** Descarte de homónimo (discard)
- **Fuente:** [Plataforma consultada]
- **URL de referencia:** `[URL]`
- **Criterio de descarte:** [Conflicto en NIT, ubicacion geografica o sector de actividad]
- **Justificacion:** [Por que no corresponde a la organizacion objetivo]
- **Estado de auditoria:** Pendiente (pending) | Aprobada (passed)

---

## 5. Sintesis para Formalizacion en evidence/
- **Candidatos elegibles para formalización en evidence/ (disposition == admit AND audit_status == passed):** [SRC-001, SRC-002, SRC-003, ...]
- **Descartes confirmados por auditoría (disposition == discard AND audit_status == passed):** [DISC-001, DISC-002]
- **Candidatos en revisión de auditoría (audit_status: pending):** [SRC-xxx]
- **Hallazgos negativos delimitados:** [Plataformas sin perfil observado bajo la muestra evaluada]
- **Preguntas abiertas prioritarias para el cliente:** [Lista consolidada de preguntas clave]
```
