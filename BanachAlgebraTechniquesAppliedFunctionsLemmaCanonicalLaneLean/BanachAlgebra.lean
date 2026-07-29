import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure BanachAlgebraPackage where
  algebra : Type u
  norm : algebra → ℝ
  multiplication : algebra → algebra → algebra
  addition : algebra → algebra → algebra
  scalar : ℂ → algebra → algebra
  one : algebra
  normedAlgebra : Prop
  complete : Prop
  multiplicativeInequality : Prop
  unitMultiplicativity : Prop
  spectralRadiusDefined : Prop

structure BanachAlgebraEvidence (A : BanachAlgebraPackage) where
  normedAlgebraClosed : A.normedAlgebra
  completeClosed : A.complete
  multiplicativeInequalityClosed : A.multiplicativeInequality
  unitMultiplicativityClosed : A.unitMultiplicativity
  spectralRadiusDefinedClosed : A.spectralRadiusDefined

def BanachAlgebraClosed (A : BanachAlgebraPackage) : Prop :=
  A.normedAlgebra ∧ A.complete ∧ A.multiplicativeInequality ∧ A.unitMultiplicativity ∧ A.spectralRadiusDefined

theorem banach_algebra_closed_from_evidence
    (A : BanachAlgebraPackage) (E : BanachAlgebraEvidence A) : BanachAlgebraClosed A := by
  exact And.intro E.normedAlgebraClosed
    (And.intro E.completeClosed
      (And.intro E.multiplicativeInequalityClosed
        (And.intro E.unitMultiplicativityClosed E.spectralRadiusDefinedClosed)))

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse