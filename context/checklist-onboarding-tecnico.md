# Checklist de Onboarding Técnico y Accesos — AMC Solutions

Documento de trabajo técnico complementario a la sesión de descubrimiento estratégico. Reúne los requerimientos de acceso, titularidad de infraestructura y telemetría necesarios para la fase de auditoría e implementación técnica.

> **Regla de seguridad y confidencialidad:**
> Ninguna credencial, clave o token debe registrarse ni almacenarse dentro de este repositorio. Las credenciales deben transmitirse por canales seguros y cifrados acordados con AMC Solutions.

---

## 1. Gestor de Contenidos (CMS: WordPress)

*Evidencia relacionada: [OBS-001](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-001-servidor-y-cms-wordpress).*

- [ ] **Acceso administrativo a WordPress:**
  - URL de acceso al panel (habitualmente `/wp-login.php` o `/wp-admin/`).
  - Usuario con rol de Administrador asignado al equipo técnico.
- [ ] **Responsabilidad del mantenimiento:**
  - Identificar quién realiza actualmente las actualizaciones de versión de WordPress, plugins y temas (personal interno, desarrollador independiente o agencia previa).
- [ ] **Inventario de extensiones y temas:**
  - Identificar si existen plugins premium o temas comerciales que requieran renovación de licencia activa.

---

## 2. Servidor y Hospedaje (Hosting)

*Evidencia relacionada: [OBS-001](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-001-servidor-y-cms-wordpress), [OBS-002](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-002-cabeceras-http-y-certificado-ssl).*

- [ ] **Proveedor de hosting:**
  - Nombre del proveedor actual del servicio de alojamiento web.
- [ ] **Consola de administración del servidor:**
  - Acceso al panel de control del hosting (cPanel, Plesk, hPanel u otro).
  - En su defecto, credenciales de acceso SFTP/FTP o SSH si aplica.
- [ ] **Copias de seguridad (Backups):**
  - Existencia de copias de seguridad automáticas a nivel de servidor.
  - Frecuencia y retención de las copias (diarias, semanales, mensuales).
  - Posibilidad de generar una copia de seguridad completa (archivos + base de datos MySQL) antes de cualquier intervención.
- [ ] **Configuración técnica del entorno:**
  - Confirmar versión activa de PHP (observada: PHP 8.2.34).
  - Certificado SSL/TLS (proveedor, vigencia y renovación automática).

---

## 3. Dominio y Configuración DNS

- [ ] **Registrador del dominio (`amcsolutionscolombia.com`):**
  - Empresa registradora del dominio (GoDaddy, Namecheap, DonDominio, proveedor de hosting, etc.).
- [ ] **Administración de registros DNS:**
  - Acceso a la zona DNS para incorporar registros de validación (TXT para Search Console, registros de seguimiento o configuración de correo).
  - Titularidad formal del dominio a nombre de AMC Solutions.

---

## 4. Telemetría, Analítica y Registros Históricos

*Evidencia relacionada: [OBS-003](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-003-metadatos-y-datos-estructurados-en-portada), [OBS-004](../evidence/technical/inspeccion-plataforma-y-cabeceras.md#obs-004-presencia-de-scripts-de-analítica-en-portada), [OBS-012](../evidence/website/paginas-servicios-y-contacto.md#obs-012-consistencia-de-metadatos-y-analítica-en-páginas-interiores), [OBS-015](../evidence/website/paginas-tramites-mineros.md#obs-015-estado-de-metadatos-y-analítica-en-páginas-de-trámites).*

- [ ] **Google Search Console (GSC):**
  - Verificar si existe una propiedad activa en Google Search Console para el dominio.
  - En caso afirmativo, otorgar acceso de Usuario/Propietario delegado a la cuenta designada.
  - En caso negativo, verificar el dominio mediante registro DNS TXT.
- [ ] **Google Analytics / Google Tag Manager:**
  - Confirmar si existió previamente alguna cuenta o contenedor (la inspección del código fuente no detectó scripts activos).
  - Determinar si existen cuentas históricas inactivas o si debe crearse un contenedor GA4/GTM nuevo.
- [ ] **Registros de acceso del servidor (Server Logs):**
  - Verificar si el hosting almacena registros de acceso HTTP/HTTPS brutos (`access.log`), lo cual permitiría evaluar tráfico previo ante la ausencia de scripts cliente.

---

## 5. Plataformas Publicitarias y Gestión de Clientes

- [ ] **Cuentas publicitarias:**
  - Verificar si existe historial de campañas en Google Ads o Meta Business Suite vinculadas al dominio o números de teléfono de AMC.
- [ ] **Herramienta de seguimiento comercial (CRM):**
  - Determinar si el equipo comercial utiliza un CRM (HubSpot, Zoho, etc.), una base de datos interna o un registro estructurado en hojas de cálculo para la gestión de prospectos.

---

## 6. Procedimiento de Solicitud y Recepción

1. **Destinatario de este checklist:** Persona o entidad que administra el soporte web y los servicios de TI de AMC Solutions.
2. **Momento oportuno:** Posterior a la reunión de alineación estratégica, una vez formalizado el inicio de las tareas técnicas.
3. **Mecanismo de entrega:** Canal cifrado (ej. gestor de contraseñas Bitwarden/1Password con enlace temporal, o sesión compartida asistida).
