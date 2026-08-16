# Public Architecture Overview

NavalForge is organized around traceable engineering states rather than isolated spreadsheets. A change to geometry, loading, fuel, equipment, or mission payload propagates through the relevant calculations and updates the review state.

## Functional domains

| Domain | Public description |
|---|---|
| Requirements | Mission, operating condition, limits, and design targets |
| Geometry | Parametric small-craft definition and hydrostatic representation |
| Weights and centers | Grouped mass model, loading conditions, CG tracking, and audit trail |
| Hydrostatics | Displacement, buoyancy, drafts, trim, and equilibrium |
| Intact stability | GZ response, characteristic angles, areas, and review criteria |
| Performance | Resistance, power, speed, planing trim, and dynamic draft |
| Variants | Controlled comparison of design alternatives |
| Reporting | Calculation provenance, assumptions, results, and review status |

## Public boundary

Only functional descriptions and synthetic evidence are published here. Algorithms, production services, detailed schemas, proprietary coefficients, CAD translators, real datasets, and project-specific rule configurations remain private.
