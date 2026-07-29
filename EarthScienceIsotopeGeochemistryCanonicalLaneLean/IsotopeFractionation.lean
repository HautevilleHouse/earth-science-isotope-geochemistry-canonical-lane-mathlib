import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure IsotopeFractionationPackage where
  equilibriumFractionationFactor : Prop
  kineticFractionationFactor : Prop
  massDependence : Prop
  temperatureDependence : Prop

structure IsotopeFractionationEvidence (F : IsotopeFractionationPackage) where
  equilibriumFractionationFactorClosed : F.equilibriumFractionationFactor
  kineticFractionationFactorClosed : F.kineticFractionationFactor
  massDependenceClosed : F.massDependence
  temperatureDependenceClosed : F.temperatureDependence

def IsotopeFractionationClosed (F : IsotopeFractionationPackage) : Prop :=
  F.equilibriumFractionationFactor ∧ F.kineticFractionationFactor ∧
  F.massDependence ∧ F.temperatureDependence

theorem isotope_fractionation_closed_from_evidence
    (F : IsotopeFractionationPackage) (E : IsotopeFractionationEvidence F) :
    IsotopeFractionationClosed F := by
  exact And.intro E.equilibriumFractionationFactorClosed
    (And.intro E.kineticFractionationFactorClosed
      (And.intro E.massDependenceClosed E.temperatureDependenceClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse
