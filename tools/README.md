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
