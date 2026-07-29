import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure EhrhartTheoryPackage where
  latticePolytope : Type u
  ehrhartPolynomial : ℕ → ℕ
  volumeInterpretation : Prop
  ehrhartReciprocity : Prop
  volumeInterpretationClosed : volumeInterpretation
  ehrhartReciprocityClosed : ehrhartReciprocity

structure EhrhartTheoryEvidence (E : EhrhartTheoryPackage) where
  ehrhartPolynomialDefined : ∀ n : ℕ, E.ehrhartPolynomial n ≥ 0
  volumeInterpretationClosed : E.volumeInterpretation
  ehrhartReciprocityClosed : E.ehrhartReciprocity

def EhrhartTheoryClosed (E : EhrhartTheoryPackage) : Prop :=
  (∀ n : ℕ, E.ehrhartPolynomial n ≥ 0) ∧
  E.volumeInterpretation ∧ E.ehrhartReciprocity

theorem ehrhart_theory_closed_from_evidence
    (E : EhrhartTheoryPackage) (Ev : EhrhartTheoryEvidence E) :
    EhrhartTheoryClosed E := by
  refine And.intro (by intro n; exact Ev.ehrhartPolynomialDefined n)
    (And.intro Ev.volumeInterpretationClosed Ev.ehrhartReciprocityClosed)

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
