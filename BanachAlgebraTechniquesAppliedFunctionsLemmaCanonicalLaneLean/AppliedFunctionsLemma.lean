import BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.BanachAlgebraPackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure AppliedFunctionsLemmaPackage (B : BanachAlgebraPackage) where
  functionSpace : Type u
  algebraAction : B.algebraCarrier → functionSpace → functionSpace
  spectralRadiusFormula : Prop
  functionalCalculusExists : Prop
  invarianceUnderAlgebra : Prop

def AppliedFunctionsLemmaClosed (B : BanachAlgebraPackage) (F : AppliedFunctionsLemmaPackage B) : Prop :=
  BanachAlgebraClosed B ∧ F.spectralRadiusFormula ∧ F.functionalCalculusExists ∧ F.invarianceUnderAlgebra

structure AppliedFunctionsLemmaEvidence (B : BanachAlgebraPackage) (F : AppliedFunctionsLemmaPackage B) where
  banachAlgebraClosed : BanachAlgebraClosed B
  spectralRadiusFormulaClosed : F.spectralRadiusFormula
  functionalCalculusExistsClosed : F.functionalCalculusExists
  invarianceUnderAlgebraClosed : F.invarianceUnderAlgebra

theorem applied_functions_lemma_closed_from_evidence (B : BanachAlgebraPackage) (F : AppliedFunctionsLemmaPackage B) (E : AppliedFunctionsLemmaEvidence B F) :
    AppliedFunctionsLemmaClosed B F := by
  exact And.intro E.banachAlgebraClosed (And.intro E.spectralRadiusFormulaClosed (And.intro E.functionalCalculusExistsClosed E.invarianceUnderAlgebraClosed))

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse