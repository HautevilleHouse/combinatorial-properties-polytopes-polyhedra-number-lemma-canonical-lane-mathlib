import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure UpperBoundTheoremPackage where
  dimension : ℕ
  numberOfVertices : ℕ
  cyclicPolytope : Prop
  maxFacetsFormula : Prop
  theoremBound : Prop
  cyclicPolytopeClosed : cyclicPolytope
  maxFacetsFormulaClosed : maxFacetsFormula
  theoremBoundClosed : theoremBound

structure UpperBoundTheoremEvidence (U : UpperBoundTheoremPackage) where
  dimensionPositive : U.dimension ≥ 1
  vertexCountPositive : U.numberOfVertices ≥ U.dimension + 1
  cyclicPolytopeClosed : U.cyclicPolytope
  maxFacetsFormulaClosed : U.maxFacetsFormula
  theoremBoundClosed : U.theoremBound

def UpperBoundTheoremClosed (U : UpperBoundTheoremPackage) : Prop :=
  U.dimension ≥ 1 ∧ U.numberOfVertices ≥ U.dimension + 1 ∧
  U.cyclicPolytope ∧ U.maxFacetsFormula ∧ U.theoremBound

theorem upper_bound_theorem_closed_from_evidence
    (U : UpperBoundTheoremPackage) (E : UpperBoundTheoremEvidence U) :
    UpperBoundTheoremClosed U := by
  refine And.intro E.dimensionPositive
    (And.intro E.vertexCountPositive
      (And.intro E.cyclicPolytopeClosed
        (And.intro E.maxFacetsFormulaClosed E.theoremBoundClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
