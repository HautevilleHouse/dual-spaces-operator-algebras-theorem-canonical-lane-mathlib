import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure GelfandNaimarkPackage where
  commutativeCStar : Type u
  spectrum : Type u
  continuousFunctions : Type u
  gelfandTransform : Prop
  isometricStarIsomorphism : Prop

structure GelfandNaimarkEvidence (G : GelfandNaimarkPackage) where
  gelfandTransformClosed : G.gelfandTransform
  isometricStarIsomorphismClosed : G.isometricStarIsomorphism

def GelfandNaimarkClosed (G : GelfandNaimarkPackage) : Prop := G.gelfandTransform ∧ G.isometricStarIsomorphism

theorem gelfand_naimark_closed_from_evidence (G : GelfandNaimarkPackage) (E : GelfandNaimarkEvidence G) : GelfandNaimarkClosed G := by
  exact And.intro E.gelfandTransformClosed E.isometricStarIsomorphismClosed

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse