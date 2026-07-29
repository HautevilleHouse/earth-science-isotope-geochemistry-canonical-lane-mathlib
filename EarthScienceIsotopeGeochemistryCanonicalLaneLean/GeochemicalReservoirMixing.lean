import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure ReservoirMixingPackage where
  mixingModelDefined : Prop
  isotopeConservationLaw : Prop
  binaryMixingEquation : Prop
  mantleCrustDifferentiation : Prop

structure ReservoirMixingEvidence (R : ReservoirMixingPackage) where
  mixingModelDefinedClosed : R.mixingModelDefined
  isotopeConservationLawClosed : R.isotopeConservationLaw
  binaryMixingEquationClosed : R.binaryMixingEquation
  mantleCrustDifferentiationClosed : R.mantleCrustDifferentiation

def ReservoirMixingClosed (R : ReservoirMixingPackage) : Prop :=
  R.mixingModelDefined ∧ R.isotopeConservationLaw ∧
  R.binaryMixingEquation ∧ R.mantleCrustDifferentiation

theorem reservoir_mixing_closed_from_evidence
    (R : ReservoirMixingPackage) (E : ReservoirMixingEvidence R) :
    ReservoirMixingClosed R := by
  exact And.intro E.mixingModelDefinedClosed
    (And.intro E.isotopeConservationLawClosed
      (And.intro E.binaryMixingEquationClosed
        E.mantleCrustDifferentiationClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse