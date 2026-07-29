import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearStructure : Module ℝ carrier
  dualCarrier : Type
  dualTopology : TopologicalSpace dualCarrier
  dualLinearStructure : Module ℝ dualCarrier
  pairing : carrier → dualCarrier → ℝ

structure DualSpaceAdmittedObject where
  space : DualSpace
  banachSpace : Prop
  dualIsIsometric : Prop
  conclusion : banachSpace ∧ dualIsIsometric

structure DualSpaceEndgameState where
  object : DualSpaceAdmittedObject

def DualSpaceWitnessClosed (O : DualSpaceAdmittedObject) : Prop :=
  O.banachSpace ∧ O.dualIsIsometric

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
