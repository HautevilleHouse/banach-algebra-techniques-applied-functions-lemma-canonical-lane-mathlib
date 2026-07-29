import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure FunctionLemmaPackage (B : BanachAlgebra) where
  spectralRadiusFormula : Prop
  functionCalculus : Prop
  spectralMappingTheorem : Prop
  lemmaConclusion : Prop

structure FunctionLemmaEvidence {B : BanachAlgebra} (P : FunctionLemmaPackage B) where
  spectralRadiusFormulaClosed : P.spectralRadiusFormula
  functionCalculusClosed : P.functionCalculus
  spectralMappingTheoremClosed : P.spectralMappingTheorem
  lemmaConclusionClosed : P.lemmaConclusion

def FunctionLemmaClosed {B : BanachAlgebra} (P : FunctionLemmaPackage B) : Prop :=
  P.spectralRadiusFormula ∧ P.functionCalculus ∧ P.spectralMappingTheorem ∧ P.lemmaConclusion

theorem function_lemma_closed_from_evidence {B : BanachAlgebra} (P : FunctionLemmaPackage B) (E : FunctionLemmaEvidence P) :
    FunctionLemmaClosed P := by
  exact And.intro E.spectralRadiusFormulaClosed
    (And.intro E.functionCalculusClosed
      (And.intro E.spectralMappingTheoremClosed E.lemmaConclusionClosed))

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse