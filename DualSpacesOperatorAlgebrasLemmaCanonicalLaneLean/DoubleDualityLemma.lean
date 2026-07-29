import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.DualSpaceStructure
import DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean.OperatorAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean

structure DoubleDualityPackage (X : BanachSpace) (X' : DualSpace X) where
  secondDual : BanachSpace
  canonicalEmbedding : X.carrier → secondDual.carrier
  isIsometric : Prop

theorem double_duality_isometric (X : BanachSpace) (X' : DualSpace X) (D : DoubleDualityPackage X X') : D.isIsometric := D.isIsometric

end DualSpacesOperatorAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse
