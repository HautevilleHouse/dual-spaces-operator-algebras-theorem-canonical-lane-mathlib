import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean.DualSpaceOperatorAlgebra

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure OperatorAlgebraSpectralTheoryPackage {P : DualSpaceOperatorAlgebraPackage} (Q : DualSpaceOperatorAlgebraEvidence P) where
  spectrum : P.carrier → Set ℝ
  spectralRadius : P.carrier → ℝ
  resolventSet : P.carrier → Set ℂ
  spectralMappingTheorem : Prop
  spectralRadiusFormula : Prop
  continuousFunctionalCalculus : Prop

def OperatorAlgebraSpectralTheoryClosed {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    (S : OperatorAlgebraSpectralTheoryPackage Q) : Prop :=
  S.spectralMappingTheorem ∧ S.spectralRadiusFormula ∧ S.continuousFunctionalCalculus

theorem operator_algebra_spectral_theory_closed
    {P : DualSpaceOperatorAlgebraPackage} {Q : DualSpaceOperatorAlgebraEvidence P}
    (S : OperatorAlgebraSpectralTheoryPackage Q) (spectralMappingTheoremClosed : S.spectralMappingTheorem)
    (spectralRadiusFormulaClosed : S.spectralRadiusFormula) (continuousFunctionalCalculusClosed : S.continuousFunctionalCalculus) :
    OperatorAlgebraSpectralTheoryClosed S := by
  exact And.intro spectralMappingTheoremClosed
    (And.intro spectralRadiusFormulaClosed continuousFunctionalCalculusClosed)

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse