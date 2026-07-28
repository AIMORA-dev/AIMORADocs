using Documenter

const REPOSITORY_ROOT = @__DIR__
const AIMORA_PATH = joinpath(REPOSITORY_ROOT, "packages", "AIMORA.jl")

isfile(joinpath(AIMORA_PATH, "src", "AIMORA.jl")) ||
    error("Initialize packages/AIMORA.jl before building the documentation")

pushfirst!(LOAD_PATH, AIMORA_PATH)
using AIMORA

makedocs(
    sitename = "AIMORA",
    modules = [AIMORA],
    repo = Documenter.Remotes.GitHub("AIMORA-dev", "AIMORADocs"),
    remotes = Dict(
        AIMORA_PATH => Documenter.Remotes.GitHub("AIMORA-dev", "AIMORA.jl"),
    ),
    format = Documenter.HTML(
        canonical = "https://aimora-dev.github.io/AIMORADocs/",
        edit_link = "main",
        inventory_version = "0.1.0",
        prettyurls = get(ENV, "CI", "false") == "true",
    ),
    pages = [
        "Home" => "index.md",
        "Getting Started" => "getting-started.md",
        "Architecture" => "architecture.md",
        "Studies and Models" => "studies.md",
        "Cases and Catalogs" => "cases-and-catalogs.md",
        "Validation" => "validation.md",
        "Development Workspace" => "development.md",
        "Public API" => "api.md",
    ],
    checkdocs = :exports,
    warnonly = [:cross_references, :missing_docs],
)
