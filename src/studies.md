# Studies and Models

A physical asset has one identity, topology, rating, and provenance. Each
study adds a typed parameter facet. This is the right analogue of study tabs
in commercial power-system tools:

| Shared asset | Power flow facet | Short-circuit facet | EMT facet |
|---|---|---|---|
| terminals, ratings, status | steady-state impedance and controls | sequence data and grounding | geometry, frequency dependence, dynamic state |

A study validates only the information it requires. Detailed data may produce
a simpler representation only through a documented conversion; missing
detailed parameters must never be silently invented.

## Current maturity

| Study | Status | Availability |
|---|---|---|
| EMT | Implemented for the named accepted target set | Authorized full engine |
| Line constants | Implemented | Authorized full engine |
| Cable constants | Implemented | Authorized full engine |
| Power flow | Planned contract | Not yet implemented |
| Short circuit | Planned contract | Not yet implemented |
| Protection | Planned contract | Not yet implemented |
| Arc flash | Planned contract | Not yet implemented |

New studies extend the shared catalog and orchestration interfaces. They do
not belong in one growing `catalog.jl` solver file.
