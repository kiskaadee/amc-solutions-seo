---
name: research-external-presence
description: >-
  Investigate an organization's public presence outside its own website,
  resolving identity before attribution and separating observations from claims.
---

# Research External Presence

## Use when
- Investigating an organization's digital footprint across external sources.
- Discovering third-party listings, registry entries, platform profiles, or citations.
- Not for inspecting the organization's own website (use site discovery).
- Not for formalizing canonical evidence records in `evidence/` (use record_evidence).

## Steps
1. **Define seed identifiers.** Collect verified anchor identifiers from known internal data: legal and commercial names, domain, address, phones, email domains, and tax or registry IDs.
2. **Select discovery strategy.** Choose relevant source classes based on the agreed research scope (official registries, platform entities, commercial directories, press/citations) following `references/source_discovery.md`.
3. **Execute bounded search.** Query third parties within the agreed stopping boundary, logging inspected URLs, queries, and capture dates.
4. **Resolve identity before attribution.** Evaluate each candidate against seed identifiers following `references/identity_resolution.md`:
   - Attributed: meets the multi-anchor threshold.
   - Discarded: conflicting identifiers or homonym in unrelated domain/jurisdiction.
   - Ambiguous: partial overlap with insufficient proof. Halt attribution and record open question.
5. **Classify findings in working set.** For each evaluated source, record entries in the research working set using the taxonomy in `references/epistemic_rules.md`:
   - Direct observations vs. source claims.
   - Corroboration across independent sources.
   - Provenance, capture date, and temporal validity of source data.
   - Scoped negative findings for unobserved entities.
   - Open questions for gaps or contradictions.

## Your call
- Research scope and stopping boundary: target source classes and query depth (step 2, step 3).
- Target organization and known initial seed identifiers (step 1).
- Resolution of ambiguous candidates: pursue further or discard (step 4).

## Done when
- The research working set covers the agreed scope, with every evaluated candidate resolved (attributed, discarded, or flagged ambiguous) and all findings classified by epistemic status with provenance and temporal scope.

## Hands off to
- `record_evidence`: to transform findings from the research working set into canonical repository evidence records.
- `review_findings`: to test comprehension of findings and boundary discipline.
