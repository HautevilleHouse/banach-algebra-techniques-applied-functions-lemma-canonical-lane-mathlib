import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure BanachAlgebraObject where
  A : Type u
  norm : A → ℝ
  complete : Prop
  multiplicative : Prop
  unital : Prop
  spectralRadius : A → ℝ

structure AdmissibleClass where
  object : BanachAlgebraObject
  spectralMappingSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : spectralMappingSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FunctionalCalculusClosed A.object ∧ (A.spectralMappingSatisfied ∨ A.remainderRecorded)

def FunctionalCalculusClosed (B : BanachAlgebraObject) : Prop :=
  B.complete ∧ B.multiplicative ∧ B.unital

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse