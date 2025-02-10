using TestPackage: TestPackage
using Documenter: Documenter, DocMeta, deploydocs, makedocs

DocMeta.setdocmeta!(
  TestPackage, :DocTestSetup, :(using TestPackage); recursive=true
)

include("make_index.jl")

makedocs(;
  modules=[TestPackage],
  authors="ITensor developers <support@itensor.org> and contributors",
  sitename="TestPackage.jl",
  format=Documenter.HTML(;
    canonical="https://ITensor.github.io/TestPackage.jl",
    edit_link="main",
    assets=String[],
  ),
  pages=["Home" => "index.md", "Reference" => "reference.md"],
)

deploydocs(;
  repo="github.com/ITensor/TestPackage.jl", devbranch="main", push_preview=true
)
