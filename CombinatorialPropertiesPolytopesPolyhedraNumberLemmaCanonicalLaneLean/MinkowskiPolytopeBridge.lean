import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure MinkowskiPolytopePackage where
  polytope : Type u
  dimension : Nat
  vertices : List polytope
  faces : List (List polytope)
  facetInequalities : Prop
  volume : ℚ
  latticePoints : Nat

structure MinkowskiEvidence (M : MinkowskiPolytopePackage) where
  dimensionPositive : M.dimension ≥ 1
  verticesNonempty : M.vertices ≠ []
  facetInequalitiesClosed : M.facetInequalities
  volumePositive : M.volume > 0

def MinkowskiClosed (M : MinkowskiPolytopePackage) : Prop :=
  M.dimension ≥ 1 ∧ M.vertices ≠ [] ∧ M.facetInequalities ∧ M.volume > 0

theorem minkowski_closed_from_evidence (M : MinkowskiPolytopePackage) (E : MinkowskiEvidence M) : MinkowskiClosed M := by
  exact And.intro E.dimensionPositive (And.intro E.verticesNonempty (And.intro E.facetInequalitiesClosed E.volumePositive))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
