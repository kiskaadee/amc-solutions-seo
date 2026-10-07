# Record Evidence

## Objective

Convert observable findings from research artifacts into traceable evidence records.

## Rules

1. Record only what the available evidence directly supports.
2. Separate observations from interpretations.
3. Scope negative findings to the inspection performed.
4. Every observation must reference its supporting evidence.
5. Do not infer infrastructure, behavior, intent, or business facts that were not observed.
6. Preserve the original evidence without modifying it to support an interpretation.
7. Assign confidence based on the strength and completeness of the evidence.
8. Record unresolved questions when additional information is required.
9. Do not propose solutions while recording evidence.
10. Do not duplicate the same observation across multiple evidence records.

## Observation discipline

Prefer:

> No se encontraron referencias a Google Analytics en el HTML de la portada inspeccionada.

Avoid:

> El sitio no utiliza Google Analytics.

Negative observations must describe the scope of the inspection.

## Evidence provenance

Every record should identify:

- Source artifact
- Relevant URL, file, or resource
- Capture date when applicable
- Tool or method used when applicable

## Interpretation

Interpretations may explain potential implications, but must not introduce unsupported facts.

Prefer:

> La estructura observada puede dificultar la comunicación de las líneas de servicio desde la portada.

Avoid:

> La empresa diseñó el sitio como un blog.

The second statement assigns intent that the evidence does not establish.

## Confidence

Use:

- **Alta:** Directly observable and unambiguous evidence.
- **Media:** Evidence supports the interpretation but relevant context is missing.
- **Baja:** Preliminary indication requiring additional verification.

## Before recording

Ask:

- What can I observe directly?
- What evidence demonstrates this?
- Am I asserting something that the evidence does not measure?
- Is the absence limited to the scope of the inspection?
- What information remains unconfirmed?
- Am I recording evidence or proposing a solution?

