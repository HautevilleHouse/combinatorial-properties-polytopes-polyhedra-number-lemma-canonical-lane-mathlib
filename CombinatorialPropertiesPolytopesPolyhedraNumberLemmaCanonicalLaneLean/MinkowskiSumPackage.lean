import CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure MinkowskiSumPackage where
  sumPolytopeDefined : Prop
  vertexSumFormula : Prop
  supportFunctionAdditive : Prop
  faceDecompositionUnderSum : Prop
  mixedVolumeWellDefined : Prop

structure MinkowskiSumEvidence (M : MinkowskiSumPackage) where
  sumPolytopeDefinedClosed : M.sumPolytopeDefined
  vertexSumFormulaClosed : M.vertexSumFormula
  supportFunctionAdditiveClosed : M.supportFunctionAdditive
  faceDecompositionUnderSumClosed : M.faceDecompositionUnderSum
  mixedVolumeWellDefinedClosed : M.mixedVolumeWellDefined

def MinkowskiSumClosed (M : MinkowskiSumPackage) : Prop :=
  M.sumPolytopeDefined ∧ M.vertexSumFormula ∧
  M.supportFunctionAdditive ∧ M.faceDecompositionUnderSum ∧
  M.mixedVolumeWellDefined

theorem minkowski_sum_closed_from_evidence (M : MinkowskiSumPackage) (E : MinkowskiSumEvidence M) : MinkowskiSumClosed M := by
  exact And.intro E.sumPolytopeDefinedClosed
    (And.intro E.vertexSumFormulaClosed
      (And.intro E.supportFunctionAdditiveClosed
        (And.intro E.faceDecompositionUnderSumClosed E.mixedVolumeWellDefinedClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
