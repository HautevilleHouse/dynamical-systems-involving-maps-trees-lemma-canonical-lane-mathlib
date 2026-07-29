import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure TreesLemmaPackage where
  tree : Type u
  dynamics : tree → tree
  invariantSet : Set tree
  fixedPointProperty : Prop
  orbitCompactness : Prop
  topologicalEntropy : ℝ

def TreesLemmaClosed (T : TreesLemmaPackage) : Prop :=
  T.fixedPointProperty ∧ T.orbitCompactness

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse