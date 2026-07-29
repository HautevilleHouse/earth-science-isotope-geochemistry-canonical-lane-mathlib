import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure IsotopeFractionationKineticsPackage where
  reactionRate : Type u
  equilibriumConstant : Type v
  kineticIsotopeEffect : Prop
  transitionStateTheory : Prop
  rateDeterminingStep : Prop
  isotopeMassBalance : Prop

structure IsotopeFractionationKineticsEvidence (K : IsotopeFractionationKineticsPackage) where
  kineticIsotopeEffectClosed : K.kineticIsotopeEffect
  transitionStateTheoryClosed : K.transitionStateTheory
  rateDeterminingStepClosed : K.rateDeterminingStep
  isotopeMassBalanceClosed : K.isotopeMassBalance

def IsotopeFractionationKineticsClosed (K : IsotopeFractionationKineticsPackage) : Prop :=
  K.kineticIsotopeEffect ∧ K.transitionStateTheory ∧ K.rateDeterminingStep ∧ K.isotopeMassBalance

theorem isotope_fractionation_kinetics_closed_from_evidence
    (K : IsotopeFractionationKineticsPackage) (E : IsotopeFractionationKineticsEvidence K) :
    IsotopeFractionationKineticsClosed K := by
  exact And.intro E.kineticIsotopeEffectClosed
    (And.intro E.transitionStateTheoryClosed
      (And.intro E.rateDeterminingStepClosed E.isotopeMassBalanceClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse