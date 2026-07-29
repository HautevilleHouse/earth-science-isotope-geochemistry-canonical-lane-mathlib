import EarthScienceIsotopeGeochemistryCanonicalLaneLean.IsotopeSystem

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure IsochronGeochronologyPackage where
  mineralIsotopeData : Type u
  isochronLine : Type v
  slopeAge : Type w
  interceptInitial : Type x
  regressionMethod : Prop
  errorAnalysis : Prop
  ageInterpretation : Prop

structure IsochronGeochronologyEvidence (I : IsochronGeochronologyPackage) where
  mineralIsotopeDataClosed : I.mineralIsotopeData
  isochronLineClosed : I.isochronLine
  slopeAgeClosed : I.slopeAge
  interceptInitialClosed : I.interceptInitial
  regressionMethodClosed : I.regressionMethod
  errorAnalysisClosed : I.errorAnalysis
  ageInterpretationClosed : I.ageInterpretation

def IsochronGeochronologyClosed (I : IsochronGeochronologyPackage) : Prop :=
  I.mineralIsotopeData ∧ I.isochronLine ∧ I.slopeAge ∧ I.interceptInitial ∧
  I.regressionMethod ∧ I.errorAnalysis ∧ I.ageInterpretation

theorem isochron_geochronology_closed_from_evidence
    (I : IsochronGeochronologyPackage) (E : IsochronGeochronologyEvidence I) :
    IsochronGeochronologyClosed I := by
  exact And.intro E.mineralIsotopeDataClosed
    (And.intro E.isochronLineClosed
      (And.intro E.slopeAgeClosed
        (And.intro E.interceptInitialClosed
          (And.intro E.regressionMethodClosed
            (And.intro E.errorAnalysisClosed E.ageInterpretationClosed)))))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse