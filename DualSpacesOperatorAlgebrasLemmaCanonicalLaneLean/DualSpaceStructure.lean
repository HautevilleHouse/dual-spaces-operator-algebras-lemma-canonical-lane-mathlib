import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure DualSpaceStructure where
  space : Type u
  dualSpace : Type u
  pairing : space → dualSpace → ℝ
  linearFunctional : dualSpace → (space → ℝ)
  normDual : dualSpace → ℝ
  hahnBanachExtension : Prop
  doubleDualEmbedding : space → (dualSpace → ℝ)
  isometricEmbedding : Prop

def DualSpaceClosed (D : DualSpaceStructure) : Prop :=
  D.hahnBanachExtension ∧ D.isometricEmbedding

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse