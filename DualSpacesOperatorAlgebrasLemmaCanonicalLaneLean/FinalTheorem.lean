import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

def ConstrainedDualSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dual_spaces_endgame (A : AdmissibleClass) :
    ConstrainedDualSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse