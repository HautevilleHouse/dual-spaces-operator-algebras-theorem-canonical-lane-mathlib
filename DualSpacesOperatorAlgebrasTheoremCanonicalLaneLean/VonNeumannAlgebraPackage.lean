import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean.DualSpaceOperatorAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure VonNeumannAlgebraPackage {P : DualSpaceOperatorAlgebraPackage} (Q : DualSpaceOperatorAlgebraEvidence P) where
  weakStarTopology : Type u
  predual : Type v
  predualAction : predual → P.carrier → ℝ
  isAWStarAlgebra : Prop
  doubleCommutantProperty : Prop
  normalFunctionals : Prop
  predualIsBanach : Prop

def VonNeumannAlgebraClosed {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    (V : VonNeumannAlgebraPackage Q) : Prop :=
  V.isAWStarAlgebra ∧ V.doubleCommutantProperty ∧ V.normalFunctionals ∧ V.predualIsBanach

theorem von_neumann_algebra_closed
    {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    (V : VonNeumannAlgebraPackage Q) (isAWStarAlgebraClosed : V.isAWStarAlgebra)
    (doubleCommutantPropertyClosed : V.doubleCommutantProperty)
    (normalFunctionalsClosed : V.normalFunctionals) (predualIsBanachClosed : V.predualIsBanach) :
    VonNeumannAlgebraClosed V := by
  exact And.intro isAWStarAlgebraClosed
    (And.intro doubleCommutantPropertyClosed
      (And.intro normalFunctionalsClosed predualIsBanachClosed))

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse