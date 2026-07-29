import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dualSpaceProjection : Projection DualSpaceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dual_space_projection_idempotent (x : DualSpaceEndgameState) :
    dualSpaceProjection.toFun (dualSpaceProjection.toFun x) = dualSpaceProjection.toFun x := by
  exact dualSpaceProjection.idempotent x

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
