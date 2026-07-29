import BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

def ConstrainedBanachAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_algebra_endgame (A : AdmissibleClass) :
    ConstrainedBanachAlgebraClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse