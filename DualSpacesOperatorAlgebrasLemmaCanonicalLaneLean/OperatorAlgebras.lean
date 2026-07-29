import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.DualSpaces

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure OperatorAlgebra (X : Type*) [NormedRing X] [NormedAlgebra ℝ X] where
  dualSpace : DualSpace X
  multiplication : X → X → X
  norm : X → ℝ
  algebraMap : ℝ → X
  normedRingStructure : NormedRing X
  normedAlgebraStructure : NormedAlgebra ℝ X
  dualPairingCompatible : Prop

def OperatorAlgebraClosed (A : OperatorAlgebra) : Prop := True

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse