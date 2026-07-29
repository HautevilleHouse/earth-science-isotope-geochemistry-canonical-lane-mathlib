import EarthScienceIsotopeGeochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure RayleighFractionationPackage where
  initialRatio : ℝ
  fractionRemaining : ℝ
  fractionationFactor : ℝ
  isotopicRatio : ℝ
  rayleighLaw : isotopicRatio = initialRatio * fractionRemaining^(fractionationFactor - 1)

structure RayleighFractionationEvidence (R : RayleighFractionationPackage) where
  initialRatioClosed : R.initialRatio > 0
  fractionRemainingClosed : R.fractionRemaining > 0
  fractionationFactorClosed : R.fractionationFactor ≠ 1

def RayleighFractionationClosed (R : RayleighFractionationPackage) : Prop :=
  R.initialRatio > 0 ∧ R.fractionRemaining > 0 ∧ R.fractionationFactor ≠ 1

theorem rayleigh_fractionation_closed_from_evidence (R : RayleighFractionationPackage)
    (E : RayleighFractionationEvidence R) : RayleighFractionationClosed R := by
  exact And.intro E.initialRatioClosed (And.intro E.fractionRemainingClosed E.fractionationFactorClosed)

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse
