import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure ReservoirMixingPackage where
  endmemberCompositionA : Type u
  endmemberCompositionB : Type v
  mixingRatio : Type w
  conservativeElement : Prop
  mixingLineEquation : Prop
  sourceIdentification : Prop

structure ReservoirMixingEvidence (P : ReservoirMixingPackage) where
  endmemberCompositionAClosed : P.endmemberCompositionA
  endmemberCompositionBClosed : P.endmemberCompositionB
  mixingRatioClosed : P.mixingRatio
  conservativeElementClosed : P.conservativeElement
  mixingLineEquationClosed : P.mixingLineEquation
  sourceIdentificationClosed : P.sourceIdentification

def ReservoirMixingClosed (P : ReservoirMixingPackage) : Prop :=
  P.endmemberCompositionA ∧ P.endmemberCompositionB ∧ P.mixingRatio ∧
  P.conservativeElement ∧ P.mixingLineEquation ∧ P.sourceIdentification

theorem reservoir_mixing_closed_from_evidence
    (P : ReservoirMixingPackage) (E : ReservoirMixingEvidence P) :
    ReservoirMixingClosed P := by
  exact And.intro E.endmemberCompositionAClosed
    (And.intro E.endmemberCompositionBClosed
      (And.intro E.mixingRatioClosed
        (And.intro E.conservativeElementClosed
          (And.intro E.mixingLineEquationClosed E.sourceIdentificationClosed))))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse