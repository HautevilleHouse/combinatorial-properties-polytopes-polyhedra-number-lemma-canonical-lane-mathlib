import CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure EhrhartPackage where
  integerPolytope : Prop
  ehrhartPolynomialDefined : Prop
  periodicityOfEhrhart : Prop
  volumeAsLeadingCoefficient : Prop
  ehrhartReciprocity : Prop

structure EhrhartEvidence (E : EhrhartPackage) where
  integerPolytopeClosed : E.integerPolytope
  ehrhartPolynomialDefinedClosed : E.ehrhartPolynomialDefined
  periodicityOfEhrhartClosed : E.periodicityOfEhrhart
  volumeAsLeadingCoefficientClosed : E.volumeAsLeadingCoefficient
  ehrhartReciprocityClosed : E.ehrhartReciprocity

def EhrhartClosed (E : EhrhartPackage) : Prop :=
  E.integerPolytope ∧ E.ehrhartPolynomialDefined ∧
  E.periodicityOfEhrhart ∧ E.volumeAsLeadingCoefficient ∧
  E.ehrhartReciprocity

theorem ehrhart_closed_from_evidence (E : EhrhartPackage) (E_ev : EhrhartEvidence E) : EhrhartClosed E := by
  exact And.intro E_ev.integerPolytopeClosed
    (And.intro E_ev.ehrhartPolynomialDefinedClosed
      (And.intro E_ev.periodicityOfEhrhartClosed
        (And.intro E_ev.volumeAsLeadingCoefficientClosed E_ev.ehrhartReciprocityClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
