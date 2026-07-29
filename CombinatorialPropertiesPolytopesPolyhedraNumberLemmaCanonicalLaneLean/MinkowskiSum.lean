import CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.PolytopeFaceLattice

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure MinkowskiSumPackage where
  summands : List Prop
  mixedVolumeDefined : Prop
  brunnMinkowskiInequality : Prop
  mixedVolumeAdditivity : Prop
  summandsClosed : ∀ s ∈ summands, s
  mixedVolumeDefinedClosed : mixedVolumeDefined
  brunnMinkowskiInequalityClosed : brunnMinkowskiInequality
  mixedVolumeAdditivityClosed : mixedVolumeAdditivity

structure MinkowskiSumEvidence (M : MinkowskiSumPackage) where
  summandsClosed : ∀ s ∈ M.summands, s
  mixedVolumeDefinedClosed : M.mixedVolumeDefined
  brunnMinkowskiInequalityClosed : M.brunnMinkowskiInequality
  mixedVolumeAdditivityClosed : M.mixedVolumeAdditivity

def MinkowskiSumClosed (M : MinkowskiSumPackage) : Prop :=
  (∀ s ∈ M.summands, s) ∧ M.mixedVolumeDefined ∧ M.brunnMinkowskiInequality ∧ M.mixedVolumeAdditivity

theorem minkowski_sum_closed_from_evidence (M : MinkowskiSumPackage) (Ev : MinkowskiSumEvidence M) : MinkowskiSumClosed M := by
  exact And.intro Ev.summandsClosed (And.intro Ev.mixedVolumeDefinedClosed (And.intro Ev.brunnMinkowskiInequalityClosed Ev.mixedVolumeAdditivityClosed))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
