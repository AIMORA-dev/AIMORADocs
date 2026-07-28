# Getting Started

## Public open core

```julia
using Pkg
Pkg.add(url = "https://github.com/AIMORA-dev/AIMORA.jl")

using AIMORA
AIMORA.solver_status()
```

The returned mode is `:open_core`. Public project structures, study
descriptors, validation, tables, and open models remain usable.

## Authorized full engine

```bash
git clone --recurse-submodules git@github.com:AIMORA-dev/AIMORA.jl.git
cd AIMORA.jl
julia --project=. -e 'using Pkg; Pkg.test()'
```

Authorized users receive the private solver at `src/julia/solvers`.
`AIMORA.solver_status().mode` then returns `:full_engine`.

The local solver is ordinary source code. Do not encrypt the checkout or
commit copied solver files to a public repository. GitHub private-repository
permissions are the access boundary.

## Complete development workspace

The private `AIMORAWorkspace` repository pins all component repositories and
provides commands to initialize, update, test, and publish coordinated changes.
See [Development Workspace](development.md).
