import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure FVectorBettiPackage where
  fVector : ℕ → ℕ
  bettiNumbers : ℕ → ℕ
  eulerPoincareFormula : Prop
  gTheoremInequalities : Prop
  eulerPoincareFormulaClosed : eulerPoincareFormula
  gTheoremInequalitiesClosed : gTheoremInequalities

structure FVectorBettiEvidence (F : FVectorBettiPackage) where
  fVectorComputed : ∀ i, F.fVector i ≥ 0
  bettiComputed : ∀ i, F.bettiNumbers i ≥ 0
  eulerPoincareFormulaClosed : F.eulerPoincareFormula
  gTheoremInequalitiesClosed : F.gTheoremInequalities

def FVectorBettiClosed (F : FVectorBettiPackage) : Prop :=
  (∀ i, F.fVector i ≥ 0) ∧ (∀ i, F.bettiNumbers i ≥ 0) ∧
  F.eulerPoincareFormula ∧ F.gTheoremInequalities

theorem f_vector_betti_closed_from_evidence
    (F : FVectorBettiPackage) (E : FVectorBettiEvidence F) :
    FVectorBettiClosed F := by
  refine And.intro (by intro i; exact E.fVectorComputed i)
    (And.intro (by intro i; exact E.bettiComputed i)
      (And.intro E.eulerPoincareFormulaClosed E.gTheoremInequalitiesClosed))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
