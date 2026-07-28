# AIMORA

**Analytical Integration for Multiphase Overvoltage and Response Analysis**

AIMORA is a Julia-native platform for power and energy systems. It combines
open engineering interfaces with separately distributed production
capabilities:

- public study contracts, project schemas, models, cases, catalogs, and
  reporting boundaries;
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
| [BPAEMTPReference.jl](https://github.com/AIMORA-dev/BPAEMTPReference.jl) | Public | Compiled historical reference |
| [AIMORACases.jl](https://github.com/AIMORA-dev/AIMORACases.jl) | Public | Versioned examples and benchmark inputs |
| [AIMORACatalogs.jl](https://github.com/AIMORA-dev/AIMORACatalogs.jl) | Public | Open equipment data and study facets |

Installation and licensing information for production capabilities is
published through the product distribution channel.
