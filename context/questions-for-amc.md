# Preguntas de Descubrimiento para AMC Solutions

Banco de preguntas estructurado a partir de la evidencia técnica y de contenido recolectada en el sitio web ([OBS-001 a OBS-005](../evidence/technical/inspeccion-plataforma-y-cabeceras.md), [OBS-006 a OBS-009](../evidence/website/inventario-portada-y-enlaces.md), [OBS-010 a OBS-012](../evidence/website/paginas-servicios-y-contacto.md), [OBS-013 a OBS-015](../evidence/website/paginas-tramites-mineros.md)). Diseñado para resolver vacíos empíricos y entender la operación comercial real de la empresa antes de formular diagnósticos o propuestas.

---

## 1. Modelo Comercial y Portafolio Activo

*Evidencia relacionada: [OBS-007](../evidence/website/inventario-portada-y-enlaces.md#obs-007-enlaces-a-páginas-de-servicios), [OBS-008](../evidence/website/inventario-portada-y-enlaces.md#obs-008-enlaces-a-páginas-de-trámites-mineros), [OBS-011](../evidence/website/paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios), [OBS-013](../evidence/website/paginas-tramites-mineros.md#obs-013-modelo-de-contenido-explicativo-y-referencias-normativas).*

1. **Portafolio real vs. estructura web:** En la web aparecen 5 categorías de servicios (`/servicios-*/`) y 9 páginas dedicadas a trámites mineros de la ANM. En la práctica comercial:
   - ¿Cuáles 2 o 3 líneas de servicio representan el 80% de la facturación de AMC?
   - ¿Los trámites mineros (RUCOM, liquidación de regalías, formalización, FBM) son servicios independientes que cobran por separado o forman parte de contratos marco más amplios?
2. **Servicios Empresariales ([OBS-011](../evidence/website/paginas-servicios-y-contacto.md#obs-011-contenido-y-estructura-en-páginas-de-servicios)):** La página `/servicios-empresariales/` no contiene texto ni servicios listados.
   - ¿Qué alcance contempla esta línea de negocio? ¿Se encuentra activa, en desarrollo o ya no forma parte de la oferta?
3. **Cualificación del cliente:** En la web, 4 páginas de servicios solo listan viñetas de nombres técnicos sin explicaciones.
   - Cuando un prospecto se comunica por primera vez, ¿llega sabiendo con precisión qué servicio o trámite necesita, o el equipo comercial debe orientarlo y educarlo desde cero?

---

## 2. Captación, Canales y Flujo de Cotización

*Evidencia relacionada: [OBS-009](../evidence/website/inventario-portada-y-enlaces.md#obs-009-enlaces-de-contacto-en-la-portada), [OBS-010](../evidence/website/paginas-servicios-y-contacto.md#obs-010-datos-de-contacto-y-canales-en-página-de-contacto), [OBS-014](../evidence/website/paginas-tramites-mineros.md#obs-014-enlaces-de-llamada-a-la-acción-cta-hacia-contacto).*

1. **Atribución de canales:** La página `/contacto/` expone tres números celulares, un correo y una dirección física en texto plano, sin formularios interactivos ni enlaces directos:
   - Cuando reciben llamadas o correos, ¿tienen algún mecanismo o protocolo para identificar si el contacto proviene de una búsqueda en Google, del sitio web o de una referencia personal?
   - De los tres números de celular listados, ¿a quién corresponden las líneas (gerencia, área comercial, soporte técnico)?
2. **Efectividad del llamado a cotizar ([OBS-014](../evidence/website/paginas-tramites-mineros.md#obs-014-enlaces-de-llamada-a-la-acción-cta-hacia-contacto)):** Páginas como *Liquidación de Regalías* o *Propuestas de Concesión* invitan al usuario a «Cotizar aquí su trámite», enviándolo a `/contacto/`:
   - ¿Reciben habitualmente solicitudes de cotización originadas a partir de estas páginas temáticas?
   - ¿Han detectado fricción o abandono en prospectos que prefieren no llamar y buscan cotizar de forma directa por mensajería o formulario?

---

## 3. Clientes y Proceso de Decisión (B2B)

*Evidencia relacionada: [OBS-013](../evidence/website/paginas-tramites-mineros.md#obs-013-modelo-de-contenido-explicativo-y-referencias-normativas).*

1. **Perfil del comprador:** Las páginas citan normativas de alta especificidad técnica y legal:
   - ¿Quién es el interlocutor habitual que toma la decisión de contratación (titulares de concesión, directores de sostenibilidad, asesores jurídicos de empresas mineras, pequeños mineros en proceso de formalización)?
2. **Ámbito geográfico y territorio:** La sede física declarada está en Valledupar (Cesar):
   - ¿El mercado activo de AMC se concentra en el departamento del Cesar y la Región Caribe, o ejecutan proyectos a escala nacional?
3. **Ciclo de venta:** ¿Cuánto tiempo promedio transcurre desde la primera consulta sobre un trámite o estudio ambiental/geológico hasta el cierre del contrato?

---

## 4. Infraestructura Técnica, Accesos y Datos

*Evidencia relacionada: [OBS-001](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-001-servidor-y-cms-wordpress), [OBS-003](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-003-metadatos-y-datos-estructurados-en-portada), [OBS-004](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-004-presencia-de-scripts-de-analítica-en-portada), [OBS-012](../evidence/website/paginas-servicios-y-contacto.md#obs-012-consistencia-de-metadatos-y-analítica-en-páginas-interiores), [OBS-015](../evidence/website/paginas-tramites-mineros.md#obs-015-estado-de-metadatos-y-analítica-en-páginas-de-trámites).*

1. **Propiedad y administración de la plataforma:**
   - La inspección técnica constató que el sitio opera en WordPress 7.1.3 bajo Apache y PHP 8.2.34. ¿Quién gestiona actualmente el hosting, las copias de seguridad y las actualizaciones del CMS?
   - ¿Dispone AMC de credenciales de acceso administrativo al panel de WordPress, al servidor de hosting y al proveedor de DNS?
2. **Telemetría y analítica:**
   - No se detectaron etiquetas de Google Analytics, Tag Manager ni metadatos de seguimiento en ninguna página del sitio. ¿Existe alguna propiedad configurada en Google Search Console a nivel de dominio, o acceso a los registros (logs) del servidor web?
3. **Campañas previas:**
   - ¿Ha ejecutado AMC pauta digital previa (Google Ads, redes sociales) hacia alguna de las URLs del sitio?

---

## 5. Expectativas y Definición de Éxito

1. **Objetivo prioritario del canal digital:**
   - ¿Qué función concreta debe cumplir la presencia digital para AMC en los próximos 12 meses: generar prospectos comerciales cualificados, actuar como carta de presentación y respaldo institucional ante licitaciones, o educar al sector minero sobre normativas?
2. **Criterio de éxito:**
   - ¿Qué indicador observable a 6 meses le confirmará a la dirección de AMC que la presencia digital está cumpliendo su propósito?
