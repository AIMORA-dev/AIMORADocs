# Validation

Validation separates three systems:

1. `AIMORA.jl` is the production Julia engine.
2. `BPAEMTPReference.jl` builds and runs the historical compiled program as an
   external oracle.
3. Controlled qualification aligns cases, stages, variables, units, and
   tolerances, then compares results.

The compiled reference is never loaded by a production AIMORA study.
Julia-authored analytic or contract tests are valuable independent checks, but
they are not labelled as compiled-reference equivalence.

The historical Fortran build intentionally uses its instrumented `-O0` path.
Modern optimization is unsafe for source that depends on legacy storage and
evaluation behavior.
