import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure TreeMapSystem where
  stateSpace : Type u
  treeStructure : stateSpace → Prop
  map : stateSpace → stateSpace
  preservesTree : Prop
  continuousOnTree : Prop
  treeStructureTerm : treeStructure
  mapTerm : map
  preservesTreeTerm : preservesTree
  continuousOnTreeTerm : continuousOnTree

structure TreeMapDynamicsPackage where
  system : TreeMapSystem
  invariantSets : Prop
  recurrentPoints : Prop
  periodicPoints : Prop
  mixingProperties : Prop
  invariantSetsTerm : invariantSets
  recurrentPointsTerm : recurrentPoints
  periodicPointsTerm : periodicPoints
  mixingPropertiesTerm : mixingProperties

structure TreeMapDynamicsEvidence (P : TreeMapDynamicsPackage) where
  invariantSetsClosed : P.invariantSets
  recurrentPointsClosed : P.recurrentPoints
  periodicPointsClosed : P.periodicPoints
  mixingPropertiesClosed : P.mixingProperties

def TreeMapDynamicsClosed (P : TreeMapDynamicsPackage) : Prop :=
  P.invariantSets ∧ P.recurrentPoints ∧ P.periodicPoints ∧ P.mixingProperties

theorem tree_map_dynamics_closed_from_evidence (P : TreeMapDynamicsPackage)
    (E : TreeMapDynamicsEvidence P) : TreeMapDynamicsClosed P := by
  exact And.intro E.invariantSetsClosed
    (And.intro E.recurrentPointsClosed
      (And.intro E.periodicPointsClosed E.mixingPropertiesClosed))

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse