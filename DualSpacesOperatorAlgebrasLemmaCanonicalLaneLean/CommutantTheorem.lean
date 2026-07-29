import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.OperatorAlgebraStructure

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure CommutantTheorem {D : DualSpaceStructure} (O : OperatorAlgebraStructure D) where
  commutant : Set (O.algebra → O.algebra)
  bicommutant : Set (O.algebra → O.algebra)
  bicommutantSubalgebra : Subalgebra O.algebra O.algebra
  doubleCommutantProperty : bicommutant = closure (Set.range O.representation)
  vonNeumannDoubleCommutant : bicommutant = O.subalgebraGenerated

def CommutantTheoremClosed {D : DualSpaceStructure} {O : OperatorAlgebraStructure D}
    (C : CommutantTheorem O) : Prop :=
  C.doubleCommutantProperty ∧ C.vonNeumannDoubleCommutant

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse