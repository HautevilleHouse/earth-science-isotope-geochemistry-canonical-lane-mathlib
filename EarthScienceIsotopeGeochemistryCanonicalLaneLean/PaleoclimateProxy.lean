import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure PaleoclimateProxyPackage where
  proxyArchive : Type u
  isotopeRatioMeasured : Type v
  calibrationEquation : Prop
  temperatureDependence : Prop
  climateReconstruction : Prop

structure PaleoclimateProxyEvidence (P : PaleoclimateProxyPackage) where
  proxyArchiveClosed : P.proxyArchive
  isotopeRatioMeasuredClosed : P.isotopeRatioMeasured
  calibrationEquationClosed : P.calibrationEquation
  temperatureDependenceClosed : P.temperatureDependence
  climateReconstructionClosed : P.climateReconstruction

def PaleoclimateProxyClosed (P : PaleoclimateProxyPackage) : Prop :=
  P.proxyArchive ∧ P.isotopeRatioMeasured ∧ P.calibrationEquation ∧
  P.temperatureDependence ∧ P.climateReconstruction

theorem paleoclimate_proxy_closed_from_evidence
    (P : PaleoclimateProxyPackage) (E : PaleoclimateProxyEvidence P) :
    PaleoclimateProxyClosed P := by
  exact And.intro E.proxyArchiveClosed
    (And.intro E.isotopeRatioMeasuredClosed
      (And.intro E.calibrationEquationClosed
        (And.intro E.temperatureDependenceClosed E.climateReconstructionClosed)))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse