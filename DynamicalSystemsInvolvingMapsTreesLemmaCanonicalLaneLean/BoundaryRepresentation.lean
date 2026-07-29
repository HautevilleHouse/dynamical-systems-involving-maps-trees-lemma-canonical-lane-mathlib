import DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean.SymbolicDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure BoundaryRepresentationPackage {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} where
  boundarySpace : Type w
  boundaryMap : T.space → boundarySpace
  injectivityOnGenericPoints : Prop
  functorialityOverShifts : Prop
  boundaryMeasureEquivariance : Prop

structure BoundaryRepresentationEvidence {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} (B : BoundaryRepresentationPackage T S) where
  injectivityOnGenericPointsClosed : B.injectivityOnGenericPoints
  functorialityOverShiftsClosed : B.functorialityOverShifts
  boundaryMeasureEquivarianceClosed : B.boundaryMeasureEquivariance

def BoundaryRepresentationClosed {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} (B : BoundaryRepresentationPackage T S) : Prop :=
  B.injectivityOnGenericPoints ∧ B.functorialityOverShifts ∧ B.boundaryMeasureEquivariance

theorem boundary_representation_closed_from_evidence
    {T : TreeMapSystemPackage} {S : SymbolicDynamicsPackage T}
    (B : BoundaryRepresentationPackage T S)
    (E : BoundaryRepresentationEvidence B) : BoundaryRepresentationClosed B := by
  exact And.intro E.injectivityOnGenericPointsClosed
    (And.intro E.functorialityOverShiftsClosed E.boundaryMeasureEquivarianceClosed)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse