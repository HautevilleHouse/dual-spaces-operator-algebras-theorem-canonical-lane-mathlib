import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure DualSpaceObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  linearStructure : Module ℝ carrier
  dualCarrier : Type v
  dualTopology : TopologicalSpace dualCarrier
  dualLinearStructure : Module ℝ dualCarrier
  pairing : carrier → dualCarrier → ℝ

def DualSpaceWitnessClosed (O : DualSpaceObject) : Prop :=
  ∃ (f : O.carrier → ℝ), True

structure DualSpaceAdmittedObject where
  space : DualSpaceObject
  banachDual : Prop
  isometricEmbedding : Prop
  conclusion : DualSpaceWitnessClosed space

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse