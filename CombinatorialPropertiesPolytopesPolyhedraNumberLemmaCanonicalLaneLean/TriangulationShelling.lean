import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure TriangulationShelling where
  triangulationExists : Prop
  shellingOrderExists : Prop
  shellingPropertyHolds : Prop
  eulerCharacteristicInvariant : Prop
  homologyComputed : Prop

structure TriangulationShellingEvidence (T : TriangulationShelling) where
  triangulationExistsClosed : T.triangulationExists
  shellingOrderExistsClosed : T.shellingOrderExists
  shellingPropertyHoldsClosed : T.shellingPropertyHolds
  eulerCharacteristicInvariantClosed : T.eulerCharacteristicInvariant
  homologyComputedClosed : T.homologyComputed

def TriangulationShellingClosed (T : TriangulationShelling) : Prop :=
  T.triangulationExists ∧ T.shellingOrderExists ∧ T.shellingPropertyHolds ∧
  T.eulerCharacteristicInvariant ∧ T.homologyComputed

theorem triangulation_shelling_closed_from_evidence
    (T : TriangulationShelling) (E : TriangulationShellingEvidence T) :
    TriangulationShellingClosed T := by
  exact And.intro E.triangulationExistsClosed
    (And.intro E.shellingOrderExistsClosed
      (And.intro E.shellingPropertyHoldsClosed
        (And.intro E.eulerCharacteristicInvariantClosed E.homologyComputedClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
