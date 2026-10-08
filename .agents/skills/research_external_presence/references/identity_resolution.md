# Identity Resolution Guidelines

## Objective

Prevent false attributions when evaluating external entities, directory records, and public mentions.

## Seed Anchor Identifiers

Anchor identifiers establish the ground truth of the target organization before external queries begin:

- Official web domain and known subdomains
- Legal entity name (razon social) and trade names
- Tax identification number or corporate registration ID (e.g. NIT, CIF, RFC)
- Registered phone numbers
- Corporate email domains
- Physical address and geographic locality (city, department/state)
- Core industry sector and professional activity scope

## Attribution Threshold

To attribute an external profile, record, or mention to the target organization:

1. **Direct match:** Must match at least two independent anchor identifiers (for example: official domain + phone number, or tax ID + physical address).
2. **Name alone is never sufficient:** Nominal similarity or identical names without a second anchor must never be attributed.
3. **Sector compatibility:** The activity sector must be compatible with the organization's verified domain.

## Decision Classes

For every evaluated external source or candidate:

### 1. Attributed (Confirmada)
- Satisfies the two-anchor threshold.
- Findings from this source can be linked to the organization.

### 2. Discarded Homonym (Descartada)
- Candidate shares a similar or identical name but has conflicting anchor data:
  - Different tax identification number.
  - Different jurisdiction or unrelated geographic location.
  - Incompatible business sector (e.g. software development vs. mining consultancy).
- Action: Record an explicit discard entry explaining the conflict to prevent duplicate investigation in future passes.

### 3. Ambiguous (No confirmada / Pendiente)
- Candidate matches on name and shows plausible industry overlap, but lacks a corroborating second anchor.
- Action:
  - Do not attribute findings or claims to the target organization.
  - Label as ambiguous in the working set.
  - Formulate an open question identifying the missing data point needed for resolution.
