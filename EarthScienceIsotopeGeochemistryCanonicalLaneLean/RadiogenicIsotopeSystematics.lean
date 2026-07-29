import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure RadiogenicSystemPackage where
  parentNuclideDecay : Prop
  isochronRegressionMethod : Prop
  initialRatioDetermination : Prop
  closureTemperatureConcept : Prop

structure RadiogenicSystemEvidence (R : RadiogenicSystemPackage) where
  parentNuclideDecayClosed : R.parentNuclideDecay
  isochronRegressionMethodClosed : R.isochronRegressionMethod
  initialRatioDeterminationClosed : R.initialRatioDetermination
  closureTemperatureConceptClosed : R.closureTemperatureConcept

def RadiogenicSystemClosed (R : RadiogenicSystemPackage) : Prop :=
  R.parentNuclideDecay ∧ R.isochronRegressionMethod ∧
  R.initialRatioDetermination ∧ R.closureTemperatureConcept

theorem radiogenic_system_closed_from_evidence
    (R : RadiogenicSystemPackage) (E : RadiogenicSystemEvidence R) :
    RadiogenicSystemClosed R := by
  exact And.intro E.parentNuclideDecayClosed
    (And.intro E.isochronRegressionMethodClosed
      (And.intro E.initialRatioDeterminationClosed
        E.closureTemperatureConceptClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse