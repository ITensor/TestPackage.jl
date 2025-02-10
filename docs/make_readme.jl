using Literate: Literate
using TestPackage: TestPackage

Literate.markdown(
  joinpath(pkgdir(TestPackage), "examples", "README.jl"),
  joinpath(pkgdir(TestPackage));
  flavor=Literate.CommonMarkFlavor(),
  name="README",
)
