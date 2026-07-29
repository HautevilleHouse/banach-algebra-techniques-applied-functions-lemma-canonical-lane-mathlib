import BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FunctionalCalculusClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.complete ∧ A.object.multiplicative ∧ A.object.unital

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse