import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.BanachAlgebra

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure FunctionalCalculusPackage {A : BanachAlgebraPackage} where
  holomorphicFunctionsOnSpectrum : Type u
  functionalCalculusMap : (holomorphicFunctionsOnSpectrum) → A.algebra
  spectralMappingTheorem : Prop
  boundedness : Prop
  uniqueness : Prop
  compatibilityWithPolynomials : Prop

structure FunctionalCalculusEvidence {A : BanachAlgebraPackage}
    (F : FunctionalCalculusPackage A) where
  spectralMappingTheoremClosed : F.spectralMappingTheorem
  boundednessClosed : F.boundedness
  uniquenessClosed : F.uniqueness
  compatibilityWithPolynomialsClosed : F.compatibilityWithPolynomials

def FunctionalCalculusClosed {A : BanachAlgebraPackage}
    (F : FunctionalCalculusPackage A) : Prop :=
  F.spectralMappingTheorem ∧ F.boundedness ∧ F.uniqueness ∧ F.compatibilityWithPolynomials

theorem functional_calculus_closed_from_evidence
    {A : BanachAlgebraPackage} (F : FunctionalCalculusPackage A)
    (E : FunctionalCalculusEvidence F) : FunctionalCalculusClosed F := by
  exact And.intro E.spectralMappingTheoremClosed
    (And.intro E.boundednessClosed
      (And.intro E.uniquenessClosed E.compatibilityWithPolynomialsClosed))

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse