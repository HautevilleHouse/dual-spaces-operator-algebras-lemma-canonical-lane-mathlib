import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualSpaceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DualSpaceAdmittedObject where
  space : DualSpaceSpace
  dualSpaceDefined : Prop
  operatorAlgebraDefined : Prop
  doubleCommutantProperty : Prop
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

structure DualSpaceEndgameState where
  object : DualSpaceAdmittedObject

def DualSpaceWitnessClosed (O : DualSpaceAdmittedObject) : Prop :=
  O.lemmaConclusion

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse