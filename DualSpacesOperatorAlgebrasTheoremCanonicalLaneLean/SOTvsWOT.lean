import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure SOTvsWOT where
  hilbertSpace : Type u
  hilbertInner : InnerProductSpace ℂ hilbertSpace
  boundedOperators : Type v
  algebraStructure : Algebra ℂ boundedOperators
  starStructure : StarRing boundedOperators
  sotTopology : TopologicalSpace boundedOperators
  wotTopology : TopologicalSpace boundedOperators
  sotConvergence : Prop
  wotConvergence : Prop
  wotClosedImpliesSotClosed : Prop
  sotClosureIsWOTClosure : Prop

def SOTvsWOTClosed (S : SOTvsWOT) : Prop :=
  S.sotConvergence ∧ S.wotConvergence ∧ S.wotClosedImpliesSotClosed ∧ S.sotClosureIsWOTClosure

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse