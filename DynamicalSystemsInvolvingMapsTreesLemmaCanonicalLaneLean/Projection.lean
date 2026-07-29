import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

def projection (x : AdmissibleClass) : AdmissibleClass := x

theorem projection_idempotent (x : AdmissibleClass) :
    projection (projection x) = projection x := by
  rfl

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse