import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure TreeDynamicsPackage where
  tree : TreeObject
  map : TreeMap tree tree
  iteratedMap : ℕ → tree.carrier → tree.carrier
  orbitClosure : tree.carrier → Set tree.carrier
  recurrentPoints : Set tree.carrier
  periodicPoints : Set tree.carrier
  minimalSubsets : Set (Set tree.carrier)
  topologicalTransitivity : Prop
  mixingProperty : Prop

def TreeDynamicsClosed (P : TreeDynamicsPackage) : Prop :=
  P.topologicalTransitivity ∧ P.mixingProperty

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse