# Plantilla del Conjunto de Trabajo (Research Working Set)

Estructura sugerida para documentar el conjunto de trabajo de investigacion de presencia externa antes de formalizar registros en `evidence/`:

```markdown
# Conjunto de Trabajo: Presencia Externa - [Nombre de la Organizacion]

## Metadatos de la Investigacion
- **Organizacion objetivo:** [Nombre comercial y legal]
- **Fecha de investigacion:** [YYYY-MM-DD]
- **Clases de fuentes inspeccionadas:** [Registros oficiales, Plataformas locales, etc.]
- **Limite de parada aplicado:** [Alcance definido, profundidad de consultas]

---

## Identificadores Ancla Verificados (Semilla)
- **Dominio web:** [amcsolutionscolombia.com]
- **Razon social:** [AMC SOLUTIONS COLOMBIA S.A.S.]
- **Identificacion tributaria / NIT:** [901380770-0]
- **Telefonos de contacto:** [+57 3136216458, ...]
- **Correos corporativos:** [gerencia@amcsolutionscolombia.com]
- **Ubicacion geografica:** [Valledupar, Cesar, Colombia]
- **Sector de actividad:** [Consultoria en ingenieria minera y ambiental]

---

## Registro de Fuentes Evaluadas

### [SRC-001] [Nombre de la Fuente / Titulo del Registro]
- **Fuente:** [Nombre de la plataforma o entidad emisora]
- **URL de referencia:** `[URL]`
- **Fecha de captura:** [YYYY-MM-DD]
- **Fecha declarada por la fuente:** [YYYY-MM-DD o No declarada]
- **Clase de fuente:** [Registro oficial | Plataforma local | Directorio comercial | Medios]
- **Estado de identidad:** [Confirmada | Descartada | Ambigua]
- **Identificadores ancla coincidentes:** [Dominio, Telefono, NIT, etc.]

#### Observaciones Directas
- [Hecho directamente observable en la pagina inspeccionada]

#### Afirmaciones de la Fuente (Claims)
- [Informacion atribuida o afirmada por la fuente sin verificacion primaria]

#### Corroboracion
- [Estado: Corroborada con SRC-xxx | No corroborada (fuente unica)]

#### Evaluacion de Confianza
- **Nivel:** [Alta | Media | Baja | Negativa delimitada]
- **Justificacion:** [Basada en identificadores y tipo de fuente]

#### Preguntas Abiertas
- [Dudas, discrepancias o vacios de informacion]

---

## Descartes de Homonimos

### [DISC-001] [Nombre de la Entidad Homonima]
- **Fuente:** [Plataforma consultada]
- **URL de referencia:** `[URL]`
- **Criterio de descarte:** [Conflicto en NIT, ubicacion geografica o sector de actividad]
- **Justificacion:** [Por que no corresponde a la organizacion objetivo]

---

## Sintesis para Formalizacion
- **Fuentes confirmadas para formalizar en evidence/:** [SRC-001, SRC-002, ...]
- **Hallazgos negativos delimitados:** [Plataformas sin perfil observado bajo la muestra evaluada]
- **Preguntas abiertas prioritarias para el cliente:** [Lista de preguntas clave]
```
