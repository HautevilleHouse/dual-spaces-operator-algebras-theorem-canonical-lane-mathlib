import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure DoubleCommutantPackage where
  algebra : Type u
  algebraRing : Ring algebra
  algebraStarRing : StarRing algebra
  subalgebra : Type v
  subalgebraRing : Ring subalgebra
  subalgebraStarRing : StarRing subalgebra
  subalgebraModule : Module algebra subalgebra
  commutantDefined : Prop
  doubleCommutantContained : Prop
  doubleCommutantIsClosure : Prop
  vNaGeneration : Prop

def DoubleCommutantClosed (P : DoubleCommutantPackage) : Prop :=
  P.commutantDefined ∧ P.doubleCommutantContained ∧ P.doubleCommutantIsClosure ∧ P.vNaGeneration

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse