import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Type u
  activationEnergy : Type v
  arrheniusEquation : Prop
  transitionState : Prop
  isotopeEffectOnRate : Prop
  steadyStateApproximation : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  arrheniusEquationClosed : R.arrheniusEquation
  transitionStateClosed : R.transitionState
  isotopeEffectOnRateClosed : R.isotopeEffectOnRate
  steadyStateApproximationClosed : R.steadyStateApproximation

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.arrheniusEquation ∧ R.transitionState ∧ R.isotopeEffectOnRate ∧ R.steadyStateApproximation

theorem reaction_kinetics_closed_from_evidence
    (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.arrheniusEquationClosed
    (And.intro E.transitionStateClosed
      (And.intro E.isotopeEffectOnRateClosed E.steadyStateApproximationClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse