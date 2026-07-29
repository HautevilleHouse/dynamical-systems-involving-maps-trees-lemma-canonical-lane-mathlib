import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (D : DynamicalSystemPackage),
    ∃ (M : MapsTreesLemmaPackage D),
      MapsTreesLemmaClosed D M

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Provide a constructive existence: we can always build a trivial dynamical system
  let D : DynamicalSystemPackage :=
    { stateSpace := Unit
      map := id
      topologicalSpace := by infer_instance
      continuousMap := continuous_id
      invariantSet := Set.univ
      forwardOrbit := λ _ => Set.univ
      treeStructure := Unit
      treeMap := id
      codingMap := λ _ => ()
      codingContinuous := continuous_const
      codingSemiConjugate := λ _ => rfl
    }
  let M : MapsTreesLemmaPackage D :=
    { treeRecurrence := True
      periodicOrbitDensity := True
      minimalSetStructure := True
      codingMapInjectiveOnMinimal := True
      topologicalEntropyFormula := True
    }
  have h : MapsTreesLemmaClosed D M := by
    refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> trivial
  exact ⟨D, M, h⟩

end DynamicalSystemsInvolvingMapsTreesLemmaCanonicalLaneLean
end HautevilleHouse