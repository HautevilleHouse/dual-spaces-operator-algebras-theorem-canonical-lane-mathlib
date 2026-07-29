import canonicalLaneMathlib.AdmissibleClass

/-!
# Dual Space Operator Algebras Package

This module defines the foundational structures for dual spaces of operator algebras,
including Hilbert space duals, Banach space duals, and the predual structure
characteristic of von Neumann algebras.
-/

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure HilbertSpace (H : Type u) where
  innerProduct : H → H → ℂ
  norm : H → ℝ
  completeness : Prop
  innerProductDefinite : ∀ x, innerProduct x x = 0 → x = 0

structure BoundedLinearFunctional (H : Type u) [HilbertSpace H] where
  f : H → ℂ
  linearity : ∀ x y, f (x + y) = f x + f y ∧ ∀ c x, f (c • x) = c * f x
  boundedness : ∃ C > 0, ∀ x, ‖f x‖ ≤ C * (HilbertSpace.norm H x)

structure DualSpacePackage (H : Type u) [HilbertSpace H] where
  dual : Type u
  dualNorm : dual → ℝ
  dualComplete : Prop
  rieszRepresentation : ∀ φ : BoundedLinearFunctional H, ∃! x : H, ∀ y : H, φ.f y = HilbertSpace.innerProduct H x y
  dualIsBanach : Prop

def DualSpaceClosed (H : Type u) [HilbertSpace H] (D : DualSpacePackage H) : Prop :=
  D.dualComplete ∧ D.rieszRepresentation ∧ D.dualIsBanach

structure PredualPackage (M : Type u) [HilbertSpace M] where
  predual : Type u
  predualNorm : predual → ℝ
  isometricEmbedding : predual → (BoundedLinearFunctional M)
  predualComplete : Prop
  predualDeterminesDual : Prop

def PredualClosed (M : Type u) [HilbertSpace M] (P : PredualPackage M) : Prop :=
  P.predualComplete ∧ P.predualDeterminesDual

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
