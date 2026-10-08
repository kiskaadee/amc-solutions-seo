# Experimento 001: Prototipo de Orquestación y Máquina de Estados de Investigación Externa

- **Fecha:** 2026-10-08
- **Estado:** Completado (Prototipo validado con desviaciones identificadas)
- **Alcance:** Validación de la máquina de estados dual (Anclas vs. Candidatos), contención de anclas y verificación mecánica de predicados.

---

## 1. Objetivo del Experimento

Evaluar si el contrato de estado operacional definido en `references/research_state_schema.md` y `references/working_set_template.md` permite a un orquestador automatizado:
1. Iniciar la investigación a partir de anclas semilla verificadas sin mutar de forma descontrolada el universo de búsqueda.
2. Contener nuevos identificadores descubiertos en estado `proposed`.
3. Clasificar candidatos externos en presencia admisible, observaciones negativas acotadas y descartes de homónimos.
4. Impedir la escritura directa de registros en `evidence/external/` durante la etapa de descubrimiento.

---

## 2. Ejecución y Comportamientos Validados

El flujo de orquestación inicial ejecutó búsquedas acotadas sobre cuatro clases de fuentes:
```text
Seed anchors (ANC-001 a ANC-005)
    ↓
Búsqueda acotada (7 consultas)
    ↓
Clasificación de candidatos (SRC-001 a SRC-004, DISC-001, DISC-002)
    ↓
Emisión de anclas propuestas (ANC-006 dirección Carrera 14, ANC-007 Ledys Martínez)
    ↓
Evaluación mecánica de admisibilidad
```

### Comportamientos Correctos Confirmados
- **Contención de anclas:** Ni la dirección administrativa secundaria (`ANC-006`) ni la representante legal (`ANC-007`) se promovieron a activas. Se contuvieron en `proposed`, evitando la deriva temática.
- **Acotamiento temporal:** El contrato municipal de Uribia (`SRC-002`) se restringió a la vigencia fiscal 2023, sin extrapolación a 2026.
- **Aislamiento de homónimos:** La sociedad *Amc Solutions S.A.S.* de Bogotá fue descartada (`DISC-001`) en lugar de fusionarse con la empresa objetivo.
- **Filtrado ontológico:** La coincidencia numérica del NIT en DeviantArt (`DISC-002`) se descartó como colisión técnica.
- **Disciplina de repositorio:** No se generaron archivos canónicos directos en `evidence/external/`.

---

## 3. Desviaciones Epistémicas Identificadas

La revisión del experimento evidenció que el protocolo fue interpretado de forma laxa en aspectos críticos:

1. **La "auditoría" fue una evaluación mecánica de pruebas, no una auditoría independiente:**
   El orquestador importó directamente la clase `EvidenceAuditor` de `tools/test/test_adversarial_contract.py`. Esto demostró que el estado podía evaluarse algorítmicamente contra reglas estáticas, pero no constituyó una auditoría independiente que contrastara los hallazgos contra las fuentes primarias.
2. **Confusión de objetivos en `search_scope`:**
   El estado operacional registró `phase: 1, objective: "identity_resolution"`, pero el trabajo ejecutado cubrió cobertura de presencia, búsqueda institucional y observaciones negativas. Las condiciones de parada de identidad (`anchor_sufficiency`) se mezclaron con rendimientos decrecientes de mercado.
3. **Salto epistémico en observaciones negativas (SERP vs. Plataforma):**
   Las observaciones directas sobre Google Maps y LinkedIn afirmaron la ausencia de perfil institucional en las plataformas, cuando el método empleado fue una muestra de resultados indexados en un motor de búsqueda (`site:google.com/maps`, `site:linkedin.com/company`).
4. **Defecto de procedencia en `SRC-002`:**
   Se consignó la URL raíz del portal municipal (`https://www.uribia-laguajira.gov.co/`) en lugar del localizador del informe oficial de gestión 2023 en PDF.
5. **Ambigüedad terminológica en `SRC-001`:**
   Se utilizó la expresión "ficha mercantil" para Informa Colombia, cuando se trata de un directorio comercial privado y agregador intermediario, no de un registro estatutario.
6. **Invasión del límite de `communicate_findings`:**
   El investigador formuló preguntas con falsas dicotomías ("¿es recurrente o puntual?"), duplicando responsabilidades y vulnerando las directrices de diseño de preguntas diagnósticas.

---

## 4. Conclusión

El Experimento 001 demostró la viabilidad del contrato de datos para contener la expansión no autorizada de identificadores, pero evidenció la necesidad de separar la validación de esquema de la auditoría epistémica real y delimitar la frontera con las habilidades de comunicación.
