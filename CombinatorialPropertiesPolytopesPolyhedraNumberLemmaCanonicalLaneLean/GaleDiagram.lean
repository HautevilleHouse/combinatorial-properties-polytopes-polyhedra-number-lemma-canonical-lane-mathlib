import CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.PolytopeFaceLattice

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure GaleDiagramPackage where
  dimension : Nat
  numberOfVertices : Nat
  galeTransformDefined : Prop
  linearDependence : Prop
  orientedMatroid : Prop
  galeTransformClosed : galeTransformDefined
  linearDependenceClosed : linearDependence
  orientedMatroidClosed : orientedMatroid

structure GaleDiagramEvidence (G : GaleDiagramPackage) where
  galeTransformClosed : G.galeTransformDefined
  linearDependenceClosed : G.linearDependence
  orientedMatroidClosed : G.orientedMatroid

def GaleDiagramClosed (G : GaleDiagramPackage) : Prop :=
  G.galeTransformDefined ∧ G.linearDependence ∧ G.orientedMatroid

theorem gale_diagram_closed_from_evidence (G : GaleDiagramPackage) (Ev : GaleDiagramEvidence G) : GaleDiagramClosed G := by
  exact And.intro Ev.galeTransformClosed (And.intro Ev.linearDependenceClosed Ev.orientedMatroidClosed)

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
