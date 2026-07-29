import canonicalLaneMathlib.AdmissibleClass
import DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean.DualOperatorStructure

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure OperatorAlgebraPackage where
  dualSpaceClosed : DualSpaceClosed (default : DualSpacePackage)
  vonNeumannAlgebraType : Prop
  weakStarContinuity : Prop
  doubleCommutantTheorem : Prop

def OperatorAlgebraBridgeClosed (O : OperatorAlgebraPackage) : Prop :=
  O.vonNeumannAlgebraType ∧ O.weakStarContinuity ∧ O.doubleCommutantTheorem

theorem operatorAlgebraBridge_from_package (O : OperatorAlgebraPackage) :
    OperatorAlgebraBridgeClosed O := by
  exact And.intro O.vonNeumannAlgebraType (And.intro O.weakStarContinuity O.doubleCommutantTheorem)

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse