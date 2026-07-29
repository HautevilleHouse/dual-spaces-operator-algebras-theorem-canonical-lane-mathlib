import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure UltraweakPackage where
  vonNeumannAlgebra : Type u
  boundedOperators : Type v
  predual : Type w
  ultraweakTopology : TopologicalSpace boundedOperators
  wotTopology : TopologicalSpace boundedOperators
  sigmaWeakTopology : TopologicalSpace boundedOperators
  ultraweakEqualsSigmaWeak : Prop
  ultraweakClosedIfAndOnlyIfWotClosed : Prop
  dualCharacterization : Prop

def UltraweakClosed (U : UltraweakPackage) : Prop :=
  U.ultraweakEqualsSigmaWeak ∧ U.ultraweakClosedIfAndOnlyIfWotClosed ∧ U.dualCharacterization

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse