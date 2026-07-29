import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean

structure FaceEnumerationBridge where
  fVectorDefinition : Prop
  dehnSommervilleRelations : Prop
  upperBoundTheorem : Prop
  faceNumbersComputed : Prop
  gTheoremApplied : Prop

structure FaceEnumerationBridgeEvidence (F : FaceEnumerationBridge) where
  fVectorDefinitionClosed : F.fVectorDefinition
  dehnSommervilleRelationsClosed : F.dehnSommervilleRelations
  upperBoundTheoremClosed : F.upperBoundTheorem
  faceNumbersComputedClosed : F.faceNumbersComputed
  gTheoremAppliedClosed : F.gTheoremApplied

def FaceEnumerationBridgeClosed (F : FaceEnumerationBridge) : Prop :=
  F.fVectorDefinition ∧ F.dehnSommervilleRelations ∧ F.upperBoundTheorem ∧
  F.faceNumbersComputed ∧ F.gTheoremApplied

theorem face_enumeration_bridge_closed_from_evidence
    (F : FaceEnumerationBridge) (E : FaceEnumerationBridgeEvidence F) :
    FaceEnumerationBridgeClosed F := by
  exact And.intro E.fVectorDefinitionClosed
    (And.intro E.dehnSommervilleRelationsClosed
      (And.intro E.upperBoundTheoremClosed
        (And.intro E.faceNumbersComputedClosed E.gTheoremAppliedClosed)))

end CombinatorialPropertiesPolytopesPolyhedraNumberLemmaCanonicalLaneLean
end HautevilleHouse
