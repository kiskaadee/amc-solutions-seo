# Source Discovery Strategy

## Objective

Guide the selection of external source classes and query boundaries based on research goals.

## Source Classes

Rather than searching aimlessly or treating every platform as mandatory, choose source classes aligned with the investigation objectives:

### Class 1: Official and Government Registries
- **Purpose:** Inspect registered legal filings, corporate registration dates, official status, and public contract disclosures.
- **Targets:** National tax registries, chambers of commerce, trade registries, and public procurement portals (e.g. SECOP).
- **Key observable data:** Stated legal entity name, tax/fiscal ID, registered address, authorized economic activities, public contract awards.

### Class 2: Local and Map Platforms
- **Purpose:** Observe platform entity listings, map markers, and displayed public profiles.
- **Targets:** Google Maps / Google Business Profile, Bing Places, OpenStreetMap.
- **Key observable data:** Profile existence, displayed name, displayed address, phone number, website link, category labels, published hours, reviews, and claimed or verified indicators when explicitly exposed.

### Class 3: Professional Networks and Commercial Directories
- **Purpose:** Observe commercial directory entries and professional platform profiles.
- **Targets:** LinkedIn company pages, chamber member directories, industry trade associations, accredited business portals.
- **Key observable data:** Profile existence, displayed company descriptions, self-reported employee counts, listed service categories, personnel mentions, external links.

### Class 4: Unstructured Citations and Media
- **Purpose:** Inspect public brand mentions, press reports, project announcements, and client or partner citations.
- **Targets:** Regional news outlets, industry trade publications, client portfolio lists, press releases.
- **Key observable data:** Contextual brand mentions, co-citations with related entities, published article dates.

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
3. **Diminishing returns:** If three consecutive search variations within a source class produce no new relevant entities or materially new evidence, stop searching that class.
4. **Disambiguation ceiling:** When a candidate remains ambiguous after checking available public anchors, halt queries for that entity and log an open question rather than entering open-ended rabbit holes.
