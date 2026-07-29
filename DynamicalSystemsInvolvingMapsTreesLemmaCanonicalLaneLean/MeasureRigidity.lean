import DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean.BoundaryRepresentation

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure MeasureRigidityPackage {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} {B : BoundaryRepresentationPackage T S} where
  invariantMeasuresClassified : Prop
  ergodicDecomposition : Prop
  uniqueEquilibriumExists : Prop
  rigidityMainTheorem : Prop

structure MeasureRigidityEvidence {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} {B : BoundaryRepresentationPackage T S}
    (M : MeasureRigidityPackage T S B) where
  invariantMeasuresClassifiedClosed : M.invariantMeasuresClassified
  ergodicDecompositionClosed : M.ergodicDecomposition
  uniqueEquilibriumExistsClosed : M.uniqueEquilibriumExists
  rigidityMainTheoremClosed : M.rigidityMainTheorem

def MeasureRigidityClosed {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} {B : BoundaryRepresentationPackage T S}
    (M : MeasureRigidityPackage T S B) : Prop :=
  M.invariantMeasuresClassified ∧ M.ergodicDecomposition ∧
  M.uniqueEquilibriumExists ∧ M.rigidityMainTheorem

theorem measure_rigidity_closed_from_evidence
    {T : TreeMapSystemPackage} {S : SymbolicDynamicsPackage T}
    {B : BoundaryRepresentationPackage T S}
    (M : MeasureRigidityPackage T S B) (E : MeasureRigidityEvidence M) :
    MeasureRigidityClosed M := by
  exact And.intro E.invariantMeasuresClassifiedClosed
    (And.intro E.ergodicDecompositionClosed
      (And.intro E.uniqueEquilibriumExistsClosed E.rigidityMainTheoremClosed))

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse