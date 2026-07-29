import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure MapsTreesLemmaPackage (D : DynamicalSystemPackage) where
  treeRecurrence : Prop
  periodicOrbitDensity : Prop
  minimalSetStructure : Prop
  codingMapInjectiveOnMinimal : Prop
  topologicalEntropyFormula : Prop

structure MapsTreesLemmaEvidence (D : DynamicalSystemPackage) (M : MapsTreesLemmaPackage D) where
  treeRecurrenceClosed : M.treeRecurrence
  periodicOrbitDensityClosed : M.periodicOrbitDensity
  minimalSetStructureClosed : M.minimalSetStructure
  codingMapInjectiveOnMinimalClosed : M.codingMapInjectiveOnMinimal
  topologicalEntropyFormulaClosed : M.topologicalEntropyFormula

def MapsTreesLemmaClosed (D : DynamicalSystemPackage) (M : MapsTreesLemmaPackage D) : Prop :=
  M.treeRecurrence ∧ M.periodicOrbitDensity ∧ M.minimalSetStructure ∧
  M.codingMapInjectiveOnMinimal ∧ M.topologicalEntropyFormula

theorem maps_trees_lemma_closed_from_evidence
    (D : DynamicalSystemPackage) (M : MapsTreesLemmaPackage D)
    (E : MapsTreesLemmaEvidence D M) : MapsTreesLemmaClosed D M := by
  exact And.intro E.treeRecurrenceClosed
    (And.intro E.periodicOrbitDensityClosed
      (And.intro E.minimalSetStructureClosed
        (And.intro E.codingMapInjectiveOnMinimalClosed
          E.topologicalEntropyFormulaClosed)))

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse