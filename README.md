# AMC Solutions — Investigación de Presencia Digital

Investigación de presencia digital de AMC Solutions Colombia ([amcsolutionscolombia.com](https://www.amcsolutionscolombia.com/)) y herramientas de inspección técnica.

---

## Estructura

- `context/`: Antecedentes, supuestos, hipótesis e incógnitas previas a la investigación.
- `evidence/`: Registros empíricos reproducibles (capturas de red, código y observaciones `[OBS-###]`).
- `analysis/`: Interpretación de evidencias (UX, SEO, posicionamiento).
- `output/`: Entregables e informes para AMC.
- `tools/`: Scripts de inspección y volcados técnicos.

---

## Formato de Evidencia

Las observaciones registradas en `evidence/` utilizan la siguiente plantilla:

```markdown
### [OBS-001] Título
- **Categoría:** Arquitectura | Contenido | Técnico | UX | Búsqueda
- **Observación:** Hecho observable.
- **Evidencia:** Archivo, encabezado HTTP, línea de código o captura.
- **Interpretación:** Implicación potencial.
- **Confianza:** Baja | Media | Alta
- **Pregunta Abierta:** Aspecto por validar con AMC.
```

---

## Mapa de Directorios

```text
amc-solutions-seo/
├── README.md                  # Descripción del espacio de investigación y metodología
├── LICENSE                    # The Unlicense
├── .gitignore                 # Exclusión de volcados temporales, cachés y estado local
│
├── context/
│   ├── project-brief.md       # Alcance, equipo y objetivos de la investigación
│   ├── known-unknowns.md      # Hechos, afirmaciones, supuestos e incógnitas
│   ├── hypotheses.md          # Hipótesis de negocio y cadena de valor
│   └── questions-for-amc.md   # Banco de preguntas para reunión con AMC
│
├── evidence/
│   ├── website/               # Capturas de páginas, inventario de contenido y navegación
│   ├── technical/             # Registros HTTP, DNS, CMS, robots.txt, sitemaps y metadatos
│   └── external/              # Presencia en Google Business, LinkedIn y directorios
│
├── analysis/
│   ├── ux.md                  # Arquitectura de información, rutas de usuario y conversión
│   ├── seo.md                 # Descubribilidad orgánica y técnica
│   ├── search-landscape.md    # Intención de búsqueda y viabilidad de Google Ads
│   └── positioning.md         # Posicionamiento de mercado observado vs. propuesto
│
├── output/
│   └── discovery-report.md    # Informe de síntesis previo a la propuesta formal
│
└── tools/
    ├── README.md              # Guía de herramientas y restricciones de ingeniería
    ├── inspect_site.py        # Script de reconocimiento HTTP y extracción de metadatos
    └── raw/                   # Volcados sin procesar por marca temporal (ignorado en git)
```