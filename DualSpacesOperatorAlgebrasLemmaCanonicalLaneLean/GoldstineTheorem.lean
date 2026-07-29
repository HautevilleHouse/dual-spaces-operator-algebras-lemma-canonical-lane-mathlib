import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure GoldstineTheoremPackage where
  banachSpace : Type u
  norm : banachSpace → ℝ
  unitBallImage : Set (doubleDualSpace banachSpace)
  weakStarDensity : Prop

structure GoldstineTheoremEvidence (P : GoldstineTheoremPackage) where
  weakStarDensityClosed : P.weakStarDensity

def GoldstineTheoremClosed (P : GoldstineTheoremPackage) : Prop :=
  P.weakStarDensity

theorem goldstine_theorem_closed_from_evidence
    (P : GoldstineTheoremPackage) (E : GoldstineTheoremEvidence P) :
    GoldstineTheoremClosed P := by
  exact E.weakStarDensityClosed

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
