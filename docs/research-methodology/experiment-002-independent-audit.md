# Experimento 002: Auditoría Epistémica Independiente, Reingreso y Costura de Comunicación

- **Fecha:** 2026-10-08
- **Estado:** Exitoso (Validación material de la arquitectura)
- **Alcance:** Ejecución de auditoría adversarial con subagente aislado, detección de discrepancias epistémicas, protocolo de reingreso y costura de integración con `communicate_findings`.

---

## 1. Objetivo del Experimento

Evaluar si una instancia de auditoría epistémica independiente (subagente aislado `evidence_auditor`) es capaz de:
1. Detectar discrepancias de fondo que superan la validación puramente mecánica del esquema.
2. Demover candidatos no conformes mediante la máquina de estados (`AuditFailed` -> `WorkerHold`).
3. Someter al investigador a un protocolo de reingreso con saneamiento empírico real.
4. Entregar hallazgos auditados e incertidumbres delimitadas a la habilidad `communicate_findings` sin inducir sesgos o falsas dicotomías en la formulación de preguntas hacia el cliente.

---

## 2. Ejecución y Dictamen del Auditor Independiente

Se instanció el subagente `evidence_auditor` (conversación `24fe89b7`) con herramientas de solo lectura y directrices adversariales basadas en las 7 reglas epistémicas.

### El Hito Central: Reprobación de `DISC-001`
El arnés mecánico de pruebas (`test_adversarial_contract.py`) había aprobado a `DISC-001` simplemente verificando que `conflicting_anchors` contenía elementos.

El auditor independiente **reprobó a `DISC-001`** y lo degradó a `hold`:
- **Defecto detectado:** La estructura declaraba `tax_id` en `conflicting_anchors`, pero el texto de `direct_observations` no documentaba ningún NIT en conflicto. La aserción del metadato carecía de sustento empírico en la observación.
- **Defecto de procedencia:** Se había utilizado la URL raíz genérica en lugar del localizador profundo de la ficha.

```text
metadata:
  conflicting_anchors:
    - tax_id
direct_observations:
  # NIT en conflicto no registrado empíricamente
       │
       ▼
Auditor independiente: REPROBADO (democión a hold)
```

Este desacuerdo demostró de forma empírica la distinción entre **validez de esquema** (cumplimiento de tipos) y **validez epistémica** (respaldo empírico contrastable).

### Resultados de los Candidatos Auditados
- `SRC-001` (Informa Colombia): **`passed`** (`eligible_for_evidence`). Umbral de identidad verificado (2 altas, 1 moderada). Claims CIIU aislados.
- `SRC-002` (Uribia 2023): **`passed`** (`eligible_for_evidence`). URL profunda en PDF verificada. Distinción entre adjudicación y liquidación respetada.
- `SRC-003` (Google Maps): **`passed`** (`eligible_for_evidence`). Observación negativa delimitada a la muestra SERP.
- `SRC-004` (LinkedIn): **`passed`** (`eligible_for_evidence`). Observación negativa delimitada a consulta SERP.
- `DISC-001` (Homónimo Bogotá): **`failed`** -> Demovido a `hold`.
- `DISC-002` (DeviantArt): **`passed`** (`confirmed_discard`). Descarte ontológico confirmado.

---

## 3. Protocolo de Saneamiento y Reingreso de `DISC-001`

El investigador ejecutó una remediación empírica real en lugar de una corrección cosmética:
1. Inspeccionó el recurso subyacente y obtuvo la URL profunda:  
   `https://www.informacolombia.com/empresas/amc-solutions-s-a-s-en-bogota-d-c`
2. Constató que el portal no expone el NIT en su extracto público gratuito. Por tanto, eliminó `tax_id` de `conflicting_anchors` para evitar aseveraciones no probadas.
3. Fundamentó el descarte de forma irrefutable en 4 anclas observables en conflicto:
   - Domicilio: Bogotá, D.C. vs. Valledupar (`city`).
   - Sede física: Calle 74 # 95-13 vs. Carrera 19d # 5-50 (`street_address`).
   - Actividad: CIIU 7730 (alquiler de maquinaria y bienes tangibles) vs. consultoría minero-ambiental (`industry_sector`).
   - Teléfono: 310 286 9228 vs. líneas corporativas (`phone`).
4. Reingresó el candidato a `audit_status: pending` -> Auditoría validada como `confirmed_discard`.

---

## 4. Nuevo Fixture de Regresión Adversarial (Fixture 13)

La falla de `DISC-001` fue codificada en `tools/test/test_adversarial_contract.py` como la prueba de regresión permanente:
```python
# Fixture 13: Metadata claim without observation
bad_c13 = {
    "conflicting_anchors": ["tax_id", "city"],
    "direct_observations": ["Ficha en Bogotá para empresa homónima en alquiler de maquinaria"]
}
# Auditor rechaza: 'tax_id' declarado en metadata sin NIT en direct_observations.
# Investigador remedia sustentando en anclas observables (city, industry_sector).
```
El conjunto de 13 pruebas adversariales pasa al 100%.

---

## 5. Costura de Integración: Investigación Externa -> `communicate_findings`

Se estableció y validó la frontera de responsabilidades:

```text
[Investigación Externa]
      │
      ▼ produce
Hallazgos Auditados (SRC-001..004) + 4 Incertidumbres Operacionales Bounded
      │
      ▼ entrega a
[communicate_findings]
      │
      ▼ aplica question_design.md
Preguntas Diagnósticas Orientadas al Flujo de Trabajo (sin falsas dicotomías)
      │
      ▼ actualiza
[output/cuestionario-presencia-externa.md]
```

### Ejemplos de Traducción de Incertidumbres

- **Sedes físicas:** De la incertidumbre empírica (dirección en Carrera 19d en web vs. Carrera 14 en directorios) se formula:  
  *«Cuando un cliente, aliado o entidad requiere reunirse presencialmente con el equipo o remitir correspondencia física, ¿a qué sede acuden habitualmente y qué función operativa cumplen hoy las oficinas de la Carrera 14?»* (orientada al flujo real de atención, no a etiquetas de software o registros estáticos).
- **Contratación pública:** De la incertidumbre contractual (adjudicación 2023 en Uribia sin datos de ejecución) se formula:  
  *«¿Qué papel juega la contratación técnica con entidades del sector público dentro de la actividad habitual de la empresa, y cómo se articula con los servicios prestados a titulares y compañías del sector privado?»* (elimina la falsa dicotomía "¿es recurrente o puntual?", abriendo el modelo al cliente).

---

## 6. Conclusión y Próximos Pasos

El Experimento 002 cerró la brecha entre el contrato de datos y la epistemología del sistema:
- La auditoría adversarial independiente es un filtro indispensable frente al análisis puramente sintáctico.
- El protocolo de reingreso obliga a la remediación empírica en la fuente.
- La costura con `communicate_findings` preserva la incertidumbre sin inducir respuestas dirigidas.

El sistema queda listo para ejecutar la investigación real de presencia digital y alimentar el ciclo continuo de aprendizaje del proyecto AMC Solutions.
