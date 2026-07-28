using Documenter

const REPOSITORY_ROOT = @__DIR__
const AIMORA_PATH = let
    configured = strip(get(ENV, "AIMORA_DOCS_ENGINE_PATH", ""))
    workspace_candidate = normpath(joinpath(REPOSITORY_ROOT, "..", "AIMORA.jl"))
    if !isempty(configured)
        abspath(configured)
    elseif isfile(joinpath(workspace_candidate, "src", "AIMORA.jl"))
        workspace_candidate
    else
        joinpath(REPOSITORY_ROOT, "packages", "AIMORA.jl")
    end
end

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
        "Contributing" => "development.md",
        "Public API" => "api.md",
    ],
    checkdocs = :none,
    warnonly = [:cross_references, :missing_docs],
)
