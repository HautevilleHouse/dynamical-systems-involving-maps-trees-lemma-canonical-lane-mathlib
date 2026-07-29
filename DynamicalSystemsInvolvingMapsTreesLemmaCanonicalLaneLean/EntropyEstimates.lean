import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure EntropyEstimatesPackage where
  treeMap : TreeMapDynamicsPackage
  topologicalEntropyLowerBound : Prop
  topologicalEntropyUpperBound : Prop
  measureEntropyLowerBound : Prop
  measureEntropyUpperBound : Prop
  lowerBoundTerm : topologicalEntropyLowerBound
  upperBoundTerm : topologicalEntropyUpperBound
  measureLowerBoundTerm : measureEntropyLowerBound
  measureUpperBoundTerm : measureEntropyUpperBound

structure EntropyEstimatesEvidence (E : EntropyEstimatesPackage) where
  topologicalEntropyLowerBoundClosed : E.topologicalEntropyLowerBound
  topologicalEntropyUpperBoundClosed : E.topologicalEntropyUpperBound
  measureEntropyLowerBoundClosed : E.measureEntropyLowerBound
  measureEntropyUpperBoundClosed : E.measureEntropyUpperBound

def EntropyEstimatesClosed (E : EntropyEstimatesPackage) : Prop :=
  E.topologicalEntropyLowerBound ∧ E.topologicalEntropyUpperBound ∧
  E.measureEntropyLowerBound ∧ E.measureEntropyUpperBound

theorem entropy_estimates_closed_from_evidence (E : EntropyEstimatesPackage)
    (Ev : EntropyEstimatesEvidence E) : EntropyEstimatesClosed E := by
  exact And.intro Ev.topologicalEntropyLowerBoundClosed
    (And.intro Ev.topologicalEntropyUpperBoundClosed
      (And.intro Ev.measureEntropyLowerBoundClosed Ev.measureEntropyUpperBoundClosed))

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse