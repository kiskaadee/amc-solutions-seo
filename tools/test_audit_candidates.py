"""
Verificación de auditoría de candidatos para el conjunto de trabajo de AMC Solutions.
"""

from tools.audit_external_evidence import audit_working_set_candidates

candidates = [
    {
        "id": "SRC-001",
        "candidate_kind": "presence",
        "source_class": 3,
        "source_name": "Portafolio.co / eInforma Colombia",
        "url": "https://empresas.portafolio.co/AMC-SOLUTIONS-COLOMBIA-SAS.html",
        "capture_date": "2026-10-08",
        "source_date": None,
        "relevant_period": "historico / no fechado",
        "identity_status": "attributed",
        "disposition": "admit",
        "audit_status": "pending",
        "matched_anchors": ["ANC-002", "ANC-003", "ANC-005"],
        "missing_anchors": [],
        "conflicting_anchors": [],
        "proposed_anchors": ["ANC-006"],
        "confidence": "high",
        "direct_observations": [
            "Ficha mercantil en Portafolio/eInforma lista a Amc Solutions "
            "Colombia S A S con NIT 9013807700 en Valledupar, Cesar.",
            "Registra número telefónico 3144138478 coincidente con semilla.",
            "Registra dirección física Carrera 14 # 13 C 60, Edificio Ágora, "
            "Of. 308.",
        ],
        "source_claims": [
            "Clasifica actividad bajo CIIU 4663 (comercio al por mayor de "
            "materiales).",
            "Estima rango de ventas entre 1.000M y 2.000M COP.",
        ],
    },
    {
        "id": "SRC-002",
        "candidate_kind": "presence",
        "source_class": 1,
        "source_name": "Alcaldía Municipal de Uribia, La Guajira",
        "url": (
            "https://www.uribia-laguajira.gov.co/Conectividad/RendiciondeCuentas/"
            "INFORME%20DE%20GESTI%C3%93N%20%E2%80%93%20RENDICI%C3%93N%20DE%20"
            "CUENTAS%202023.pdf"
        ),
        "capture_date": "2026-10-08",
        "source_date": "2023-12-31",
        "relevant_period": "vigencia fiscal 2023",
        "identity_status": "attributed",
        "disposition": "admit",
        "audit_status": "pending",
        "matched_anchors": ["ANC-002", "ANC-003"],
        "missing_anchors": [],
        "conflicting_anchors": [],
        "proposed_anchors": ["ANC-007"],
        "confidence": "high",
        "direct_observations": [
            "Contrato Selección Abreviada de Menor Cuantía Nº 014 de 2023 "
            "suscrito con Ledys del Rosario Martínez Lara, representante legal "
            "de AMC SOLUTIONS COLOMBIA S.A.S con NIT 901380770-0.",
            "Objeto: Control y seguimiento 2023 del funcionamiento y operación "
            "de empresas y centros de acopio del sector minero en Uribia.",
            "Cuantía de $198.588.212 COP, plazo 2 meses y 28 días ejecutado "
            "entre octubre y diciembre de 2023.",
        ],
        "source_claims": [
            "Describe actividades de inspección en 8 unidades mineras y 25 "
            "centros de acopio.",
        ],
    },
    {
        "id": "SRC-003",
        "candidate_kind": "presence",
        "source_class": 1,
        "source_name": (
            "Departamento Administrativo de la Función Pública (SIGEP)"
        ),
        "url": (
            "https://www.funcionpublica.gov.co/dafpIndexerBHV/hvSigep/"
            "detallarHV/S2360517-8062-5"
        ),
        "capture_date": "2026-10-08",
        "source_date": None,
        "relevant_period": "historico 2020-04-28 a 2021-04-28",
        "identity_status": "ambiguous",
        "disposition": "hold",
        "audit_status": "pending",
        "matched_anchors": ["ANC-003"],
        "missing_anchors": ["tax_id", "street_address"],
        "conflicting_anchors": [],
        "proposed_anchors": [],
        "confidence": "medium",
        "direct_observations": [
            "Hoja de vida pública en SIGEP del Ingeniero de Minas Jose Jorge "
            "Brochero Herrera (Valledupar) registra experiencia laboral en "
            "AMC SOLUTIONS COLOMBIA S.A.S.",
            "Cargo registrado: INGENIERO DE MINAS, periodo 28/04/2020 a "
            "28/04/2021.",
        ],
        "source_claims": [
            "Declaración juramentada institucional del servidor público en "
            "el sistema SIGEP.",
        ],
    },
    {
        "id": "SRC-004",
        "candidate_kind": "negative_observation",
        "source_class": 2,
        "source_name": "Google Maps / Búsqueda local Valledupar",
        "url": "https://www.google.com/maps",
        "capture_date": "2026-10-08",
        "source_date": None,
        "relevant_period": "2026-10-08",
        "identity_status": "not_applicable",
        "disposition": "admit",
        "audit_status": "pending",
        "matched_anchors": [],
        "missing_anchors": [],
        "conflicting_anchors": [],
        "proposed_anchors": [],
        "confidence": "negative_scoped",
        "direct_observations": [
            "En la muestra evaluada de consultas para 'AMC Solutions' "
            "'Valledupar' y en Google Maps, no se observó ficha comercial "
            "verificada ni perfil reclamado en Google Business Profile.",
        ],
        "source_claims": [],
    },
    {
        "id": "SRC-005",
        "candidate_kind": "negative_observation",
        "source_class": 3,
        "source_name": "LinkedIn",
        "url": "https://www.linkedin.com/",
        "capture_date": "2026-10-08",
        "source_date": None,
        "relevant_period": "2026-10-08",
        "identity_status": "not_applicable",
        "disposition": "admit",
        "audit_status": "pending",
        "matched_anchors": [],
        "missing_anchors": [],
        "conflicting_anchors": [],
        "proposed_anchors": [],
        "confidence": "negative_scoped",
        "direct_observations": [
            "En la muestra evaluada de consultas estructuradas "
            "site:linkedin.com/company 'AMC Solutions Colombia', no se observó "
            "ninguna página corporativa institucional activa.",
        ],
        "source_claims": [],
    },
    {
        "id": "SRC-006",
        "candidate_kind": "negative_observation",
        "source_class": 3,
        "source_name": "Redes Sociales Abiertas (Facebook, Instagram, X)",
        "url": "https://www.facebook.com/",
        "capture_date": "2026-10-08",
        "source_date": None,
        "relevant_period": "2026-10-08",
        "identity_status": "not_applicable",
        "disposition": "admit",
        "audit_status": "pending",
        "matched_anchors": [],
        "missing_anchors": [],
        "conflicting_anchors": [],
        "proposed_anchors": [],
        "confidence": "negative_scoped",
        "direct_observations": [
            "En la muestra evaluada de consultas orientadas por dominio y "
            "marca en Facebook, Instagram y X, no se observaron perfiles "
            "institucionales verificados o activos.",
        ],
        "source_claims": [],
    },
    {
        "id": "SRC-007",
        "candidate_kind": "presence",
        "source_class": 4,
        "source_name": "YouTube",
        "url": "https://www.youtube.com/watch?v=wm_2QLYIpVk",
        "capture_date": "2026-10-08",
        "source_date": "2025-01-03",
        "relevant_period": "2025-01-03",
        "identity_status": "ambiguous",
        "disposition": "hold",
        "audit_status": "pending",
        "matched_anchors": ["ANC-003"],
        "missing_anchors": ["domain", "tax_id", "phone", "street_address"],
        "conflicting_anchors": [],
        "proposed_anchors": [],
        "confidence": "low",
        "direct_observations": [
            "Canal @amcsolutionscolombia5796 con nombre 'AMC SOLUTIONS "
            "COLOMBIA' publicó video 'AMC SOLUTIONS COLOMBIA, Topografía "
            "Drones en Colombia.' el 03/01/2025 con 7 vistas.",
            "El video y canal no exhiben en su descripción dominio, NIT, "
            "teléfono ni dirección física.",
        ],
        "source_claims": [],
    },
    {
        "id": "DISC-001",
        "candidate_kind": "discard",
        "source_class": 3,
        "source_name": "Informa Colombia / Datacrédito Empresas",
        "url": (
            "https://www.informacolombia.com/directorio-empresas/"
            "informacion-empresa/amc-solutions-sas"
        ),
        "capture_date": "2026-10-08",
        "source_date": None,
        "relevant_period": "no aplicable",
        "identity_status": "discarded",
        "disposition": "discard",
        "audit_status": "pending",
        "matched_anchors": [],
        "missing_anchors": [],
        "conflicting_anchors": ["city", "industry_sector"],
        "proposed_anchors": [],
        "confidence": "high",
        "direct_observations": [
            "Ficha mercantil en Bogotá D.C. para Amc Solutions S A S con "
            "teléfono 3102869228 y actividad de alquiler y arrendamiento de "
            "maquinaria y equipo (CIIU 7730).",
        ],
        "source_claims": [],
    },
    {
        "id": "DISC-002",
        "candidate_kind": "discard",
        "source_class": 4,
        "source_name": "DeviantArt",
        "url": "https://www.deviantart.com/",
        "capture_date": "2026-10-08",
        "source_date": None,
        "relevant_period": "no aplicable",
        "identity_status": "discarded",
        "disposition": "discard",
        "audit_status": "pending",
        "matched_anchors": [],
        "missing_anchors": [],
        "conflicting_anchors": ["domain", "industry_sector"],
        "proposed_anchors": [],
        "confidence": "high",
        "direct_observations": [
            "Identificador numérico 901380770 utilizado como ID de recurso "
            "gráfico en URL sin relación ontológica con la sociedad mercantil "
            "colombiana.",
        ],
        "source_claims": [],
    },
    {
        "id": "DISC-003",
        "candidate_kind": "discard",
        "source_class": 4,
        "source_name": "Scribd",
        "url": (
            "https://es.scribd.com/document/469683933/"
            "BASE-DATOS-COMERCIO-VALLEDUPAR-xlsx"
        ),
        "capture_date": "2026-10-08",
        "source_date": None,
        "relevant_period": "no aplicable",
        "identity_status": "discarded",
        "disposition": "discard",
        "audit_status": "pending",
        "matched_anchors": [],
        "missing_anchors": [],
        "conflicting_anchors": ["legal_name"],
        "proposed_anchors": [],
        "confidence": "high",
        "direct_observations": [
            "La inspección del contenido completo del archivo no contiene "
            "mención de AMC Solutions ni NIT 901380770; el snippet provino "
            "de tokens de estilo CSS (AMCRxk, Amclfk).",
        ],
        "source_claims": [],
    },
]

results = audit_working_set_candidates(candidates)
all_passed = True
for r in results:
    status = "PASSED" if r.passed else "FAILED"
    print(f"[{status}] {r.candidate_id}: {r.reasons or 'OK'}")
    if not r.passed:
        all_passed = False

if all_passed:
    print("\nTODOS LOS CANDIDATOS PASARON LA AUDITORÍA INDEPENDIENTE.")
else:
    print("\nHAY CANDIDATOS QUE NO PASARON LA AUDITORÍA.")
