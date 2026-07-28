# AIMORA Documentation

This repository builds the unified documentation website for
[AIMORA.jl](https://github.com/AIMORA-dev/AIMORA.jl), a Julia platform for
power and energy systems.

The public engine, cases, catalogs, and historical reference are pinned as Git
submodules. Documentation changes are therefore checked against exact public
package revisions without depending on internal development repositories.

## Structure

```text
src/                  public Markdown documentation
make.jl               Documenter build entrypoint
check.jl              links, structure, API, and publication-boundary checks
Makefile              local check and build commands
packages/             pinned public package inputs
references/           pinned public reference input
```

## Local build

```bash
git clone --recurse-submodules https://github.com/AIMORA-dev/AIMORADocs.git
cd AIMORADocs
julia --project=. -e 'using Pkg; Pkg.instantiate()'
make check
make build
```

Open `build/index.html`. GitHub Actions publishes the same build at
<https://aimora-dev.github.io/AIMORADocs/>.

Only public repositories and public product information are inputs to this
website. Internal source, repository names, paths, validation records, and
development instructions are rejected by `check.jl`.
