import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean.VonNeumannAlgebraPackage

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure TomitaTakesakiModularTheoryPackage {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    {V : VonNeumannAlgebraPackage Q} (W : V.isAWStarAlgebra) where
  modularOperator : Type u
  modularConjugation : Type v
  modularAutomorphismGroup : ℝ → P.carrier → P.carrier
  standardCone : Type w
  kmsCondition : Prop
  relativeModularTheory : Prop

def TomitaTakesakiModularTheoryClosed {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    {V : VonNeumannAlgebraPackage Q} {W : V.isAWStarAlgebra} (T : TomitaTakesakiModularTheoryPackage W) : Prop :=
  T.kmsCondition ∧ T.relativeModularTheory

theorem tomita_takesaki_modular_theory_closed
    {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    {V : VonNeumannAlgebraPackage Q} {W : V.isAWStarAlgebra}
    (T : TomitaTakesakiModularTheoryPackage W) (kmsConditionClosed : T.kmsCondition)
    (relativeModularTheoryClosed : T.relativeModularTheory) :
    TomitaTakesakiModularTheoryClosed T := by
  exact And.intro kmsConditionClosed relativeModularTheoryClosed

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse