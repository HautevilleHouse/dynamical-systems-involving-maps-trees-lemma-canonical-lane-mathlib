import DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DynamicalSystemAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalSystemWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse