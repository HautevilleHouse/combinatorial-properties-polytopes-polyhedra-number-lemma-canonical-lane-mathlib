import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.PolytopeFVertex

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure EulerPolyhedronPackage (P : PolytopeFVertex) where
  VminusEplusF : ℤ
  characteristicFormula : VminusEplusF = 2
  planarGraphCondition : Prop
  characteristicClosed : characteristicFormula

structure EulerPolyhedronEvidence {P : PolytopeFVertex} (E : EulerPolyhedronPackage P) where
  characteristicClosed : E.characteristicFormula

def EulerPolyhedronClosed {P : PolytopeFVertex} (E : EulerPolyhedronPackage P) : Prop :=
  E.characteristicFormula

theorem euler_polyhedron_closed_from_evidence {P : PolytopeFVertex} (E : EulerPolyhedronPackage P) (Ev : EulerPolyhedronEvidence E) : EulerPolyhedronClosed E := by
  exact Ev.characteristicClosed

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse