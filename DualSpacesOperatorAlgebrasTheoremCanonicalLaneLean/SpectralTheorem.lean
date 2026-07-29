import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure SpectralTheoremPackage where
  normalOperator : Type u
  spectralMeasure : Type u
  functionalCalculus : Prop
  spectralDecomposition : Prop

structure SpectralTheoremEvidence (S : SpectralTheoremPackage) where
  functionalCalculusClosed : S.functionalCalculus
  spectralDecompositionClosed : S.spectralDecomposition

def SpectralTheoremClosed (S : SpectralTheoremPackage) : Prop := S.functionalCalculus ∧ S.spectralDecomposition

theorem spectral_theorem_closed_from_evidence (S : SpectralTheoremPackage) (E : SpectralTheoremEvidence S) : SpectralTheoremClosed S := by
  exact And.intro E.functionalCalculusClosed E.spectralDecompositionClosed

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse