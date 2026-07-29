import EarthScienceIsotopeGeochemistryCanonicalLaneLean.EquilibriumFractionation

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure ClumpedIsotopeThermometryPackage where
  delta47 : ℝ
  temperature : ℝ
  calibrationEquation : delta47 = 0.0523 / (temperature^2) - 0.0001

structure ClumpedIsotopeThermometryEvidence (C : ClumpedIsotopeThermometryPackage) where
  delta47Measured : C.delta47 > 0
  temperatureInRange : C.temperature > 200 ∧ C.temperature < 400

def ClumpedIsotopeThermometryClosed (C : ClumpedIsotopeThermometryPackage) : Prop :=
  C.delta47 > 0 ∧ C.temperature > 200 ∧ C.temperature < 400

theorem clumped_isotope_thermometry_closed_from_evidence
    (C : ClumpedIsotopeThermometryPackage) (E : ClumpedIsotopeThermometryEvidence C) :
    ClumpedIsotopeThermometryClosed C := by
  exact And.intro E.delta47Measured E.temperatureInRange

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse
