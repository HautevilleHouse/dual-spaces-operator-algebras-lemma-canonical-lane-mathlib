import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.CommutantTheorem

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure DualSpacesLemma {D : DualSpaceStructure} {O : OperatorAlgebraStructure D}
    (C : CommutantTheorem O) where
  annihilator : Set (D.dualSpace → ℝ)
  polar : Set (D.dualSpace → ℝ)
  bipolarProperty : bipolarD = closure (convexHull annihilator) 
  dualPairingBicontinuous : Prop
  doubleDualEmbeddingClosed : D.isometricEmbedding

def DualSpacesLemmaClosed {D : DualSpaceStructure} {O : OperatorAlgebraStructure D}
    {C : CommutantTheorem O} (L : DualSpacesLemma C) : Prop :=
  L.bipolarProperty ∧ L.dualPairingBicontinuous ∧ L.doubleDualEmbeddingClosed

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse