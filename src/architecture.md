# Architecture

## Ownership boundary

```text
AIMORA.jl
├── core, models, studies, I/O       public
└── src/julia/solvers                private Git submodule

BPAEMTPReference.jl                  public external oracle
AIMORAValidation                     private comparison orchestration
AIMORACases.jl                       public canonical cases
AIMORACatalogs.jl                    public model data
```

The public engine records a Git commit pointer for the private solver, not its
files. A public clone therefore contains no proprietary solver blob. An
authorized recursive clone resolves the same pointer into normal local source.

## Numerical backends

CPU execution is the portable baseline. Existing CUDA batching is an optional,
validated path rather than the architecture boundary. Additional GPU families
should use backend-neutral Julia kernels where measurement supports them, with
explicit capability detection and CPU fallback. “Any GPU” is not claimed
until AMD, Intel, Apple, and other selected backends have individual tests.

## Package layers

1. Deck and project intake validates physical data and units.
2. Typed domain models own assets and study-specific facets.
3. Study orchestration selects validated numerical owners.
4. Solvers mutate explicit state and produce physical results.
5. Reporters export quantities with units, bases, and assumptions.

The GUI must consume these APIs rather than creating a second model schema.
