import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure TreesLemmaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TreesLemmaAdmittedObject where
  space : TreesLemmaSpace
  treeInvariant : Prop
  mapContinuous : Prop
  conclusion : mapContinuous

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse