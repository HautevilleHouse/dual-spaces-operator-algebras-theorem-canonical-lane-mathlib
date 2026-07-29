import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure VonNeumannAlgebraPackage where
  underlyingAlgebra : Type u
  weakStarTopology : TopologicalSpace underlyingAlgebra
  isWStar : Prop
  doubleDualProperty : Prop

structure VonNeumannAlgebraEvidence (V : VonNeumannAlgebraPackage) where
  isWStarClosed : V.isWStar
  doubleDualPropertyClosed : V.doubleDualProperty

def VonNeumannAlgebraClosed (V : VonNeumannAlgebraPackage) : Prop := V.isWStar ∧ V.doubleDualProperty

theorem von_neumann_algebra_closed_from_evidence (V : VonNeumannAlgebraPackage) (E : VonNeumannAlgebraEvidence V) : VonNeumannAlgebraClosed V := by
  exact And.intro E.isWStarClosed E.doubleDualPropertyClosed

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse