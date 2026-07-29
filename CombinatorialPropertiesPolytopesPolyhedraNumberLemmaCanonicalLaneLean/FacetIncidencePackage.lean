import CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure FacetIncidencePackage where
  polytopeHasFacets : Prop
  facetIncidenceMatrix : Type
  incidencesSatisfyPolytopeInequalities : Prop
  facetCountFinite : Prop
  eachFacetIsProperFace : Prop

structure FacetIncidenceEvidence (F : FacetIncidencePackage) where
  polytopeHasFacetsClosed : F.polytopeHasFacets
  incidencesSatisfyPolytopeInequalitiesClosed : F.incidencesSatisfyPolytopeInequalities
  facetCountFiniteClosed : F.facetCountFinite
  eachFacetIsProperFaceClosed : F.eachFacetIsProperFace

def FacetIncidenceClosed (F : FacetIncidencePackage) : Prop := 
  F.polytopeHasFacets ∧ F.incidencesSatisfyPolytopeInequalities ∧
  F.facetCountFinite ∧ F.eachFacetIsProperFace

theorem facet_incidence_closed_from_evidence (F : FacetIncidencePackage) (E : FacetIncidenceEvidence F) : FacetIncidenceClosed F := by
  exact And.intro E.polytopeHasFacetsClosed
    (And.intro E.incidencesSatisfyPolytopeInequalitiesClosed
      (And.intro E.facetCountFiniteClosed E.eachFacetIsProperFaceClosed))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
