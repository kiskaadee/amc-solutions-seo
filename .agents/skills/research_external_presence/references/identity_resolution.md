# Identity Resolution Guidelines

## Objective

Prevent false attributions when evaluating external entities, directory records, and public mentions.

## Seed Anchor Identifiers

Anchor identifiers provide the initial canonical reference set used to evaluate external candidates before attribution:

- Official web domain and known subdomains
- Legal entity name (razon social) and trade names
- Tax identification number or corporate registration ID (e.g. NIT, CIF, RFC)
- Registered phone numbers
- Corporate email domains
- Physical street address and geographic locality (city, department/state)
- Core industry sector and professional activity scope

## Anchor Strength and Evidentiary Weight

Anchor identifiers vary significantly in evidentiary strength:

- **High strength (unique identifiers):** Tax identification numbers, corporate registration IDs, official canonical web domain, and corporate email addresses on the verified domain.
- **Moderate strength (specific contact points):** Exact registered phone numbers and specific physical street addresses.
- **Weak strength (general descriptors):** Locality or city alone, and nominal brand similarity alone. Two weak anchors (for example, brand name and city) are insufficient on their own without at least one high or moderate anchor.

## Attribution Threshold

To attribute an external profile, record, or mention to the target organization:

1. **Evidentiary threshold:** Attribute only when there are sufficient independent anchors to establish identity with high confidence. At least two independent anchors are normally required, with stronger identifiers carrying greater evidentiary weight.
2. **Name alone is never sufficient:** Nominal similarity or identical names without corroborating anchors must never be attributed.
3. **Sector as consistency check:** Sector similarity is weak evidence for attribution and cannot prove identity on its own. Sector mismatch serves as a consistency and contradiction check: a clear mismatch warrants scrutiny or discard, while accounting for corporate diversification, broad corporate purposes, or simplified directory taxonomy.

## Decision Classes

For every evaluated external source or candidate:

### 1. Attributed (Confirmada)
- Satisfies the attribution threshold with high confidence.
- Findings from this source can be linked to the organization.

### 2. Discarded Homonym (Descartada)
- Candidate shares a similar or identical name but has conflicting anchor data:
  - Different tax identification number.
  - Different jurisdiction or unrelated geographic location.
  - Incompatible business sector (e.g. software development vs. mining consultancy).
- Action: Record an explicit discard entry explaining the conflict to prevent duplicate investigation in future passes.

### 3. Ambiguous (No confirmada / Pendiente)
- Candidate matches on name and shows plausible industry overlap, but lacks sufficient anchor strength to confirm identity.
- Action:
  - Do not attribute findings or claims to the target organization.
  - Label as ambiguous in the working set.
  - Formulate an open question identifying the missing data point needed for resolution.
