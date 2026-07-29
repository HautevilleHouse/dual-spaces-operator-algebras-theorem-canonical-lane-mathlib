import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure CStarAlgebraPackage where
  underlyingAlgebra : Type u
  involution : underlyingAlgebra → underlyingAlgebra
  norm : underlyingAlgebra → ℝ
  CStarIdentity : Prop
  completeness : Prop

structure CStarAlgebraEvidence (C : CStarAlgebraPackage) where
  involutionClosed : True
  CStarIdentityClosed : C.CStarIdentity
  completenessClosed : C.completeness

def CStarAlgebraClosed (C : CStarAlgebraPackage) : Prop := C.CStarIdentity ∧ C.completeness

theorem cstar_algebra_closed_from_evidence (C : CStarAlgebraPackage) (E : CStarAlgebraEvidence C) : CStarAlgebraClosed C := by
  exact And.intro E.CStarIdentityClosed E.completenessClosed

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse