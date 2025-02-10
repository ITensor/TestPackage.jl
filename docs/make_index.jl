using Literate: Literate
using TestPackage: TestPackage

Literate.markdown(
  joinpath(pkgdir(TestPackage), "examples", "README.jl"),
  joinpath(pkgdir(TestPackage), "docs", "src");
  flavor=Literate.DocumenterFlavor(),
  name="index",
)
