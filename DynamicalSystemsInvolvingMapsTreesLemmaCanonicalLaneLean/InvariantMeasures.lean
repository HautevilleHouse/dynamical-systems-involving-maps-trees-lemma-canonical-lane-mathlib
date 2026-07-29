import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure InvariantMeasuresPackage where
  treeMap : TreeMapDynamicsPackage
  invariantMeasureSet : Prop
  ergodicMeasures : Prop
  decompositionUnique : Prop
  invariantMeasureSetTerm : invariantMeasureSet
  ergodicMeasuresTerm : ergodicMeasures
  decompositionUniqueTerm : decompositionUnique

structure InvariantMeasuresEvidence (I : InvariantMeasuresPackage) where
  invariantMeasureSetClosed : I.invariantMeasureSet
  ergodicMeasuresClosed : I.ergodicMeasures
  decompositionUniqueClosed : I.decompositionUnique

def InvariantMeasuresClosed (I : InvariantMeasuresPackage) : Prop :=
  I.invariantMeasureSet ∧ I.ergodicMeasures ∧ I.decompositionUnique

theorem invariant_measures_closed_from_evidence (I : InvariantMeasuresPackage)
    (E : InvariantMeasuresEvidence I) : InvariantMeasuresClosed I := by
  exact And.intro E.invariantMeasureSetClosed
    (And.intro E.ergodicMeasuresClosed E.decompositionUniqueClosed)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse