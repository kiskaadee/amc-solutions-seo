"""
Auditor independiente de evidencia externa para AMC Solutions.

Verifica el cumplimiento de los contratos epistémicos y de admisibilidad
de los candidatos evaluados en el conjunto de trabajo de investigación externa.
"""

from dataclasses import dataclass
from typing import Any


@dataclass
class AuditResult:
    candidate_id: str
    passed: bool
    reasons: list[str]


class IndependentEvidenceAuditor:
    """Auditor independiente de evidencia empírica."""

    PROMOTIONAL_TERMS: tuple[str, ...] = (
        "líder",
        "el mejor",
        "mayor prestigio",
        "reconocido como líder",
        "excelencia insuperable",
    )

    @classmethod
    def audit_candidate(
        cls, candidate: dict[str, Any], raw_context: dict[str, Any] | None = None
    ) -> AuditResult:
        reasons: list[str] = []
        raw = raw_context or {}

        cid = str(candidate.get("id", "UNKNOWN"))
        kind = candidate.get("candidate_kind")
        disposition = candidate.get("disposition")
        identity_status = candidate.get("identity_status")

        # 1. Validación de descartes (discard)
        if kind == "discard":
            if disposition != "discard":
                reasons.append(
                    f"Candidato de tipo 'discard' tiene disposición '{disposition}' "
                    "en lugar de 'discard'."
                )
            conflicts = candidate.get("conflicting_anchors", [])
            if not conflicts:
                reasons.append("El descarte debe documentar 'conflicting_anchors'.")

            # Verificación empírica de conflictos declarados en observaciones
            obs_text = " ".join(candidate.get("direct_observations", [])).lower()
            for conflict in conflicts:
                if conflict == "tax_id" and not any(
                    k in obs_text for k in ["nit", "tax_id", "tributar"]
                ):
                    reasons.append(
                        "Conflicto de 'tax_id' declarado sin respaldo en "
                        "observaciones directas."
                    )
                if conflict == "city" and not any(
                    k in obs_text for k in ["bogota", "bogotá", "medellin", "cali"]
                ):
                    reasons.append(
                        "Conflicto de 'city' declarado sin mención geográfica "
                        "en observaciones directas."
                    )
            return AuditResult(
                candidate_id=cid, passed=len(reasons) == 0, reasons=reasons
            )

        # 2. Validación de observaciones negativas delimitadas
        if kind == "negative_observation":
            if identity_status != "not_applicable":
                reasons.append(
                    "Observación negativa debe tener identity_status: 'not_applicable'."
                )
            if candidate.get("matched_anchors"):
                reasons.append(
                    "Observación negativa no puede contener matched_anchors."
                )
            if candidate.get("confidence") != "negative_scoped":
                reasons.append(
                    "Observación negativa debe tener confidence: 'negative_scoped'."
                )
            obs = candidate.get("direct_observations", [])
            if not obs:
                reasons.append(
                    "Observación negativa debe registrar el alcance de la muestra."
                )
            return AuditResult(
                candidate_id=cid, passed=len(reasons) == 0, reasons=reasons
            )

        # 3. Validación de candidatos de presencia (presence)
        if kind == "presence":
            matched = candidate.get("matched_anchors", [])

            if identity_status == "attributed":
                if disposition != "admit":
                    reasons.append(
                        "Candidato con identidad atribuida debe tener disposición "
                        "'admit'."
                    )
                if len(matched) < 2 and not raw.get("allow_single_unique_anchor"):
                    # Verificar si cuenta con anclas suficientes
                    reasons.append(
                        f"Atribución requiere al menos 2 anclas independientes, "
                        f"halladas: {len(matched)}."
                    )
            elif identity_status == "ambiguous":
                if disposition != "hold":
                    reasons.append(
                        "Candidato ambiguo debe tener disposición 'hold' "
                        f"(tiene '{disposition}')."
                    )
                if not candidate.get("missing_anchors"):
                    reasons.append(
                        "Candidato ambiguo debe registrar 'missing_anchors' "
                        "para resolución futura."
                    )
            else:
                reasons.append(
                    f"Estado de identidad '{identity_status}' no válido para "
                    "'presence'."
                )

            # Separación epistémica: afirmaciones promocionales
            for obs_item in candidate.get("direct_observations", []):
                for promo in cls.PROMOTIONAL_TERMS:
                    if promo in obs_item.lower():
                        reasons.append(
                            f"Término promocional o no evidenciado '{promo}' "
                            "en direct_observations."
                        )

            # Bounding temporal: evitar que fuentes históricas se declaren actuales
            relevant_period = str(candidate.get("relevant_period", "")).lower()
            source_date = str(candidate.get("source_date", "")).lower()
            if "2023" in source_date or "2020" in relevant_period:
                if (
                    "actual 2026" in relevant_period
                    or "vigente 2026" in relevant_period
                ):
                    reasons.append(
                        "Violación de validez temporal: registro histórico "
                        "extrapolado al presente sin evidencia continua."
                    )

            # Verificación de URL válida
            url = str(candidate.get("url", ""))
            if not url.startswith("http"):
                reasons.append(f"URL de candidato inválida o ausente: '{url}'.")

            return AuditResult(
                candidate_id=cid, passed=len(reasons) == 0, reasons=reasons
            )

        reasons.append(f"Tipo de candidato desconocido: '{kind}'.")
        return AuditResult(candidate_id=cid, passed=False, reasons=reasons)


def audit_working_set_candidates(
    candidates: list[dict[str, Any]],
) -> list[AuditResult]:
    results: list[AuditResult] = []
    for c in candidates:
        res = IndependentEvidenceAuditor.audit_candidate(c)
        results.append(res)
    return results


if __name__ == "__main__":
    print("Auditor independiente cargado correctamente.")
