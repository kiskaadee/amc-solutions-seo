# Inventario Inicial de Portada y Enlaces Descubiertos

Registro de observaciones sobre la estructura de la página de inicio y el catálogo de URLs descubiertas.

- **Fecha de captura:** 2026-10-07 22:47:51 UTC
- **URL objetivo:** `https://www.amcsolutionscolombia.com/`
- **Herramienta:** [`tools/inspect_site.py`](../../tools/inspect_site.py)
- **Fuente cruda:** `tools/raw/2026-10-07_22-47-51/`

---

### [OBS-006] Encabezados de la Portada
- **Categoría:** Arquitectura
- **Observación:** El único elemento H1 contiene el texto `AMC SOLUTIONS COLOMBIA`. Los únicos elementos H2 identificados son: *"Paginación de entradas"*, *"NOTICIAS"*, *"Categorías"* y *"Te has perdido"*. No se detectaron elementos H3.
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/metadata.json` (L10-21).
- **Interpretación:** La jerarquía de encabezados HTML de la portada no incluye denominaciones de servicios ni descriptores temáticos en niveles H1 o H2.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Qué contenido textual primario debe jerarquizarse en la portada según las prioridades de AMC?

---

### [OBS-007] Enlaces a Páginas de Servicios
- **Categoría:** Contenido
- **Observación:** En el HTML de la portada se extrajeron enlaces internos a 5 rutas bajo el prefijo `/servicios-*/`:
  - `/servicios-ambientales/`
  - `/servicios-de-topografia/`
  - `/servicios-empresariales/`
  - `/servicios-geologicos/`
  - `/servicios-mineros/`
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/links.json` (L40-44).
- **Interpretación:** El sitio web contiene páginas dedicadas para 5 áreas de servicio accesibles mediante enlaces internos desde la portada.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Estas 5 áreas representan el portafolio comercial activo de AMC?

---

### [OBS-008] Enlaces a Páginas de Trámites Mineros
- **Categoría:** Contenido
- **Observación:** En el HTML de la portada se extrajeron enlaces internos a 9 rutas con términos de trámites y conceptos del sector minero colombiano:
  - `/banco-de-informacion-minera-bim/`
  - `/estandar-colombiano-de-recursos-y-reservas-ecrr/`
  - `/formalizacion-minera/`
  - `/formato-basico-minero-fbm-anm/`
  - `/liquidacion-de-regalias/`
  - `/propuestas-de-contrato-de-concesion-diferencial-a-mineros-de-pequena-escala/`
  - `/reconciliacion-de-recursos-y-reservas/`
  - `/registro-unico-de-comercializadores-de-minerales-rucom/`
  - `/solicitudes-de-formalizacion-minera/`
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/links.json` (L12, 21-24, 36, 38, 39, 45).
- **Interpretación:** El sitio web aloja URLs específicas vinculadas a trámites y normativas de la Agencia Nacional de Minería (ANM).
- **Confianza:** Alta
- **Pregunta Abierta:** ¿El contenido de estas páginas describe servicios comerciales ofrecidos por la empresa o artículos divulgativos?

---

### [OBS-009] Enlaces de Contacto en la Portada
- **Categoría:** UX
- **Observación:** En el HTML de la portada inspeccionada no se encontraron enlaces con esquemas `tel:`, `mailto:`, enlaces a dominios de redes sociales (LinkedIn, Instagram, etc.) ni a la API de WhatsApp (`wa.me`, `whatsapp.com`). Se identificó un enlace interno a `/contacto/`.
- **Evidencia:** `tools/raw/2026-10-07_22-47-51/links.json` (L20, L53-54).
- **Interpretación:** La portada no ofrece mecanismos de interacción directa mediante enlaces HTML sin navegar hacia una ruta secundaria.
- **Confianza:** Alta
- **Pregunta Abierta:** ¿Existen datos de contacto visibles en la portada como texto estático o imagen sin enlace HTML asociado?
