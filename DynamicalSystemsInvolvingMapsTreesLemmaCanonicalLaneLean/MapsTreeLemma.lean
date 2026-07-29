import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure MapsTreeLemmaPackage where
  treeMap : TreeMapDynamicsPackage
  attractingSet : Prop
  shadowingProperty : Prop
  topologicalEntropyFormula : Prop
  attractingSetTerm : attractingSet
  shadowingPropertyTerm : shadowingProperty
  topologicalEntropyFormulaTerm : topologicalEntropyFormula

structure MapsTreeLemmaEvidence (M : MapsTreeLemmaPackage) where
  attractingSetClosed : M.attractingSet
  shadowingPropertyClosed : M.shadowingProperty
  topologicalEntropyFormulaClosed : M.topologicalEntropyFormula

def MapsTreeLemmaClosed (M : MapsTreeLemmaPackage) : Prop :=
  M.attractingSet ∧ M.shadowingProperty ∧ M.topologicalEntropyFormula

theorem maps_tree_lemma_closed_from_evidence (M : MapsTreeLemmaPackage)
    (E : MapsTreeLemmaEvidence M) : MapsTreeLemmaClosed M := by
  exact And.intro E.attractingSetClosed
    (And.intro E.shadowingPropertyClosed E.topologicalEntropyFormulaClosed)

theorem maps_tree_lemma_supports_formula (M : MapsTreeLemmaPackage) : Prop :=
  M.topologicalEntropyFormula

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse