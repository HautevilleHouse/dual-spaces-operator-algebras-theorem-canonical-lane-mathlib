import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure DualSpaceOperatorAlgebraPackage where
  carrier : Type u
  algebraStructure : Type v
  dualSpace : Type w
  pairing : carrier → dualSpace → ℝ
  norm : carrier → ℝ
  dualNorm : dualSpace → ℝ
  isBanachSpace : Prop
  isDualBanachSpace : Prop
  algebraMultiplication : carrier → carrier → carrier
  algebraUnit : carrier
  algebraNormControlled : Prop
  dualActionControlled : Prop

structure DualSpaceOperatorAlgebraEvidence (P : DualSpaceOperatorAlgebraPackage) where
  isBanachSpaceClosed : P.isBanachSpace
  isDualBanachSpaceClosed : P.isDualBanachSpace
  algebraNormControlledClosed : P.algebraNormControlled
  dualActionControlledClosed : P.dualActionControlled

def DualSpaceOperatorAlgebraClosed (P : DualSpaceOperatorAlgebraPackage) : Prop :=
  P.isBanachSpace ∧ P.isDualBanachSpace ∧ P.algebraNormControlled ∧ P.dualActionControlled

theorem dual_space_operator_algebra_closed_from_evidence
    (P : DualSpaceOperatorAlgebraPackage) (E : DualSpaceOperatorAlgebraEvidence P) :
    DualSpaceOperatorAlgebraClosed P := by
  exact And.intro E.isBanachSpaceClosed
    (And.intro E.isDualBanachSpaceClosed
      (And.intro E.algebraNormControlledClosed E.dualActionControlledClosed))

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse