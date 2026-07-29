import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure DualSpacePackage where
  normedSpace : Type u
  dual : Type v
  pairing : normedSpace → dual → ℝ
  isBoundedBilinear : Prop
  weakStarTopology : Prop
  banachAlaogluTheorem : Prop
  doubleDualEmbedding : Prop

def DualSpaceClosed (D : DualSpacePackage) : Prop :=
  D.isBoundedBilinear ∧ D.weakStarTopology ∧ D.banachAlaogluTheorem ∧ D.doubleDualEmbedding

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
