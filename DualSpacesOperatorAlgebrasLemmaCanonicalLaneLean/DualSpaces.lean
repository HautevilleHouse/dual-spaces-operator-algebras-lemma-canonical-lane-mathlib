import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure DualSpace (V : Type*) [AddCommGroup V] [Module ℝ V] where
  carrier : Type*
  addition : carrier → carrier → carrier
  scalarMultiplication : ℝ → carrier → carrier
  pairing : carrier → V → ℝ
  additiveGroup : AddCommGroup carrier
  moduleStructure : Module ℝ carrier
  pairingBilinear : BilinearMap ℝ carrier V ℝ

def DualSpaceClosed (D : DualSpace) : Prop := True

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse