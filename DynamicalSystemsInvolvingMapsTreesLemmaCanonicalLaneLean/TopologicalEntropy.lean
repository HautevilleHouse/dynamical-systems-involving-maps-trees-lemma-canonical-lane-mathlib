import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure TopologicalEntropyPackage where
  dynamics : TreeDynamicsPackage
  entropyNumber : ℝ
  entropyPositive : Prop
  entropyComputation : Prop

def TopologicalEntropyClosed (P : TopologicalEntropyPackage) : Prop :=
  P.entropyPositive ∧ P.entropyComputation

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse