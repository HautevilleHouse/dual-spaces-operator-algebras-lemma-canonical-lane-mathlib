import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure OperatorAlgebraDualityPackage where
  operatorAlgebra : Type u
  norm : operatorAlgebra → ℝ
  predual : Type v
  predualNorm : predual → ℝ
  predualAction : predual → operatorAlgebra → ℝ
  isOperatorAlgebraPredual : Prop

structure OperatorAlgebraDualityEvidence (P : OperatorAlgebraDualityPackage) where
  isOperatorAlgebraPredualClosed : P.isOperatorAlgebraPredual

def OperatorAlgebraDualityClosed (P : OperatorAlgebraDualityPackage) : Prop :=
  P.isOperatorAlgebraPredual

theorem operator_algebra_duality_closed_from_evidence
    (P : OperatorAlgebraDualityPackage) (E : OperatorAlgebraDualityEvidence P) :
    OperatorAlgebraDualityClosed P := by
  exact E.isOperatorAlgebraPredualClosed

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
