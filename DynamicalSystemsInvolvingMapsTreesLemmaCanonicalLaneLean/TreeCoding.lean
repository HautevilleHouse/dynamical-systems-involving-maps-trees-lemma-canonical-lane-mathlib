import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

/-!
# Tree Coding Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure TreeCodingPackage where
  treeType : Type u
  root : treeType
  children : treeType → List treeType
  labeling : treeType → String
  codingMap : (Nat → String) → treeType
  surjectivity : Prop
  continuity : Prop
  markovProperty : Prop
  structure treeType → Prop

structure TreeCodingEvidence (T : TreeCodingPackage) where
  surjectivityClosed : T.surjectivity
  continuityClosed : T.continuity
  markovPropertyClosed : T.markovProperty
  labelingClosed : True

def TreeCodingClosed (T : TreeCodingPackage) : Prop :=
  T.surjectivity ∧ T.continuity ∧ T.markovProperty

theorem tree_coding_closed_from_evidence (T : TreeCodingPackage) (E : TreeCodingEvidence T) :
    TreeCodingClosed T := by
  exact And.intro E.surjectivityClosed
    (And.intro E.continuityClosed E.markovPropertyClosed)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse
