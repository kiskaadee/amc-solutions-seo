# Flujo de Ejecución — `inspect_site.py`

Documentación visual y diagramas de arquitectura del script de reconocimiento técnico [tools/inspect_site.py](inspect_site.py).

---

## 1. Diagrama de Flujo Lógico

Describe la secuencia de control, la gestión de parámetros y las bifurcaciones de error:

```mermaid
flowchart TD
    Start(["Inicio: Ejecutar inspect_site.py"]) --> TargetSetup{"Configurar URL de destino"}
    
    subgraph Inputs ["Entrada"]
    TargetSetup -->|"URL Proporcionada"| ArgURL["Argumento CLI"]
    TargetSetup -->|"Sin argumento"| DefaultURL["Default: amcsolutionscolombia.com"]
    end
    
    DefaultURL --> InitRun
    ArgURL --> InitRun
    
    InitRun["Inicializar ejecución: Crear directorio tools/raw/{timestamp}/"]
    
    InitRun --> FetchHome["1. Ejecutar fetch_url sobre URL Final"]
    
    subgraph Adquisicion ["Proceso de Adquisición HTTP"]
    FetchHome -->|"Falla (Error o Excepción)"| HomeFail["Registrar error en headers.txt"]
    FetchHome -->|"Éxito (200 OK)"| HomeSuccess["Obtener Headers, Body HTML, Cadena de redirección"]
    end
    
    HomeSuccess --> SaveHome["Guardar homepage.html"]
    HomeSuccess --> SaveHeader["Guardar headers.txt"]
    HomeFail --> SaveHeader
    
    SaveHeader --> FetchRobots["2. Ejecutar fetch_url sobre /robots.txt"]
    FetchRobots --> SaveRobots["Guardar robots.txt"]
    
    SaveRobots --> FetchSitemap["3. Ejecutar fetch_url sobre /sitemap.xml"]
    FetchSitemap --> SaveSitemap["Guardar sitemap.xml"]
    
    subgraph Analisis ["Proceso de Análisis y Artefactos"]
    SaveSitemap --> ParseMeta["4. parse_html_metadata sobre HTML"]
    ParseMeta --> IdentifyCMS{"Detectar CMS y Señales"}
    IdentifyCMS -->|"WordPress, Wix, etc."| LogCMS["Registrar CMS en Metadatos"]
    IdentifyCMS -->|"Ninguno"| ExtractContent["Extraer Título, Descripción, Canónica, OG, Twitter, H1-H3, JSON-LD"]
    LogCMS --> ExtractContent
    
    ExtractContent --> SaveMeta["Guardar metadata.json"]
    
    SaveMeta --> ExtractLinks["5. extract_links sobre HTML"]
    ExtractLinks --> ClassifyLinks{"Clasificar enlaces"}
    
    ClassifyLinks --> IntL["Internos"]
    ClassifyLinks --> ExtL["Externos"]
    ClassifyLinks --> SocL["Sociales"]
    ClassifyLinks --> ConL["Contactos (tel y mailto)"]
    
    IntL --> SaveLinks["Guardar links.json"]
    ExtL --> SaveLinks
    SocL --> SaveLinks
    ConL --> SaveLinks
    end
    
    SaveLinks --> GenerateSummary["6. Generar summary.json: Recopilar métricas de ejecución"]
    GenerateSummary --> SaveSummary["Guardar summary.json"]
    
    SaveSummary --> Finish(["Fin: Imprimir resumen de inspección y ruta de salida"])
```

---

## 2. Diagrama de Secuencia Temporal

Describe la interacción temporal entre el usuario, el interceptor de redirecciones, el servidor remoto y el sistema de archivos:

```mermaid
sequenceDiagram
    autonumber
    actor User as Usuario / CLI
    participant Script as Main Execution
    participant Fetch as fetch_url()
    participant Server as Target Website
    participant Tracker as RedirectTracker
    participant Parser as parse_html_metadata()
    participant Linker as extract_links()
    participant FS as File System

    User->>Script: Ejecutar script (URL opcional)
    Script->>Script: Generar directorio único tools/raw/{timestamp}/
    Note right of Script: Destino local de volcados

    Note over Script, Server: 1. Adquisición de Portada (Homepage)
    Script->>Fetch: fetch_url(target_url)
    Fetch->>Server: GET request (User-Agent Chrome)
    Server-->>Tracker: Redirecciones (301 / 302)
    Tracker-->>Fetch: Cadena de saltos
    Server-->>Fetch: Respuesta HTTP (Headers, Body)
    Fetch-->>Script: Objeto de respuesta

    Script->>FS: Guardar headers.txt
    Script->>FS: Guardar homepage.html

    Note over Script, Server: 2. Adquisición de robots.txt
    Script->>Fetch: fetch_url(final_url + "/robots.txt")
    Fetch-->>Script: Objeto de respuesta
    Script->>FS: Guardar robots.txt

    Note over Script, Server: 3. Adquisición de sitemap.xml
    Script->>Fetch: fetch_url(final_url + "/sitemap.xml")
    Fetch-->>Script: Objeto de respuesta
    Script->>FS: Guardar sitemap.xml

    Note over Script, Linker: 4. Análisis Estático y Extracción
    Script->>Parser: parse_html_metadata(html, final_url)
    Parser-->>Script: Diccionario de metadatos (CMS, OG, Twitter, H1-H3, JSON-LD)
    Script->>FS: Guardar metadata.json

    Script->>Linker: extract_links(html, final_url)
    Linker-->>Script: Diccionario de enlaces (internos, externos, sociales, contactos)
    Script->>FS: Guardar links.json

    Script->>FS: Consolidar y guardar summary.json
    Script-->>User: Imprimir resumen por consola con ruta de salida
```
