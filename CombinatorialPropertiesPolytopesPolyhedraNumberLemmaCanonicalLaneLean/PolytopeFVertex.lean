import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure PolytopeFVertex where
  f_vector : List ℕ
  vertexSet : Type
  edgeCount : ℕ
  faceCount : ℕ
  polytopeDimension : ℕ
  f_vectorValid : f_vector.length = polytopeDimension + 1
  edgeCountConsistent : 2 * edgeCount ≤ faceCount * polytopeDimension

def PolytopeFVertexEvidence (P : PolytopeFVertex) : Prop :=
  P.f_vectorValid ∧ P.edgeCountConsistent

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse