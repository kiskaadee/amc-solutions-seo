# Herramientas de Inspección

Scripts de auditoría técnica para recopilar evidencia sobre la presencia digital de AMC Solutions.

## Estructura

- `tools/`: Scripts ejecutables de inspección técnica (`inspect_site.py`).
- `tools/raw/`: Volcados de red y capturas HTML organizados por marca temporal (`tools/raw/<timestamp>/`). Ignorado en Git.

## Restricciones de Ingeniería

- **Reproducibilidad:** Las herramientas deben generar salidas estructuradas (`json`, `txt`, `html`) verificables de forma determinista.
- **Trazabilidad:** Cada captura debe registrar marca temporal UTC, URL objetivo, códigos de estado HTTP y tiempos de respuesta.
- **Minimalismo instrumental:** Priorizar biblioteca estándar de Python y utilidades de sistema (`curl`, `openssl`, `dig`) antes de introducir dependencias externas.
- **Aislamiento de estado:** Los volcados crudos residen en `tools/raw/` y no deben mezclarse con las notas en Markdown ni comprometerse en Git.

## Herramientas Disponibles

### `inspect_site.py`

Script autónomo para reconocimiento HTTP inicial, detección de CMS, metadatos y extracción de grafos de enlaces. Produce un volcado estructurado bajo `tools/raw/<timestamp>/` con `headers.txt`, `homepage.html`, `robots.txt`, `sitemap.xml`, `metadata.json`, `links.json` y `summary.json`.

- **Uso:** `python tools/inspect_site.py [URL_DESTINO]`
- **Diagramas de flujo y arquitectura:** Consultar [inspect_site_flow.md](inspect_site_flow.md) para el diagrama de flujo lógico y el diagrama de secuencia temporal.

### `inspect_internal_pages.py`

Script para inspección en lote de páginas interiores (contacto y páginas de servicios). Extrae metadatos, estructura de encabezados, inventario de listas, formularios, detección de datos de contacto (enlaces y texto plano) y presencia de scripts de analítica en `tools/raw/<timestamp>/`.

- **Uso:** `python tools/inspect_internal_pages.py [URL_1 URL_2 ...]`
- **Por defecto:** Inspecciona `/contacto/` y las 5 páginas de servicios `/servicios-*/`.

## Entorno y Validación de Código

El entorno y las herramientas de validación se gestionan con `uv` dentro de `tools/`.

### Comandos de Inspección

Desde la raíz:

- Formateo: `uv run --directory tools ruff format .`
- Linter: `uv run --directory tools ruff check .`
- Verificación de tipos: `uv run --directory tools pyright`

Desde `tools/`:

- Formateo: `uv run ruff format .`
- Linter: `uv run ruff check .`
- Verificación de tipos: `uv run pyright`
