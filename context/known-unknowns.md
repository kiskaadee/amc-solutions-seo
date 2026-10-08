# Certezas e Incógnitas

## Hechos
- Sitio web publicado y accesible: [AMC Solutions Colombia](https://www.amcsolutionscolombia.com)
- Proceso abierto por la empresa para revisar y rediseñar su presencia digital.
- Equipo interdisciplinario asignado (contenidos, diseño, marketing, desarrollo).
- Plataforma técnica y servidor: WordPress 7.1.3 bajo servidor Apache y PHP 8.2.34 con HTTPS activo ([OBS-001](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-001-servidor-y-cms-wordpress), [OBS-002](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-002-cabeceras-http-y-certificado-ssl)).
- En las páginas inspeccionadas no se detectaron referencias a GA4, GTM o Meta Pixel, ni metadatos OpenGraph o JSON-LD ([OBS-003](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-003-metadatos-y-datos-estructurados-en-portada), [OBS-004](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-004-presencia-de-scripts-de-analítica-en-portada), [OBS-012](../evidence/website/paginas-servicios-y-contacto.md#obs-012-consistencia-de-metadatos-y-analítica-en-páginas-interiores), [OBS-015](../evidence/website/paginas-tramites-mineros.md#obs-015-estado-de-metadatos-y-analítica-en-páginas-de-trámites)).
- En la portada y `/contacto/`, los datos de contacto inspeccionados aparecen en texto plano; no se detectaron formularios ni enlaces `tel:`, `mailto:` o enlaces/mecanismos de WhatsApp ([OBS-009](../evidence/website/inventario-portada-y-enlaces.md#obs-009-enlaces-de-contacto-en-la-portada), [OBS-010](../evidence/website/paginas-servicios-y-contacto.md#obs-010-datos-de-contacto-y-canales-en-página-de-contacto)).
- Las cinco páginas bajo `/servicios-*` presentan una estructura distinta de las nueve páginas de trámites mineros inspeccionadas: las primeras contienen listas de nombres de servicios (y `/servicios-empresariales/` no contiene texto en su cuerpo principal), mientras que las segundas contienen texto explicativo y enlaces hacia `/contacto/` ([OBS-011](../evidence/website/paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios), [OBS-013](../evidence/website/paginas-tramites-mineros.md#obs-013-modelo-de-contenido-explicativo-y-referencias-normativas), [OBS-014](../evidence/website/paginas-tramites-mineros.md#obs-014-enlaces-de-llamada-a-la-acción-cta-hacia-contacto)).
- Razón social inscrita como sociedad comercial `AMC SOLUTIONS COLOMBIA S.A.S.` con NIT `901380770-0` en directorios mercantiles nacionales en Valledupar, asociando el teléfono `3144138478` y dirección en Carrera 14 # 13 C 60, Edificio Ágora ([OBS-016](../evidence/external/registro-mercantil-y-directorios.md#obs-016-ficha-mercantil-en-portafolio-y-einforma-colombia)).
- Antecedente documentado de contratación pública territorial: adjudicación y ejecución del contrato Selección Abreviada Nº 014 de 2023 por $198.588.212 COP con la Alcaldía de Uribia (La Guajira) para control y seguimiento de unidades mineras y centros de acopio durante el último trimestre de 2023 ([OBS-017](../evidence/external/contratacion-publica-uribia-2023.md#obs-017-contrato-de-fiscalización-minera-selección-abreviada-nº-014-de-2023)).
- En la muestra evaluada de búsqueda pública no se observó ficha comercial verificada o reclamada en Google Business Profile / Google Maps ([OBS-018](../evidence/external/observaciones-negativas-plataformas.md#obs-018-ausencia-de-ficha-reclamada-en-google-business-profile--google-maps)), página corporativa institucional activa en LinkedIn ([OBS-019](../evidence/external/observaciones-negativas-plataformas.md#obs-019-ausencia-de-página-corporativa-institucional-en-linkedin)) ni perfiles institucionales activos en Facebook, Instagram o X ([OBS-020](../evidence/external/observaciones-negativas-plataformas.md#obs-020-ausencia-de-perfiles-institucionales-en-redes-sociales-abiertas)).

## Afirmaciones de Interesados
- El diseño visual y la experiencia de usuario actuales no reflejan la calidad de la empresa.
- El posicionamiento SEO es una prioridad estratégica.
- Existe interés en explorar inversión en Google Ads.
- La empresa requiere proyectar mayor solidez institucional.

## Supuestos de Trabajo
- El sitio web debe operar como validador de solvencia técnica y captación B2B, no como blog o catálogo pasivo.
- Mejorar el posicionamiento requiere reestructurar la arquitectura de información según la intención de búsqueda del sector.

## Límites de Evidencia
- **Analítica y medición:** La inspección técnica no detectó scripts de analítica ni seguimiento en las páginas evaluadas ([OBS-004](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-004-presencia-de-scripts-de-analítica-en-portada), [OBS-012](../evidence/website/paginas-servicios-y-contacto.md#obs-012-consistencia-de-metadatos-y-analítica-en-páginas-interiores), [OBS-015](../evidence/website/paginas-tramites-mineros.md#obs-015-estado-de-metadatos-y-analítica-en-páginas-de-trámites)). La existencia de propiedades en Google Search Console a nivel de dominio, herramientas de medición en el servidor o registros históricos permanece desconocida.
- **Canales de contacto y captación:** En la portada y `/contacto/` no se identificaron mecanismos de contacto interactivo ([OBS-009](../evidence/website/inventario-portada-y-enlaces.md#obs-009-enlaces-de-contacto-en-la-portada), [OBS-010](../evidence/website/paginas-servicios-y-contacto.md#obs-010-datos-de-contacto-y-canales-en-página-de-contacto)). Si AMC utiliza canales de captación o registro por fuera de estas páginas o de forma manual, permanece desconocido.
- **Cobertura de páginas:** La inspección cubrió la portada, las cinco páginas de servicios, la página de contacto y nueve páginas de trámites mineros; no cubre la totalidad de URLs indexables o listadas en sitemaps externos.
- **Presencia digital externa:** La exploración externa se basó en consultas indexadas en motores de búsqueda, directorios mercantiles comerciales, registros gubernamentales abiertos y plataformas de terceros. No incluye acceso a bases privadas con suscripción cerrada (ej. RUES con autenticación, bases arancelarias privadas) ni procesos en SECOP II no indexados en motores públicos.

## Incógnitas

### Negocio y Operación
- ¿Cuáles 2 o 3 servicios generan el 80% de los ingresos reales?
- ¿Qué líneas de servicio son prioritarias para los próximos 12–18 meses?
- ¿Cuál es el estado comercial real de la línea de servicios empresariales (página `/servicios-empresariales/` sin contenido principal)?
- ¿Existen servicios listados en la web que ya no se prestan?
- ¿Cuenta la empresa con portafolios, fichas técnicas o presentaciones fuera del sitio para respaldar los servicios listados?
- ¿Quién toma la decisión de contratación en las empresas cliente (gerencias, directores ambientales, ingenieros, abogados)?
- ¿Cuál es la cobertura territorial real de los proyectos (sede física en Valledupar vs. alcance departamental, regional o nacional)?
- ¿Cuál es el diferencial comprobable frente a la competencia de consultoría minero-ambiental?

### Presencia Externa y Entorno Corporativo
- ¿La dirección de Carrera 14 # 13 C 60 (Edificio Ágora, Oficina 308) permanece como sede administrativa activa o corresponde a una ubicación histórica previa al local de Barrio Arizona (Carrera 19d)?
- ¿La contratación estatal territorial (como el contrato de Uribia 2023 por $198.5M COP) representa una línea de negocio recurrente para AMC o respondió a una oportunidad coyuntural?
- ¿Existe algún proceso de verificación en trámite para reclamar el perfil de Google Business Profile para la sede en Valledupar?
- ¿Dispone la empresa de perfiles personales o ejecutivos en LinkedIn que no cuenten con página institucional de empresa asociada?
- ¿El canal de YouTube `@amcsolutionscolombia5796` (video de topografía con drones de enero de 2025) fue creado y administrado formalmente por la empresa?

### Adquisición y Ventas
- ¿Cómo llegan hoy los clientes a AMC (referidos, licitaciones privadas, gremios, búsqueda orgánica)?
- ¿Qué porcentaje de contratos proviene actualmente del canal digital frente al contacto tradicional?
- ¿Qué canales de contacto (llamadas telefónicas, correo manual, visitas) generan cierres efectivos ante la ausencia de formularios web?
- ¿Generan los enlaces de cotización en las páginas de trámites mineros consultas efectivas o causan fricción y abandono al derivar a una página de contacto sin formulario?
- ¿Qué constituye un prospecto calificado (mensaje por WhatsApp, pliego licitatorio por correo, llamada)?
- ¿Cuánto dura el ciclo de venta desde el primer contacto hasta la firma de contrato?

### Infraestructura Web
- ¿Quién gestiona y posee las credenciales de administración de hosting, panel de WordPress y proveedor DNS?
- ¿Existe alguna propiedad activa en Google Search Console a nivel de dominio o acceso a logs del servidor para evaluar el tráfico histórico?
- ¿Existió previamente algún formulario interactivo o plugin de contacto que haya sido retirado o desactivado?
- ¿Se dispone de algún registro interno o CRM para el seguimiento de prospectos comerciales?

### Marca y Contenido
- ¿Cuál fue el objetivo editorial y origen de las 9 páginas de trámites mineros: divulgación técnica o captación comercial directa?
- ¿Cuál es el mensaje central y los valores no negociables de la empresa?
- ¿Cuál es el tono de comunicación deseado (técnico/institucional, de vanguardia, cercano)?
- ¿Qué sitios web del sector consideran referentes positivos?

### Alcance Comercial
- ¿Cuál es el presupuesto y cronograma previsto por AMC?
- ¿Se busca una entrega única de rediseño o un acompañamiento continuo (SEO, contenidos, pauta)?
- ¿Quién mantendrá el sitio y atenderá los canales digitales tras el lanzamiento?
