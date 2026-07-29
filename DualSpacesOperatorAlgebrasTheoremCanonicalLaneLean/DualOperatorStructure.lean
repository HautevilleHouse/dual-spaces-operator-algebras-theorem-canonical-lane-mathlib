import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.Dual

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure DualSpacePackage where
  BanachSpace : Type u
  norm : BanachSpace → ℝ
  linearFunctionals : Set (BanachSpace → ℝ)
  weakStarTopology : TopologicalSpace BanachSpace
  closedUnitBall : Prop
  AlaogluTheorem : Prop

dualSpacePackageEvidence (P : DualSpacePackage) : Prop :=
  P.closedUnitBall ∧ P.AlaogluTheorem

def DualSpaceClosed (P : DualSpacePackage) : Prop := P.closedUnitBall ∧ P.AlaogluTheorem

theorem dualSpaceClosed_from_evidence (P : DualSpacePackage) (h : P.closedUnitBall ∧ P.AlaogluTheorem) : DualSpaceClosed P :=
  h

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse