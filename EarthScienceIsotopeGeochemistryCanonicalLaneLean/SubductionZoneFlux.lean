import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure SubductionZoneFluxPackage where
  slabComposition : Type u
  fluidMobility : Type v
  traceElementPartitioning : Prop
  isotopeFractionationDuringSubduction : Prop
  arcMagmaSignature : Prop

structure SubductionZoneFluxEvidence (P : SubductionZoneFluxPackage) where
  slabCompositionClosed : P.slabComposition
  fluidMobilityClosed : P.fluidMobility
  traceElementPartitioningClosed : P.traceElementPartitioning
  isotopeFractionationDuringSubductionClosed : P.isotopeFractionationDuringSubduction
  arcMagmaSignatureClosed : P.arcMagmaSignature

def SubductionZoneFluxClosed (P : SubductionZoneFluxPackage) : Prop :=
  P.slabComposition ∧ P.fluidMobility ∧ P.traceElementPartitioning ∧
  P.isotopeFractionationDuringSubduction ∧ P.arcMagmaSignature

theorem subduction_zone_flux_closed_from_evidence
    (P : SubductionZoneFluxPackage) (E : SubductionZoneFluxEvidence P) :
    SubductionZoneFluxClosed P := by
  exact And.intro E.slabCompositionClosed
    (And.intro E.fluidMobilityClosed
      (And.intro E.traceElementPartitioningClosed
        (And.intro E.isotopeFractionationDuringSubductionClosed E.arcMagmaSignatureClosed)))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse