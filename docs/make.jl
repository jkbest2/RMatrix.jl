using RMatrix
using Documenter

makedocs(;
    modules=[RMatrix],
    authors="John K Best",
    repo="https://github.com/jkbest2/RMatrix.jl/blob/{commit}{path}#L{line}",
    sitename="RMatrix.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jkbest2.github.io/RMatrix.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jkbest2/RMatrix.jl",
)
