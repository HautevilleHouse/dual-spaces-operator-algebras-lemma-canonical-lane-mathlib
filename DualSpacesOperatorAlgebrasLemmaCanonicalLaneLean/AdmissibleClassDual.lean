import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.DualSpaceStructure

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure AdmittedDualObject where
  banachSpace : BanachSpace
  dualSpace : DualSpace banachSpace
  operatorAlgebra : Prop
  doubleDualitySatisfied : Prop

def DualWitnessClosed (O : AdmittedDualObject) : Prop :=
  O.doubleDualitySatisfied

structure AdmissibleDualClass where
  object : AdmittedDualObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedDualClosure (A : AdmissibleDualClass) : Prop :=
  DualWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
