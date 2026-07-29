import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure ShadowingLemmaPackage where
  dynamics : TreeDynamicsPackage
  epsilonShadowing : Prop
  shadowingProperty : Prop
  specificationProperty : Prop

def ShadowingLemmaClosed (P : ShadowingLemmaPackage) : Prop :=
  P.shadowingProperty ∧ P.specificationProperty

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse