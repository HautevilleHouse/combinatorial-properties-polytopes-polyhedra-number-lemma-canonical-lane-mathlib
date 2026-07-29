import CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure NumberLemmaPackage where
  combinatorialTypeCounted : Prop
  numberLemmaPolytopeStatement : Prop
  vectorPartitionEnumerated : Prop
  magicLabelingBijection : Prop
  numberLemmaAppliedToPolytope : Prop

structure NumberLemmaEvidence (N : NumberLemmaPackage) where
  combinatorialTypeCountedClosed : N.combinatorialTypeCounted
  numberLemmaPolytopeStatementClosed : N.numberLemmaPolytopeStatement
  vectorPartitionEnumeratedClosed : N.vectorPartitionEnumerated
  magicLabelingBijectionClosed : N.magicLabelingBijection
  numberLemmaAppliedToPolytopeClosed : N.numberLemmaAppliedToPolytope

def NumberLemmaClosed (N : NumberLemmaPackage) : Prop :=
  N.combinatorialTypeCounted ∧ N.numberLemmaPolytopeStatement ∧
  N.vectorPartitionEnumerated ∧ N.magicLabelingBijection ∧
  N.numberLemmaAppliedToPolytope

theorem number_lemma_closed_from_evidence (N : NumberLemmaPackage) (E : NumberLemmaEvidence N) : NumberLemmaClosed N := by
  exact And.intro E.combinatorialTypeCountedClosed
    (And.intro E.numberLemmaPolytopeStatementClosed
      (And.intro E.vectorPartitionEnumeratedClosed
        (And.intro E.magicLabelingBijectionClosed E.numberLemmaAppliedToPolytopeClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
