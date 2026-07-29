import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean.TomitaTakesakiModularTheory

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure KMSStatesEquilibriumPackage {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    {V : VonNeumannAlgebraPackage Q} {W : V.isAWStarAlgebra}
    {T : TomitaTakesakiModularTheoryPackage W} (X : T.kmsCondition) where
  state : P.carrier → ℂ
  isNormalState : Prop
  kmsConditionAtBeta : ℝ → Prop
  equilibriumState : Prop
  variationalPrinciple : Prop
  passivityProperty : Prop

def KMSStatesEquilibriumClosed {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    {V : VonNeumannAlgebraPackage Q} {W : V.isAWStarAlgebra}
    {T : TomitaTakesakiModularTheoryPackage W} {X : T.kmsCondition}
    (K : KMSStatesEquilibriumPackage X) : Prop :=
  K.equilibriumState ∧ K.variationalPrinciple ∧ K.passivityProperty

theorem kms_states_equilibrium_closed
    {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    {V : VonNeumannAlgebraPackage Q} {W : V.isAWStarAlgebra}
    {T : TomitaTakesakiModularTheoryPackage W} {X : T.kmsCondition}
    (K : KMSStatesEquilibriumPackage X) (equilibriumStateClosed : K.equilibriumState)
    (variationalPrincipleClosed : K.variationalPrinciple) (passivityPropertyClosed : K.passivityProperty) :
    KMSStatesEquilibriumClosed K := by
  exact And.intro equilibriumStateClosed
    (And.intro variationalPrincipleClosed passivityPropertyClosed)

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse