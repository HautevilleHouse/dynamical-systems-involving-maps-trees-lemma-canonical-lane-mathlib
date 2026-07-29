import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

def ConstrainedTreeLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tree_lemma_endgame (A : AdmissibleClass) :
    ConstrainedTreeLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse