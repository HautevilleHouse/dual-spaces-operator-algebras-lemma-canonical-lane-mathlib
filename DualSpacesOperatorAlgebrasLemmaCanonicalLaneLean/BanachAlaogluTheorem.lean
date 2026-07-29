import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure BanachAlaogluTheoremPackage where
  banachSpace : Type u
  norm : banachSpace → ℝ
  closedUnitBall : Set (dualSpace banachSpace)
  weakStarCompactness : Prop
  sequentialCompactness : Prop

structure BanachAlaogluTheoremEvidence (P : BanachAlaogluTheoremPackage) where
  weakStarCompactnessClosed : P.weakStarCompactness
  sequentialCompactnessClosed : P.sequentialCompactness

def BanachAlaogluTheoremClosed (P : BanachAlaogluTheoremPackage) : Prop :=
  P.weakStarCompactness ∧ P.sequentialCompactness

theorem banach_alaoglu_theorem_closed_from_evidence
    (P : BanachAlaogluTheoremPackage) (E : BanachAlaogluTheoremEvidence P) :
    BanachAlaogluTheoremClosed P := by
  exact And.intro E.weakStarCompactnessClosed E.sequentialCompactnessClosed

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
