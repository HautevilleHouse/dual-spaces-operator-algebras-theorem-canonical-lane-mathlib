import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure SakaiRadonNikodym where
  vonNeumannAlgebra : Type u
  normalPositiveFunctional : Type v
  functionalValue : normalPositiveFunctional → vonNeumannAlgebra → ℂ
  positivity : ∀ (f : normalPositiveFunctional), ∀ (a : vonNeumannAlgebra), 0 ≤ f a when a ≥ 0
  radonNikodymDerivativeExists : Prop
  derivativeInAlgebra : Prop
  uniqueness : Prop
  representation : Prop

def SakaiRadonNikodymClosed (S : SakaiRadonNikodym) : Prop :=
  S.radonNikodymDerivativeExists ∧ S.derivativeInAlgebra ∧ S.uniqueness ∧ S.representation

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse