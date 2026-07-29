import EarthScienceIsotopeGeochemistryCanonicalLaneLean.FractionationFactor

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure RayleighDistillationPackage where
  residualFraction : Type u
  initialIsotopeRatio : Type v
  fractionationFactor : FractionationFactorPackage
  closedSystem : Prop
  batchDistillation : Prop
  openSystem : Prop

structure RayleighDistillationEvidence (R : RayleighDistillationPackage) where
  residualFractionClosed : R.residualFraction
  initialIsotopeRatioClosed : R.initialIsotopeRatio
  fractionationFactorClosed : FractionationFactorClosed R.fractionationFactor
  closedSystemClosed : R.closedSystem
  batchDistillationClosed : R.batchDistillation
  openSystemClosed : R.openSystem

def RayleighDistillationClosed (R : RayleighDistillationPackage) : Prop :=
  R.residualFraction ∧ R.initialIsotopeRatio ∧
  FractionationFactorClosed R.fractionationFactor ∧
  R.closedSystem ∧ R.batchDistillation ∧ R.openSystem

theorem rayleigh_distillation_closed_from_evidence
    (R : RayleighDistillationPackage) (E : RayleighDistillationEvidence R) :
    RayleighDistillationClosed R := by
  exact And.intro E.residualFractionClosed
    (And.intro E.initialIsotopeRatioClosed
      (And.intro E.fractionationFactorClosed
        (And.intro E.closedSystemClosed
          (And.intro E.batchDistillationClosed E.openSystemClosed))))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse