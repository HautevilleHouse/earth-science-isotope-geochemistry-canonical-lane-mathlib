import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  fractionationFactor : Type u
  temperatureDependence : Type v
  gibbsFreeEnergy : Prop
  isotopicExchange : Prop
  equilibriumConstantCalculated : Prop
  partitionFunctionRatio : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  isotopicExchangeClosed : T.isotopicExchange
  equilibriumConstantCalculatedClosed : T.equilibriumConstantCalculated
  partitionFunctionRatioClosed : T.partitionFunctionRatio

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.isotopicExchange ∧ T.equilibriumConstantCalculated ∧ T.partitionFunctionRatio

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.isotopicExchangeClosed
      (And.intro E.equilibriumConstantCalculatedClosed E.partitionFunctionRatioClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse