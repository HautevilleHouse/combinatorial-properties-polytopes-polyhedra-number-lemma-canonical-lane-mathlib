import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure McMullenInequalitiesPackage where
  gVector : ℕ → ℕ
  generalizedLowerBound : Prop
  toricVarietyInterpretation : Prop
  inequalitiesHeld : Prop
  generalizedLowerBoundClosed : generalizedLowerBound
  toricVarietyInterpretationClosed : toricVarietyInterpretation
  inequalitiesHeldClosed : inequalitiesHeld

structure McMullenInequalitiesEvidence (M : McMullenInequalitiesPackage) where
  gNonnegative : ∀ i, M.gVector i ≥ 0
  generalizedLowerBoundClosed : M.generalizedLowerBound
  toricVarietyInterpretationClosed : M.toricVarietyInterpretation
  inequalitiesHeldClosed : M.inequalitiesHeld

def McMullenInequalitiesClosed (M : McMullenInequalitiesPackage) : Prop :=
  (∀ i, M.gVector i ≥ 0) ∧ M.generalizedLowerBound ∧
  M.toricVarietyInterpretation ∧ M.inequalitiesHeld

theorem mc_mullen_inequalities_closed_from_evidence
    (M : McMullenInequalitiesPackage) (E : McMullenInequalitiesEvidence M) :
    McMullenInequalitiesClosed M := by
  refine And.intro (by intro i; exact E.gNonnegative i)
    (And.intro E.generalizedLowerBoundClosed
      (And.intro E.toricVarietyInterpretationClosed E.inequalitiesHeldClosed))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
