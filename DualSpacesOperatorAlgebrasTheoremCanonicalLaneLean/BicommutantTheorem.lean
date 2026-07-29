import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean.DoubleCommutant

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure BicommutantPackage where
  vonNeumannAlgebra : Type u
  algebraStructure : StarAlgebra vonNeumannAlgebra
  wotClosed : Prop
  commutantContains : Prop
  bicommutantEqualsAlgebra : Prop
  bicommutantEqualsAlgDoubleCommutant : Prop

def BicommutantClosed (B : BicommutantPackage) : Prop :=
  B.wotClosed ∧ B.commutantContains ∧ B.bicommutantEqualsAlgebra ∧ B.bicommutantEqualsAlgDoubleCommutant

theorem bicommutant_closed_from_commutant (B : BicommutantPackage) (h : DoubleCommutantPackage) :
    BicommutantClosed B := by
  exact And.intro B.wotClosed (And.intro B.commutantContains (And.intro B.bicommutantEqualsAlgebra B.bicommutantEqualsAlgDoubleCommutant))

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse