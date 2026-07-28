# AIMORA Documentation

This repository builds the unified documentation website for
[AIMORA.jl](https://github.com/AIMORA-dev/AIMORA.jl), a Julia platform for
power and energy systems.

The public engine, cases, catalogs, and historical reference are pinned as Git
submodules. Documentation changes can therefore be tested against exact
package revisions.

## Local build

```bash
git clone --recurse-submodules https://github.com/AIMORA-dev/AIMORADocs.git
cd AIMORADocs
julia --project=. -e 'using Pkg; Pkg.instantiate()'
julia --project=. make.jl
```

Open `build/index.html`. GitHub Actions publishes the same build at
<https://aimora-dev.github.io/AIMORADocs/>.

Only public repositories are initialized by the documentation build. The
private solver is documented as an installation option, but its source is
never copied into the website.
