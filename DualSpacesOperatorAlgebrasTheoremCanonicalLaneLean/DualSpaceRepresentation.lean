import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure DualSpaceRepresentationPackage where
  dualSpace : Type u
  weakStarTopology : TopologicalSpace dualSpace
  representation : Type v
  isometricEmbedding : Prop
  wStarContinuous : Prop
  representationClosed : Prop

structure DualSpaceRepresentationEvidence (D : DualSpaceRepresentationPackage) where
  isometricEmbeddingClosed : D.isometricEmbedding
  wStarContinuousClosed : D.wStarContinuous
  representationClosedTerm : D.representationClosed

def DualSpaceRepresentationClosed (D : DualSpaceRepresentationPackage) : Prop :=
  D.isometricEmbedding ∧ D.wStarContinuous ∧ D.representationClosed

theorem dual_space_representation_closed_from_evidence
    (D : DualSpaceRepresentationPackage) (E : DualSpaceRepresentationEvidence D) :
    DualSpaceRepresentationClosed D := by
  exact And.intro E.isometricEmbeddingClosed
    (And.intro E.wStarContinuousClosed E.representationClosedTerm)

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse