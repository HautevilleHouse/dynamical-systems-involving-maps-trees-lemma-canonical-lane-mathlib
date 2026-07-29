import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure PeriodicPointClassificationPackage where
  dynamics : TreeDynamicsPackage
  periodicSet : Set dynamics.tree.carrier
  periodicDense : Prop
  minimalPeriods : Set ℕ
  primePeriodBound : ℕ
  classificationComplete : Prop

structure PeriodicPointClassificationEvidence (P : PeriodicPointClassificationPackage) where
  periodicDenseClosed : P.periodicDense
  classificationCompleteClosed : P.classificationComplete

def PeriodicPointClassificationClosed (P : PeriodicPointClassificationPackage) : Prop :=
  P.periodicDense ∧ P.classificationComplete

theorem periodic_point_classification_closed_from_evidence
    (P : PeriodicPointClassificationPackage) (E : PeriodicPointClassificationEvidence P) :
    PeriodicPointClassificationClosed P := by
  exact And.intro E.periodicDenseClosed E.classificationCompleteClosed

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse