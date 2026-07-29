import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure PredualPackage where
  vonNeumannAlgebra : Type u
  predual : Type v
  normedGroup : NormedAddCommGroup predual
  banachSpace : NormedAddCommGroup.IsBanach predual
  dualIsWStar : Prop
  predualIsUnique : Prop
  normalFunctionals : Prop
  wStarContinuity : Prop

def PredualClosed (P : PredualPackage) : Prop :=
  P.dualIsWStar ∧ P.predualIsUnique ∧ P.normalFunctionals ∧ P.wStarContinuity

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse