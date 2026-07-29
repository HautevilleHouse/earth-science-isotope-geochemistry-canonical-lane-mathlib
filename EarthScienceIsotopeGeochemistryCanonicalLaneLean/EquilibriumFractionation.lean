import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure EquilibriumFractionationPackage where
  alphaFactor : Type u
  temperatureFunction : Type v
  deltaValue : Prop
  isotopeExchangeReaction : Prop
  partitionFunction : Prop
  vibrationalContribution : Prop

structure EquilibriumFractionationEvidence (E : EquilibriumFractionationPackage) where
  deltaValueClosed : E.deltaValue
  isotopeExchangeReactionClosed : E.isotopeExchangeReaction
  partitionFunctionClosed : E.partitionFunction
  vibrationalContributionClosed : E.vibrationalContribution

def EquilibriumFractionationClosed (E : EquilibriumFractionationPackage) : Prop :=
  E.deltaValue ∧ E.isotopeExchangeReaction ∧ E.partitionFunction ∧ E.vibrationalContribution

theorem equilibrium_fractionation_closed_from_evidence
    (E : EquilibriumFractionationPackage) (Ev : EquilibriumFractionationEvidence E) :
    EquilibriumFractionationClosed E := by
  exact And.intro Ev.deltaValueClosed
    (And.intro Ev.isotopeExchangeReactionClosed
      (And.intro Ev.partitionFunctionClosed Ev.vibrationalContributionClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse