import CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure PolytopeFaceLatticePackage where
  vertices : Nat
  facets : Nat
  faceCounts : List Nat
  eulerCharacteristic : Prop
  incidenceAlgebraDefined : Prop
  eulerCharacteristicClosed : eulerCharacteristic
  incidenceAlgebraClosed : incidenceAlgebraDefined

structure PolytopeFaceLatticeEvidence (P : PolytopeFaceLatticePackage) where
  eulerCharacteristicClosed : P.eulerCharacteristic
  incidenceAlgebraClosed : P.incidenceAlgebraDefined

def PolytopeFaceLatticeClosed (P : PolytopeFaceLatticePackage) : Prop :=
  P.eulerCharacteristic ∧ P.incidenceAlgebraDefined

theorem polytope_face_lattice_closed_from_evidence (P : PolytopeFaceLatticePackage) (E : PolytopeFaceLatticeEvidence P) : PolytopeFaceLatticeClosed P := by
  exact And.intro E.eulerCharacteristicClosed E.incidenceAlgebraClosed

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
