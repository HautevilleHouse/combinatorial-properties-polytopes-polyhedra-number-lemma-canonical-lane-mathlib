import CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure UpperBoundTheoremPackage where
  cyclicPolytopeDefined : Prop
  numberOffacesMaximized : Prop
  upperBoundInequality : Prop
  equalityOnlyForCyclic : Prop
  gVectorNonnegative : Prop

structure UpperBoundTheoremEvidence (U : UpperBoundTheoremPackage) where
  cyclicPolytopeDefinedClosed : U.cyclicPolytopeDefined
  numberOffacesMaximizedClosed : U.numberOffacesMaximized
  upperBoundInequalityClosed : U.upperBoundInequality
  equalityOnlyForCyclicClosed : U.equalityOnlyForCyclic
  gVectorNonnegativeClosed : U.gVectorNonnegative

def UpperBoundTheoremClosed (U : UpperBoundTheoremPackage) : Prop :=
  U.cyclicPolytopeDefined ∧ U.numberOffacesMaximized ∧
  U.upperBoundInequality ∧ U.equalityOnlyForCyclic ∧
  U.gVectorNonnegative

theorem upper_bound_theorem_closed_from_evidence (U : UpperBoundTheoremPackage) (E : UpperBoundTheoremEvidence U) : UpperBoundTheoremClosed U := by
  exact And.intro E.cyclicPolytopeDefinedClosed
    (And.intro E.numberOffacesMaximizedClosed
      (And.intro E.upperBoundInequalityClosed
        (And.intro E.equalityOnlyForCyclicClosed E.gVectorNonnegativeClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
