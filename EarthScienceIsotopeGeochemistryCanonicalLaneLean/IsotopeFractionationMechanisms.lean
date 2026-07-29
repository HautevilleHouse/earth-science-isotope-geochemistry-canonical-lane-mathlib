import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure IsotopeFractionationPackage where
  equilibriumFractionationFactor : Prop
  kineticIsotopeEffect : Prop
  massDependentFractionationLaw : Prop
  isotopeExchangeReaction : Prop

structure IsotopeFractionationEvidence (P : IsotopeFractionationPackage) where
  equilibriumFractionationFactorClosed : P.equilibriumFractionationFactor
  kineticIsotopeEffectClosed : P.kineticIsotopeEffect
  massDependentFractionationLawClosed : P.massDependentFractionationLaw
  isotopeExchangeReactionClosed : P.isotopeExchangeReaction

def IsotopeFractionationClosed (P : IsotopeFractionationPackage) : Prop :=
  P.equilibriumFractionationFactor ∧ P.kineticIsotopeEffect ∧
  P.massDependentFractionationLaw ∧ P.isotopeExchangeReaction

theorem isotope_fractionation_closed_from_evidence
    (P : IsotopeFractionationPackage) (E : IsotopeFractionationEvidence P) :
    IsotopeFractionationClosed P := by
  exact And.intro E.equilibriumFractionationFactorClosed
    (And.intro E.kineticIsotopeEffectClosed
      (And.intro E.massDependentFractionationLawClosed
        E.isotopeExchangeReactionClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse