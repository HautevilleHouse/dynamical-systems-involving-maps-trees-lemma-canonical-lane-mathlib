import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure DynamicalSystemPackage where
  stateSpace : Type u
  map : stateSpace → stateSpace
  topologicalSpace : TopologicalSpace stateSpace
  continuousMap : Continuous map
  invariantSet : Set stateSpace
  forwardOrbit : stateSpace → Set stateSpace
  treeStructure : Type v
  treeMap : treeStructure → treeStructure
  codingMap : stateSpace → treeStructure
  codingContinuous : Continuous codingMap
  codingSemiConjugate : ∀ x, codingMap (map x) = treeMap (codingMap x)

structure DynamicalSystemEvidence (D : DynamicalSystemPackage) where
  invariantSetClosed : Set D.stateSpace → Prop
  forwardOrbitClosed : D.stateSpace → Set D.stateSpace → Prop
  semiConjugacyEstablished : ∀ x, D.codingMap (D.map x) = D.treeMap (D.codingMap x)

def DynamicalSystemClosed (D : DynamicalSystemPackage) : Prop :=
  D.continuousMap ∧ D.codingContinuous ∧
  ∀ x, D.codingMap (D.map x) = D.treeMap (D.codingMap x)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse