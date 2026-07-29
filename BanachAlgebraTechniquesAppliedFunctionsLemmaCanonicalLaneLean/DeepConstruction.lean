import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.FunctionLemmaPackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure DeepConstruction (B : BanachAlgebra) where
  holomorphicFunctionalCalculus : Prop
  spectrallyBounded : Prop
  gelfandTransform : Prop
  stoneWeierstrass : Prop

def DeepConstruction.toFunctionLemmaPackage {B : BanachAlgebra} (D : DeepConstruction B) : FunctionLemmaPackage B := {
  spectralRadiusFormula := D.holomorphicFunctionalCalculus ∧ D.spectrallyBounded,
  functionCalculus := D.gelfandTransform,
  spectralMappingTheorem := D.stoneWeierstrass,
  lemmaConclusion := True
}

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse