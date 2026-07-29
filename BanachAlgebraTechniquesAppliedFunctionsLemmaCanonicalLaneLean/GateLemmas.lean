import BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.spectralMappingSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse