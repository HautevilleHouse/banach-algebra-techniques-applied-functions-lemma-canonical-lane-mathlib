import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure BanachAlgebraPackage where
  algebraCarrier : Type u
  norm : algebraCarrier → ℝ
  addition : algebraCarrier → algebraCarrier → algebraCarrier
  multiplication : algebraCarrier → algebraCarrier → algebraCarrier
  scalarMultiplication : ℝ → algebraCarrier → algebraCarrier
  normedSpace : Boolean
  completeness : Boolean
  submultiplicativity : Prop
  unitExistence : Prop

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  B.normedSpace ∧ B.completeness ∧ B.submultiplicativity ∧ B.unitExistence

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  normedSpaceClosed : B.normedSpace
  completenessClosed : B.completeness
  submultiplicativityClosed : B.submultiplicativity
  unitExistenceClosed : B.unitExistence

theorem banach_algebra_closed_from_evidence (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) :
    BanachAlgebraClosed B := by
  exact And.intro E.normedSpaceClosed (And.intro E.completenessClosed (And.intro E.submultiplicativityClosed E.unitExistenceClosed))

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse