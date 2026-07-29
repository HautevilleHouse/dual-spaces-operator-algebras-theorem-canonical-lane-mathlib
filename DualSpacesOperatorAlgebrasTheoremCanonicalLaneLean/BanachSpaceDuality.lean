import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure BanachSpaceDualityPackage where
  dualSpace : Type u
  weakStarTopology : TopologicalSpace dualSpace
  isBanachSpace : Prop
  isometricEmbedding : Prop
  doubleDual : Type u

structure BanachSpaceDualityEvidence (B : BanachSpaceDualityPackage) where
  dualSpaceClosed : B.isBanachSpace
  weakStarClosed : True
  isometricEmbeddingClosed : B.isometricEmbedding

def BanachSpaceDualityClosed (B : BanachSpaceDualityPackage) : Prop := B.isBanachSpace ∧ B.isometricEmbedding

theorem banach_space_duality_closed_from_evidence (B : BanachSpaceDualityPackage) (E : BanachSpaceDualityEvidence B) : BanachSpaceDualityClosed B := by
  exact And.intro E.dualSpaceClosed E.isometricEmbeddingClosed

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse