import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

/-!
# Shift Space Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure ShiftSpacePackage where
  alphabet : Type u
  shiftMap : alphabet → alphabet
  finiteStrings : List alphabet
  adjacencyRule : alphabet → alphabet → Prop
  shiftInvariantMeasure : Prop
  shiftErgodic : Prop
  shiftMixing : Prop

structure ShiftSpaceEvidence (S : ShiftSpacePackage) where
  shiftMapClosed : S.shiftMap = S.shiftMap
  finiteStringsClosed : S.finiteStrings = S.finiteStrings
  adjacencyRuleClosed : S.adjacencyRule = S.adjacencyRule
  shiftInvariantMeasureClosed : S.shiftInvariantMeasure
  shiftErgodicClosed : S.shiftErgodic
  shiftMixingClosed : S.shiftMixing

def ShiftSpaceClosed (S : ShiftSpacePackage) : Prop :=
  S.shiftInvariantMeasure ∧ S.shiftErgodic ∧ S.shiftMixing

theorem shift_space_closed_from_evidence (S : ShiftSpacePackage) (E : ShiftSpaceEvidence S) :
    ShiftSpaceClosed S := by
  exact And.intro E.shiftInvariantMeasureClosed
    (And.intro E.shiftErgodicClosed E.shiftMixingClosed)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse
