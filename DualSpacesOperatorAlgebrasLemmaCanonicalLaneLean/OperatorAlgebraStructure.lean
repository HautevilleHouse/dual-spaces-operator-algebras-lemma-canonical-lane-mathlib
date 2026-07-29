import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.DualSpaceStructure

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure OperatorAlgebraStructure (D : DualSpaceStructure) where
  algebra : Type u
  multiplication : algebra → algebra → algebra
  representation : algebra → (D.space → D.space)
  homomorphismCondition : Prop
  subalgebraGenerated : D.space → Algebra.adjoin (Set.range representation)

def OperatorAlgebraClosed {D : DualSpaceStructure} (O : OperatorAlgebraStructure D) : Prop :=
  O.homomorphismCondition

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse