# NavalForge R&D Public Record — Prototype 005

**Date:** 2026-08-23  
**Status:** Synthetic research demonstration  
**Scope:** Large-angle intact-stability geometry workflow

## What this milestone demonstrates

Prototype 005 extends the NavalForge research workflow from initial stability into a geometric large-angle righting-arm calculation for a fully synthetic small-craft hull.

The internal workflow, at a high level, is:

`parametric 3D hull → displacement equilibrium → prescribed heel → re-equilibrated heave/pitch → submerged-volume centroid → geometric GZ curve`

Unlike the preceding initial-stability prototype, the large-angle result is not obtained by extrapolating `GZ ≈ GM·sin(φ)` across the entire heel range. The synthetic 3D hull is re-evaluated geometrically at each sampled heel angle.

## Synthetic demonstration case

The public case uses an intentionally generic, non-production hull:

- Length: 6.00 m
- Beam: 2.20 m
- Design displacement: 1,800 kg
- LCG: 2.350 m from transom
- KG: 0.550 m above the model baseline
- TCG: 0.000 m
- Water density: 1,025 kg/m³

No customer geometry, production vessel data, commercial design information, or field-test evidence is used in this record.

## Recorded synthetic results

For the current synthetic geometry and loading condition:

- GZ at 5°: approximately **0.0670 m**
- GZ at 10°: approximately **0.1285 m**
- GZ at 30°: approximately **0.2892 m**
- Maximum sampled GZ: approximately **0.3373 m at 45°**
- Mathematical loss of positive GZ for the modeled closed body: approximately **97.9°**
- Area under the GZ curve, 0–30°: approximately **0.0864 m·rad**

A useful internal consistency check is that the geometric GZ at 5° is very close to the preceding small-angle prediction based on initial GM. This is expected physical behavior near the upright condition.

## Important interpretation

The approximately 97.9° value is **not an operational heel limit** and must not be interpreted as evidence that a real vessel could safely heel to that angle.

At this stage the synthetic hull is treated as a closed watertight body. Real intact-stability assessment must consider, among other items:

- non-weathertight openings and downflooding;
- actual freeboard and deck-edge immersion;
- tank free-surface effects;
- realistic loading conditions and centers of gravity;
- wind and passenger/cargo effects where applicable;
- applicable statutory, flag-state, ISO, class, or other regulatory criteria;
- independent verification and professional engineering review.

## Public/private separation

This public record intentionally documents the engineering milestone and synthetic outputs without publishing the production research solver or internal development evidence. Source code, internal tests, detailed solver implementation, and development artifacts remain in the private NavalForge repository.

## Next research milestone

The next stability milestone is to introduce multiple loading conditions and explicit downflooding points so that the usable stability range is limited by physical openings rather than only by the mathematical zero crossing of a closed-body GZ curve.

---

NavalForge is an engineering decision-support platform under active development. This public research record does not constitute vessel certification, class approval, regulatory approval, or a substitute for professional engineering review.
