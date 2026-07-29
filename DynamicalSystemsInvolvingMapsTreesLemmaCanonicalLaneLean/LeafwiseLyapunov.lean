import DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean.MeasureRigidity

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure LeafwiseLyapunovPackage {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} {B : BoundaryRepresentationPackage T S}
    {M : MeasureRigidityPackage T S B} where
  foliation : Type u1
  leafwiseCocycle : Type u2
  LyapunovSpectrumExists : Prop
  OseledetsTheoremApplied : Prop
  stableUnstableManifolds : Prop

structure LeafwiseLyapunovEvidence {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} {B : BoundaryRepresentationPackage T S}
    {M : MeasureRigidityPackage T S B}
    (L : LeafwiseLyapunovPackage T S B M) where
  LyapunovSpectrumExistsClosed : L.LyapunovSpectrumExists
  OseledetsTheoremAppliedClosed : L.OseledetsTheoremApplied
  stableUnstableManifoldsClosed : L.stableUnstableManifolds

def LeafwiseLyapunovClosed {T : TreeMapSystemPackage}
    {S : SymbolicDynamicsPackage T} {B : BoundaryRepresentationPackage T S}
    {M : MeasureRigidityPackage T S B}
    (L : LeafwiseLyapunovPackage T S B M) : Prop :=
  L.LyapunovSpectrumExists ∧ L.OseledetsTheoremApplied ∧ L.stableUnstableManifolds

theorem leafwise_lyapunov_closed_from_evidence
    {T : TreeMapSystemPackage} {S : SymbolicDynamicsPackage T}
    {B : BoundaryRepresentationPackage T S} {M : MeasureRigidityPackage T S B}
    (L : LeafwiseLyapunovPackage T S B M)
    (E : LeafwiseLyapunovEvidence L) : LeafwiseLyapunovClosed L := by
  exact And.intro E.LyapunovSpectrumExistsClosed
    (And.intro E.OseledetsTheoremAppliedClosed E.stableUnstableManifoldsClosed)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse