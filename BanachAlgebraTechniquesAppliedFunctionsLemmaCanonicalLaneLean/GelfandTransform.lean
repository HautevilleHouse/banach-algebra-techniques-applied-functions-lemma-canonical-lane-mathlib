import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.BanachAlgebra

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure GelfandTransformPackage (B : BanachAlgebraPackage) where
  characterSpace : Type u
  gelfandMap : B.algebra → (characterSpace → ℂ)
  isometric : Prop
  preservesMultiplication : Prop
  maxModulusPrinciple : Prop

structure GelfandTransformEvidence {B : BanachAlgebraPackage} (G : GelfandTransformPackage B) where
  isometric_holds : G.isometric
  preservesMultiplication_holds : G.preservesMultiplication

def GelfandTransformClosed {B : BanachAlgebraPackage} (G : GelfandTransformPackage B) : Prop :=
  G.isometric ∧ G.preservesMultiplication

theorem gelfand_transform_closed_from_evidence {B : BanachAlgebraPackage} (G : GelfandTransformPackage B) (E : GelfandTransformEvidence G) :
    GelfandTransformClosed G := by
  exact And.intro E.isometric_holds E.preservesMultiplication_holds

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
