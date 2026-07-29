import canonicalLaneMathlib.AdmissibleClass
import EarthScienceIsotopeGeochemistryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

def ConstrainedIsotopeGeochemistryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_isotope_geochemistry_endgame (A : AdmissibleClass) :
    ConstrainedIsotopeGeochemistryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse