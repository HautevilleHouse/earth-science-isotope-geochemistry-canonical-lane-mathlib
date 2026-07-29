import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure MassSpectrometryPackage where
  instrumentPrecision : Prop
  normalizationMethod : Prop
  interferenceCorrection : Prop
  standardReference : Prop

structure MassSpectrometryEvidence (M : MassSpectrometryPackage) where
  instrumentPrecisionClosed : M.instrumentPrecision
  normalizationMethodClosed : M.normalizationMethod
  interferenceCorrectionClosed : M.interferenceCorrection
  standardReferenceClosed : M.standardReference

def MassSpectrometryClosed (M : MassSpectrometryPackage) : Prop :=
  M.instrumentPrecision ∧ M.normalizationMethod ∧
  M.interferenceCorrection ∧ M.standardReference

theorem mass_spectrometry_closed_from_evidence
    (M : MassSpectrometryPackage) (E : MassSpectrometryEvidence M) :
    MassSpectrometryClosed M := by
  exact And.intro E.instrumentPrecisionClosed
    (And.intro E.normalizationMethodClosed
      (And.intro E.interferenceCorrectionClosed E.standardReferenceClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse
