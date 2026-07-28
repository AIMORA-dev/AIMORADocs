# AIMORA

**Analytical Integration for Multiphysics Operations and Response Analysis**

AIMORA is a Julia-native platform for power and energy systems. It combines
an open engineering core with an optional proprietary numerical solver:

- public study contracts, project schemas, models, cases, catalogs, and
  reporting boundaries;
- an authorized full engine for production electromagnetic-transient studies;
- an external compiled BPA EMTP reference for qualification, never for the
  production timestep loop.

The current authorized engine covers the named
`aimora_bpa_emtp_replacement_v1` EMT target set. Power flow, short circuit,
protection, arc flash, dynamics, optimization, and a graphical interface are
platform directions, not present implementation claims.

## Repositories

| Repository | Visibility | Purpose |
|---|---:|---|
| [AIMORA.jl](https://github.com/AIMORA-dev/AIMORA.jl) | Public | Open engine contracts and package entrypoint |
| `AIMORASolvers.jl` | Private | Proprietary solver source |
| [BPAEMTPReference.jl](https://github.com/AIMORA-dev/BPAEMTPReference.jl) | Public | Compiled historical reference |
| [AIMORACases.jl](https://github.com/AIMORA-dev/AIMORACases.jl) | Public | Versioned examples and benchmark inputs |
| [AIMORACatalogs.jl](https://github.com/AIMORA-dev/AIMORACatalogs.jl) | Public | Open equipment data and study facets |
| `AIMORAValidation` | Private | Cross-engine qualification |
| `AIMORAWorkspace` | Private | Multi-repository development automation |

The secrecy boundary is GitHub repository access control. Authorized local
workspaces contain normal readable Julia files, so editing, testing, profiling,
and precompilation do not incur encryption or decryption overhead.
