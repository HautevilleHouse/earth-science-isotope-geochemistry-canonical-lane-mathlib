import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure MassSpectrometryPackage where
  ionBeamMeasurement : Prop
  standardBracketingCorrection : Prop
  instrumentMassBias : Prop
  internalPrecisionEstimate : Prop

structure MassSpectrometryEvidence (M : MassSpectrometryPackage) where
  ionBeamMeasurementClosed : M.ionBeamMeasurement
  standardBracketingCorrectionClosed : M.standardBracketingCorrection
  instrumentMassBiasClosed : M.instrumentMassBias
  internalPrecisionEstimateClosed : M.internalPrecisionEstimate

def MassSpectrometryClosed (M : MassSpectrometryPackage) : Prop :=
  M.ionBeamMeasurement ∧ M.standardBracketingCorrection ∧
  M.instrumentMassBias ∧ M.internalPrecisionEstimate

theorem mass_spectrometry_closed_from_evidence
    (M : MassSpectrometryPackage) (E : MassSpectrometryEvidence M) :
    MassSpectrometryClosed M := by
  exact And.intro E.ionBeamMeasurementClosed
    (And.intro E.standardBracketingCorrectionClosed
      (And.intro E.instrumentMassBiasClosed
        E.internalPrecisionEstimateClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse