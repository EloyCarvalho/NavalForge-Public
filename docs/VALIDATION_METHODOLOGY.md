# Validation Methodology

## Objective

The public validation exercise evaluates whether the NavalForge workflow produces coherent engineering outputs from a single controlled loading condition and whether the principal trends agree with an independent reference workflow.

## Demonstration model

The USV-12 example is a synthetic, generic high-speed monohull. Its geometry, mass distribution, payload arrangement, and operating inputs were created exclusively for public demonstration.

## Evaluation sequence

1. Define principal dimensions, loading condition, and environmental assumptions.
2. Assemble lightship, propulsion, fuel, systems, autonomy, sensors, and mission payload groups.
3. Calculate total displacement and combined centers.
4. Solve hydrostatic equilibrium, mean draft, and trim.
5. Evaluate the intact-stability response and the GZ curve for the same condition.
6. Estimate resistance, required power, dynamic trim, and dynamic draft.
7. Compare selected outputs and trends with an independent naval-design reference workflow.

## Acceptance approach

The public demonstration checks:

- Conservation and consistency of mass inputs
- Correct linkage between loading condition, CG, and CB
- Coherent equilibrium, draft, and trim response
- Consistent stability-curve shape and characteristic points
- Plausible resistance and power trends across speed
- Reproducible calculation state and report traceability

Exact production tolerances, detailed comparison tables, proprietary geometry, and project-specific acceptance limits are maintained outside this public repository.

## Limitations

The exercise is a software-verification case, not a validation of every possible vessel or physical regime. Results remain dependent on input quality, model assumptions, selected methods, and the professional review of a qualified engineer.
