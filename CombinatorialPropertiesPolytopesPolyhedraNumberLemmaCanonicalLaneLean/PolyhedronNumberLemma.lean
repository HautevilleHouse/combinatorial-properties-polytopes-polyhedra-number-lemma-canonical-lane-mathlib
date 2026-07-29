import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure PolyhedronNumberLemma where
  polyhedron : Type u
  integerPointsCount : Prop
  ehrhartPolynomialExists : Prop
  reciprocityProved : Prop
  countingFunctionCorrect : Prop

structure PolyhedronNumberLemmaEvidence (P : PolyhedronNumberLemma) where
  integerPointsCountClosed : P.integerPointsCount
  ehrhartPolynomialExistsClosed : P.ehrhartPolynomialExists
  reciprocityProvedClosed : P.reciprocityProved
  countingFunctionCorrectClosed : P.countingFunctionCorrect

def PolyhedronNumberLemmaClosed (P : PolyhedronNumberLemma) : Prop :=
  P.integerPointsCount ∧ P.ehrhartPolynomialExists ∧ P.reciprocityProved ∧ P.countingFunctionCorrect

theorem polyhedron_number_lemma_closed_from_evidence
    (P : PolyhedronNumberLemma) (E : PolyhedronNumberLemmaEvidence P) :
    PolyhedronNumberLemmaClosed P := by
  exact And.intro E.integerPointsCountClosed
    (And.intro E.ehrhartPolynomialExistsClosed
      (And.intro E.reciprocityProvedClosed E.countingFunctionCorrectClosed))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
