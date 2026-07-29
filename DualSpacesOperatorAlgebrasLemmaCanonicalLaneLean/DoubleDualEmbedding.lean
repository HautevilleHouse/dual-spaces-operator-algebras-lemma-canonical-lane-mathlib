import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure DoubleDualEmbeddingPackage where
  banachSpace : Type u
  norm : banachSpace → ℝ
  doubleDual : Type v
  doubleDualNorm : doubleDual → ℝ
  canonicalEmbedding : banachSpace → doubleDual
  isIsometricEmbedding : Prop
  surjectivityCondition : Prop

structure DoubleDualEmbeddingEvidence (P : DoubleDualEmbeddingPackage) where
  isIsometricEmbeddingClosed : P.isIsometricEmbedding
  surjectivityConditionClosed : P.surjectivityCondition

def DoubleDualEmbeddingClosed (P : DoubleDualEmbeddingPackage) : Prop :=
  P.isIsometricEmbedding ∧ P.surjectivityCondition

theorem double_dual_embedding_closed_from_evidence
    (P : DoubleDualEmbeddingPackage) (E : DoubleDualEmbeddingEvidence P) :
    DoubleDualEmbeddingClosed P := by
  exact And.intro E.isIsometricEmbeddingClosed E.surjectivityConditionClosed

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
