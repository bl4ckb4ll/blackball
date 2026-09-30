# Large-employer opportunity map

This directory generalizes the employer work beyond the initial `FAANG/` seed.

The unit is not a job title. The target relation is:

```text
employer
→ business / practice / service line / operating unit
→ team or department
→ hiring or budget authority where public evidence exists
→ work the unit buys
→ current entry gate
→ evidence date and source
```

Different employers expose different public structures:

- technology companies often expose teams and product organizations;
- consultancies expose practices, industries, capabilities, and integrated internal teams;
- banks expose lines of business plus cross-enterprise functions such as technology, operations, risk, finance, and controls;
- manufacturers expose business segments, plants, engineering/manufacturing functions, supply chain, service, and corporate functions;
- facilities/real-estate firms expose client service lines and account organizations rather than a simple product hierarchy.

Do not normalize those differences away.

## Current seed set

The initial technology cases remain under `../FAANG/` and are now treated as one subset of a larger employer universe.

This pass adds or promotes:

- IBM
- Booz Allen Hamilton
- McKinsey & Company
- Bain & Company
- JPMorganChase
- Capital One
- Wells Fargo
- Stryker
- Walmart corporate
- Cummins
- CBRE
- JLL
- Daifuku Services America / the ELS recruiting surface

See `catalog.tsv` for the cross-employer index and `entry-gates.tsv` for current explicit access routes.

## Research order

For each employer:

1. identify the public organizational surface;
2. distinguish formal business units from recruiting categories;
3. attach current requisitions to the narrowest supported node;
4. identify explicit early-career, apprenticeship, technician, rotational, or other entry gates;
5. identify named hiring/budget authority only when direct evidence supports it;
6. record the worker's cost before feedback: degree requirement, relocation, unpaid time, full-time program, travel, licensing, clearance, etc.;
7. repeat the snapshot so stale advice becomes visible.

The catalog is successful when it turns "large prestigious employer" into inspectable, dated institutional structure.
