import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.GelfandTransform

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure SpectralRadiusFormulaPackage {B : BanachAlgebraPackage} (G : GelfandTransformPackage B) where
  spectralRadius : B.algebra → ℝ
  spectralRadiusLimit : Prop
  formula : Prop
  spectralRadiusFormulaClosed : Prop

structure SpectralRadiusFormulaEvidence {B : BanachAlgebraPackage} {G : GelfandTransformPackage B} (S : SpectralRadiusFormulaPackage G) where
  spectralRadiusLimit_holds : S.spectralRadiusLimit
  formula_holds : S.formula

def SpectralRadiusFormulaClosed {B : BanachAlgebraPackage} {G : GelfandTransformPackage B} (S : SpectralRadiusFormulaPackage G) : Prop :=
  S.spectralRadiusLimit ∧ S.formula

theorem spectral_radius_formula_closed_from_evidence {B : BanachAlgebraPackage} {G : GelfandTransformPackage B} (S : SpectralRadiusFormulaPackage G) (E : SpectralRadiusFormulaEvidence S) :
    SpectralRadiusFormulaClosed S := by
  exact And.intro E.spectralRadiusLimit_holds E.formula_holds

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
