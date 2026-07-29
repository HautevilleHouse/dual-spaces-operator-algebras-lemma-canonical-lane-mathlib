import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.OperatorAlgebraStructure

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure DualOperatorLemma (X : DualSpace) (A : OperatorAlgebra X) where
  dualOperator : Type
  isBounded : Prop
  satisfiesDualRelation : Prop
  isCompact : Prop

structure DualOperatorLemmaEvidence (X : DualSpace) (A : OperatorAlgebra X) (L : DualOperatorLemma X A) where
  isBoundedClosed : L.isBounded
  satisfiesDualRelationClosed : L.satisfiesDualRelation
  isCompactClosed : L.isCompact

def DualOperatorLemmaClosed (X : DualSpace) (A : OperatorAlgebra X) (L : DualOperatorLemma X A) : Prop :=
  L.isBounded ∧ L.satisfiesDualRelation ∧ L.isCompact

theorem dual_operator_lemma_closed_from_evidence
    (X : DualSpace) (A : OperatorAlgebra X) (L : DualOperatorLemma X A)
    (E : DualOperatorLemmaEvidence X A L) : DualOperatorLemmaClosed X A L := by
  exact And.intro E.isBoundedClosed (And.intro E.satisfiesDualRelationClosed E.isCompactClosed)

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
