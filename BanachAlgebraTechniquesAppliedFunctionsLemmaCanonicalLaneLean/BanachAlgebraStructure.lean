import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure BanachAlgebraEvidence (B : BanachAlgebra) where
  algebraStructureClosed : B.algebraStructure
  completenessClosed : B.completeness
  multiplicativityClosed : B.multiplicativity
  nondegeneracyClosed : B.nondegeneracy

theorem banach_algebra_closed_from_evidence (B : BanachAlgebra) (E : BanachAlgebraEvidence B) :
    BanachAlgebraClosed B := by
  exact And.intro E.algebraStructureClosed
    (And.intro E.completenessClosed
      (And.intro E.multiplicativityClosed E.nondegeneracyClosed))

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse