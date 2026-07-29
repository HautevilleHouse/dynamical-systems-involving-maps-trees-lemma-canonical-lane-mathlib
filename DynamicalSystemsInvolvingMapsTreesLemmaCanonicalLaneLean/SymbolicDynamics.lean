import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

/-!
# Symbolic Dynamics Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure SymbolicDynamicsPackage where
  shiftSpace : ShiftSpacePackage
  codingTree : TreeCodingPackage
  shiftCodingCompatibility : Prop
  entropyCalculation : Prop
  topologicalEntropy : ℝ
  mixingProperties : Prop
  specificationProperty : Prop

structure SymbolicDynamicsEvidence (SD : SymbolicDynamicsPackage) where
  shiftCodingCompatibilityClosed : SD.shiftCodingCompatibility
  entropyCalculationClosed : SD.entropyCalculation
  topologicalEntropyClosed : SD.topologicalEntropy = SD.topologicalEntropy
  mixingPropertiesClosed : SD.mixingProperties
  specificationPropertyClosed : SD.specificationProperty

def SymbolicDynamicsClosed (SD : SymbolicDynamicsPackage) : Prop :=
  SD.shiftCodingCompatibility ∧ SD.entropyCalculation ∧
  SD.mixingProperties ∧ SD.specificationProperty

theorem symbolic_dynamics_closed_from_evidence (SD : SymbolicDynamicsPackage)
    (E : SymbolicDynamicsEvidence SD) : SymbolicDynamicsClosed SD := by
  exact And.intro E.shiftCodingCompatibilityClosed
    (And.intro E.entropyCalculationClosed
      (And.intro E.mixingPropertiesClosed E.specificationPropertyClosed))

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse
