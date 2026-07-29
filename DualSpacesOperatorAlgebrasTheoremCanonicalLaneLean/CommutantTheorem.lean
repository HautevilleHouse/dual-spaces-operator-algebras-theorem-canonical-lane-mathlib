import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure CommutantTheoremPackage where
  algebra : Type u
  commutant : Type u
  bicommutant : Type u
  center : Type u
  vonNeumannBicommutant : Prop
  commutantInclusion : Prop

structure CommutantTheoremEvidence (C : CommutantTheoremPackage) where
  vonNeumannBicommutantClosed : C.vonNeumannBicommutant
  commutantInclusionClosed : C.commutantInclusion

def CommutantTheoremClosed (C : CommutantTheoremPackage) : Prop := C.vonNeumannBicommutant ∧ C.commutantInclusion

theorem commutant_theorem_closed_from_evidence (C : CommutantTheoremPackage) (E : CommutantTheoremEvidence C) : CommutantTheoremClosed C := by
  exact And.intro E.vonNeumannBicommutantClosed E.commutantInclusionClosed

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse