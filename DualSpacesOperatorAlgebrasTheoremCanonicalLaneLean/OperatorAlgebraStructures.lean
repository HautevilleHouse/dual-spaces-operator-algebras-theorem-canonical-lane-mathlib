import canonicalLaneMathlib.AdmissibleClass

/-!
# Operator Algebra Structures Package

This module defines the algebraic structures for operator algebras,
including C*-algebras, von Neumann algebras, and their dual spaces.
-/

namespace HautevilleHouse
namespace DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean

structure BanachAlgebra (A : Type u) where
  norm : A → ℝ
  mul : A → A → A
  unit : A
  normed : ∀ x y, norm (mul x y) ≤ norm x * norm y
  complete : Prop
  associative : ∀ x y z, mul (mul x y) z = mul x (mul y z)
  identity : ∀ x, mul x unit = x ∧ mul unit x = x

structure CStarAlgebra (A : Type u) extends BanachAlgebra A where
  involution : A → A
  involutionInvolutive : ∀ x, involution (involution x) = x
  involutionAntiLinear : ∀ x y c, involution (x + y) = involution x + involution y ∧ involution (c • x) = conj c • involution x
  cstarIdentity : ∀ x, norm (mul x (involution x)) = norm x * norm x

def CStarAlgebraClosed (A : Type u) (C : CStarAlgebra A) : Prop :=
  C.cstarIdentity ∧ C.complete

structure VonNeumannAlgebra (M : Type u) extends CStarAlgebra M where
  predual : Type u
  predualNorm : predual → ℝ
  predualComplete : Prop
  predualIsometricEmbedding : predual → BoundedLinearFunctional (M)
  weakStarClosed : Prop
  doubleCommutant : Prop

def VonNeumannAlgebraClosed (M : Type u) (V : VonNeumannAlgebra M) : Prop :=
  V.predualComplete ∧ V.weakStarClosed ∧ V.doubleCommutant

end DualSpacesOperatorAlgebrasTheoremCanonicalLaneLean
end HautevilleHouse
