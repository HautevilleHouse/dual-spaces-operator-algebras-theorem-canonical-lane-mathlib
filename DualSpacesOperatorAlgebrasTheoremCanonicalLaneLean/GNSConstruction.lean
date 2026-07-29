import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure GNSConstruction where
  cstarAlgebra : Type u
  algebraStructure : CStarAlgebra cstarAlgebra
  positiveLinearFunctional : Type v
  functionalValue : positiveLinearFunctional → cstarAlgebra → ℂ
  positivity : ∀ (f : positiveLinearFunctional), ∀ (a : cstarAlgebra), 0 ≤ f a when a ≥ 0
  leftIdeal : Type w
  quotientPreHilbert : Prop
  hilbertSpaceCompletion : Type x
  representation : cstarAlgebra → (hilbertSpaceCompletion →ₗ[ℂ] hilbertSpaceCompletion)
  cyclicVector : hilbertSpaceCompletion
  representationFaithful : Prop
  closure : Prop

def GNSClosed (G : GNSConstruction) : Prop :=
  G.representationFaithful ∧ G.closure

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse