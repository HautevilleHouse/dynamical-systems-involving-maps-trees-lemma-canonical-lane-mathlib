import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TreeObject where
  carrier : Type
  topology : TopologicalSpace carrier
  treeStructure : Prop

structure TreeMap where
  source : TreeObject
  target : TreeObject
  mapping : source.carrier → target.carrier
  continuity : Prop
  preservesTreeStructure : Prop
  conclusion : preservesTreeStructure

structure TreeLemmaObject where
  tree : TreeObject
  finiteBranching : Prop
  map : TreeMap tree tree
  periodicPoints : Set tree.carrier
  conclusion : periodicPoints.Nonempty

def TreeWitnessClosed (O : TreeLemmaObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : TreeLemmaObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TreeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse