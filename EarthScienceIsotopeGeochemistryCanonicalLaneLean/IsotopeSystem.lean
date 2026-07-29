import EarthScienceIsotopeGeochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure IsotopeSystem where
  parentIsotope : Type u
  daughterIsotope : Type v
  halfLife : Type w
  decayConstant : Type x
  initialRatio : Prop
  closureTemperature : Prop

def IsotopeSystemClosed (I : IsotopeSystem) : Prop :=
  I.initialRatio ∧ I.closureTemperature

theorem isotope_system_closed_from_evidence
    (I : IsotopeSystem) (hInit : I.initialRatio) (hClosure : I.closureTemperature) :
    IsotopeSystemClosed I := by
  exact And.intro hInit hClosure

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse