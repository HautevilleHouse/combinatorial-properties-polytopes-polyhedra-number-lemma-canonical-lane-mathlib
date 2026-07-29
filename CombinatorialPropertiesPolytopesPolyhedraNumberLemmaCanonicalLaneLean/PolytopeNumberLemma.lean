import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.PolytopeFVertex

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure PolytopeNumberLemmaPackage (P : PolytopeFVertex) where
  lowerBoundEstimate : ℕ
  coefficientConstraint : ℕ → ℕ
  f_minimizer : Prop
  lowerBoundClosed : f_minimizer

structure PolytopeNumberLemmaEvidence {P : PolytopeFVertex} (N : PolytopeNumberLemmaPackage P) where
  lowerBoundClosed : N.f_minimizer

def PolytopeNumberLemmaClosed {P : PolytopeFVertex} (N : PolytopeNumberLemmaPackage P) : Prop :=
  N.f_minimizer

theorem polytope_number_lemma_closed_from_evidence {P : PolytopeFVertex} (N : PolytopeNumberLemmaPackage P) (E : PolytopeNumberLemmaEvidence N) : PolytopeNumberLemmaClosed N := by
  exact E.lowerBoundClosed

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse