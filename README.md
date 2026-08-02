# AIMORA Documentation

This repository builds the unified documentation website for
[AIMORA.jl](https://github.com/AIMORA-dev/AIMORA.jl), a Julia platform for
power and energy systems.

The documentation consumes an external `AIMORA.jl` checkout through
`AIMORA_DOCS_ENGINE_PATH` or a sibling directory. It does not duplicate public
packages as nested submodules.

## Structure

```text
src/                  public Markdown documentation
make.jl               Documenter build entrypoint
check.jl              links, structure, API, and publication-boundary checks
Makefile              local check and build commands
```

## Local build

```bash
git clone https://github.com/AIMORA-dev/AIMORADocs.git
git clone https://github.com/AIMORA-dev/AIMORA.jl.git
cd AIMORADocs
julia --project=. -e 'using Pkg; Pkg.instantiate()'
make check
make build
```

Open `build/index.html`. GitHub Actions publishes the same build at
<https://aimora-dev.github.io/AIMORADocs/>.

Place both clones in the same parent directory, or set
`AIMORA_DOCS_ENGINE_PATH` explicitly. Only public repositories and public
product information are inputs to this website. Internal source, repository
names, paths, validation records, and development instructions are rejected by
`check.jl`.
