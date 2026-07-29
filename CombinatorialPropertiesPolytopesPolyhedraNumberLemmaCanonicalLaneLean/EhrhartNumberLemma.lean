import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure EhrhartPolytopePackage where
  polytope : Type u
  dimension : Nat
  vertices : List polytope
  latticePoints : Nat → Nat
  generatingFunction : Polynomial ℚ

def EhrhartClosed (E : EhrhartPolytopePackage) : Prop :=
  E.dimension ≥ 0 ∧ E.latticePoints 0 = 1

theorem ehrhart_closed_trivial (E : EhrhartPolytopePackage) : EhrhartClosed E := by
  constructor
  · exact Nat.zero_le _
  · rfl

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
