import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure MinkowskiSumIntegration where
  minkowskiSumDefined : Prop
  mixedVolumeDefined : Prop
  brunnMinkowskiInequality : Prop
  alexandrovFenchelInequality : Prop
  volumePolynomialMultilinear : Prop

structure MinkowskiSumIntegrationEvidence (M : MinkowskiSumIntegration) where
  minkowskiSumDefinedClosed : M.minkowskiSumDefined
  mixedVolumeDefinedClosed : M.mixedVolumeDefined
  brunnMinkowskiInequalityClosed : M.brunnMinkowskiInequality
  alexandrovFenchelInequalityClosed : M.alexandrovFenchelInequality
  volumePolynomialMultilinearClosed : M.volumePolynomialMultilinear

def MinkowskiSumIntegrationClosed (M : MinkowskiSumIntegration) : Prop :=
  M.minkowskiSumDefined ∧ M.mixedVolumeDefined ∧ M.brunnMinkowskiInequality ∧
  M.alexandrovFenchelInequality ∧ M.volumePolynomialMultilinear

theorem minkowski_sum_integration_closed_from_evidence
    (M : MinkowskiSumIntegration) (E : MinkowskiSumIntegrationEvidence M) :
    MinkowskiSumIntegrationClosed M := by
  exact And.intro E.minkowskiSumDefinedClosed
    (And.intro E.mixedVolumeDefinedClosed
      (And.intro E.brunnMinkowskiInequalityClosed
        (And.intro E.alexandrovFenchelInequalityClosed E.volumePolynomialMultilinearClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
