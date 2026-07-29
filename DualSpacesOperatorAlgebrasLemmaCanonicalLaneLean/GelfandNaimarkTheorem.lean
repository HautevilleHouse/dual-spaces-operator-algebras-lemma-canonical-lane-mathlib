import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.DualSpaceStructure
import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure GelfandNaimarkPackage (X : BanachSpace) (A : OperatorAlgebra X) where
  isometricRepresentation : Prop
  representationOnDualSpace : Prop
  isomorphismExists : Prop

structure GelfandNaimarkEvidence (X : BanachSpace) (A : OperatorAlgebra X) (G : GelfandNaimarkPackage X A) where
  isometricRepresentationClosed : G.isometricRepresentation
  representationOnDualSpaceClosed : G.representationOnDualSpace
  isomorphismExistsClosed : G.isomorphismExists

def GelfandNaimarkClosed (X : BanachSpace) (A : OperatorAlgebra X) (G : GelfandNaimarkPackage X A) : Prop :=
  G.isometricRepresentation ∧ G.representationOnDualSpace ∧ G.isomorphismExists

theorem gelfand_naimark_closed_from_evidence (X : BanachSpace) (A : OperatorAlgebra X) (G : GelfandNaimarkPackage X A) (E : GelfandNaimarkEvidence X A G) :
    GelfandNaimarkClosed X A G := by
  exact And.intro E.isometricRepresentationClosed (And.intro E.representationOnDualSpaceClosed E.isomorphismExistsClosed)

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
