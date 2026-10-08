# Source Discovery Strategy

## Objective

Guide the selection of external source classes and query boundaries based on research goals.

## Source Classes

Rather than searching aimlessly or treating every platform as mandatory, choose source classes aligned with the investigation objectives:

### Class 1: Official and Government Registries
- **Purpose:** Establish legal identity, registration dates, corporate status, and formal disclosures.
- **Targets:** National tax registries, chambers of commerce, trade registries, and public procurement portals (e.g. SECOP).
- **Key data:** Formal legal name, tax/fiscal ID, registered address, authorized activities, public contract awards.

### Class 2: Local and Map Platforms
- **Purpose:** Assess local search presence, claimed business profiles, and physical store/office visibility.
- **Targets:** Google Maps / Google Business Profile, Bing Places, OpenStreetMap.
- **Key data:** Claimed status, primary and secondary categories, published business hours, customer reviews, local pack eligibility.

### Class 3: Professional Networks and Commercial Directories
- **Purpose:** Inspect commercial listings, professional credentials, and industry standing.
- **Targets:** LinkedIn company pages, chamber member directories, industry trade associations, accredited business portals.
- **Key data:** Stated employee counts, service specialties, executive leadership, external backlinks.

### Class 4: Unstructured Citations and Media
- **Purpose:** Identify brand mentions, press coverage, project milestones, and client/partner citations.
- **Targets:** Regional news outlets, industry trade publications, client portfolio lists, press releases.
- **Key data:** Contextual brand mentions, public announcements, co-citations with related entities.

## Query Construction Patterns

Use structured queries combining anchor identifiers:

- Brand and locality: `"<brand name>" "<city>"`
- Legal entity name: `"<legal name>"`
- Domain search: `link:<domain>` or `"<domain>"` -site:<domain>
- Identifier search: `"<tax ID>"`
- Targeted platform query: `site:<target-platform.com> "<brand name>"`

## Stopping Boundary Heuristics

Research must be bounded to remain focused:

1. **Agreed scope:** Select the specific source classes required for the current investigation cycle.
2. **Query depth:** Limit search result evaluation to the top 10 to 20 organic results per query.
3. **Diminishing returns:** If three consecutive search variations within a source class yield no new attributed or candidate entities, stop searching that class.
4. **Disambiguation ceiling:** When a candidate remains ambiguous after checking available public anchors, halt queries for that entity and log an open question rather than entering open-ended rabbit holes.
