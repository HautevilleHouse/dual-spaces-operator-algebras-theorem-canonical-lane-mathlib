import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure OperatorAlgebraStructure where
  carrier : Type u
  algebraStructure : Algebra ℝ carrier
  norm : carrier → ℝ
  banachSpace : NormedAddCommGroup carrier
  cstarIdentity : Prop
  poSpectralRadius : Prop
  algebraicClosed : Prop

structure OperatorAlgebraEvidence (A : OperatorAlgebraStructure) where
  cstarIdentityClosed : A.cstarIdentity
  poSpectralRadiusClosed : A.poSpectralRadius
  algebraicClosedTerm : A.algebraicClosed

def OperatorAlgebraClosed (A : OperatorAlgebraStructure) : Prop :=
  A.cstarIdentity ∧ A.poSpectralRadius ∧ A.algebraicClosed

theorem operator_algebra_closed_from_evidence
    (A : OperatorAlgebraStructure) (E : OperatorAlgebraEvidence A) :
    OperatorAlgebraClosed A := by
  exact And.intro E.cstarIdentityClosed
    (And.intro E.poSpectralRadiusClosed E.algebraicClosedTerm)

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse