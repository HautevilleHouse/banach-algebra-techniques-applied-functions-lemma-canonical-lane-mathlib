import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.FunctionalCalculus

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure SpectralDecompositionPackage {A : BanachAlgebraPackage}
    {F : FunctionalCalculusPackage A} where
  spectralMeasure : Type u
  projectionValuedMeasure : Prop
  selfAdjointDecomposition : Prop
  multiplicityTheory : Prop
  boundedBorelFunctionalCalculus : Prop

structure SpectralDecompositionEvidence {A : BanachAlgebraPackage}
    {F : FunctionalCalculusPackage A} (D : SpectralDecompositionPackage A F) where
  projectionValuedMeasureClosed : D.projectionValuedMeasure
  selfAdjointDecompositionClosed : D.selfAdjointDecomposition
  multiplicityTheoryClosed : D.multiplicityTheory
  boundedBorelFunctionalCalculusClosed : D.boundedBorelFunctionalCalculus

def SpectralDecompositionClosed {A : BanachAlgebraPackage}
    {F : FunctionalCalculusPackage A} (D : SpectralDecompositionPackage A F) : Prop :=
  D.projectionValuedMeasure ∧ D.selfAdjointDecomposition ∧ D.multiplicityTheory ∧ D.boundedBorelFunctionalCalculus

theorem spectral_decomposition_closed_from_evidence
    {A : BanachAlgebraPackage} {F : FunctionalCalculusPackage A}
    (D : SpectralDecompositionPackage A F) (E : SpectralDecompositionEvidence D) :
    SpectralDecompositionClosed D := by
  exact And.intro E.projectionValuedMeasureClosed
    (And.intro E.selfAdjointDecompositionClosed
      (And.intro E.multiplicityTheoryClosed E.boundedBorelFunctionalCalculusClosed))

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse