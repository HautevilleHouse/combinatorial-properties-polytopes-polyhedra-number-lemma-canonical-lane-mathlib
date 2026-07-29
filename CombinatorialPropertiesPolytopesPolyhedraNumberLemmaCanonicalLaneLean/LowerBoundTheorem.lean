import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure LowerBoundTheoremPackage where
  dimension : ℕ
  numberOfVertices : ℕ
  stackedPolytope : Prop
  minFacetsFormula : Prop
  theoremBound : Prop
  stackedPolytopeClosed : stackedPolytope
  minFacetsFormulaClosed : minFacetsFormula
  theoremBoundClosed : theoremBound

structure LowerBoundTheoremEvidence (L : LowerBoundTheoremPackage) where
  dimensionPositive : L.dimension ≥ 1
  vertexCountPositive : L.numberOfVertices ≥ L.dimension + 1
  stackedPolytopeClosed : L.stackedPolytope
  minFacetsFormulaClosed : L.minFacetsFormula
  theoremBoundClosed : L.theoremBound

def LowerBoundTheoremClosed (L : LowerBoundTheoremPackage) : Prop :=
  L.dimension ≥ 1 ∧ L.numberOfVertices ≥ L.dimension + 1 ∧
  L.stackedPolytope ∧ L.minFacetsFormula ∧ L.theoremBound

theorem lower_bound_theorem_closed_from_evidence
    (L : LowerBoundTheoremPackage) (E : LowerBoundTheoremEvidence L) :
    LowerBoundTheoremClosed L := by
  refine And.intro E.dimensionPositive
    (And.intro E.vertexCountPositive
      (And.intro E.stackedPolytopeClosed
        (And.intro E.minFacetsFormulaClosed E.theoremBoundClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
