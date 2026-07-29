import DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean.AdmissibleObject

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure TreeMapSystemPackage where
  space : Type u
  map : space → space
  treeStructure : Prop
  forwardInvariance : Prop
  periodicPointsClassified : Prop
  growthRatesControlled : Prop

structure TreeMapSystemEvidence (T : TreeMapSystemPackage) where
  treeStructureClosed : T.treeStructure
  forwardInvarianceClosed : T.forwardInvariance
  periodicPointsClassifiedClosed : T.periodicPointsClassified
  growthRatesControlledClosed : T.growthRatesControlled

def TreeMapSystemClosed (T : TreeMapSystemPackage) : Prop :=
  T.treeStructure ∧ T.forwardInvariance ∧
  T.periodicPointsClassified ∧ T.growthRatesControlled

theorem tree_map_system_closed_from_evidence
    (T : TreeMapSystemPackage) (E : TreeMapSystemEvidence T) :
    TreeMapSystemClosed T := by
  exact And.intro E.treeStructureClosed
    (And.intro E.forwardInvarianceClosed
      (And.intro E.periodicPointsClassifiedClosed E.growthRatesControlledClosed))

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse