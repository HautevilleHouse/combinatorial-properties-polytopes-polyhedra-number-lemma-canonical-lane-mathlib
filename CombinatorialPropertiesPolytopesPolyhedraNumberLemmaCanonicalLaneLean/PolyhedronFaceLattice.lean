import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure PolyhedronFaceLatticePackage where
  vertexSet : Type u
  edgeIncidence : Prop
  facePoset : Prop
  eulerCharacteristic : Prop
  eulerCharacteristicClosed : eulerCharacteristic

structure PolyhedronFaceLatticeEvidence (P : PolyhedronFaceLatticePackage) where
  vertexSetClosed : P.vertexSet
  edgeIncidenceClosed : P.edgeIncidence
  facePosetClosed : P.facePoset
  eulerCharacteristicClosed : P.eulerCharacteristic

def PolyhedronFaceLatticeClosed (P : PolyhedronFaceLatticePackage) : Prop :=
  P.vertexSet ∧ P.edgeIncidence ∧ P.facePoset ∧ P.eulerCharacteristic

theorem polyhedron_face_lattice_closed_from_evidence
    (P : PolyhedronFaceLatticePackage) (E : PolyhedronFaceLatticeEvidence P) :
    PolyhedronFaceLatticeClosed P := by
  exact And.intro E.vertexSetClosed (And.intro E.edgeIncidenceClosed (And.intro E.facePosetClosed E.eulerCharacteristicClosed))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
