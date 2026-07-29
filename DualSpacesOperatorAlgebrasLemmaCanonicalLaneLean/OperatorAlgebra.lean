import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure CStarAlgebraPackage where
  algebra : Type u
  norm : algebra → ℝ
  involution : algebra → algebra
  CStarIdentity : Prop
  positiveCone : Prop
  stateSpace : Prop
  gelfandNaimarkTheorem : Prop

structure VonNeumannAlgebraPackage {C : CStarAlgebraPackage} where
  predual : Type v
  weakStarClosed : Prop
  doubleCommutantTheorem : Prop
  sigmaWeakTopology : Prop
  normalStates : Prop

def CStarAlgebraClosed (C : CStarAlgebraPackage) : Prop :=
  C.CStarIdentity ∧ C.positiveCone ∧ C.stateSpace ∧ C.gelfandNaimarkTheorem

def VonNeumannAlgebraClosed {C : CStarAlgebraPackage} (V : VonNeumannAlgebraPackage C) : Prop :=
  V.weakStarClosed ∧ V.doubleCommutantTheorem ∧ V.sigmaWeakTopology ∧ V.normalStates

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
