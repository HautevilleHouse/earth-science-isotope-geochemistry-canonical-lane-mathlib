import EarthScienceIsotopeGeochemistryCanonicalLaneLean.IsotopeSystem

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure FractionationFactorPackage where
  alpha : Type u
  beta : Type v
  equilibriumConstant : Prop
  kineticFractionation : Prop
  massDependentLaw : Prop
  temperatureDependence : Prop
  pressureDependence : Prop

structure FractionationFactorEvidence (F : FractionationFactorPackage) where
  alphaClosed : F.alpha
  betaClosed : F.beta
  equilibriumConstantClosed : F.equilibriumConstant
  kineticFractionationClosed : F.kineticFractionation
  massDependentLawClosed : F.massDependentLaw
  temperatureDependenceClosed : F.temperatureDependence
  pressureDependenceClosed : F.pressureDependence

def FractionationFactorClosed (F : FractionationFactorPackage) : Prop :=
  F.alpha ∧ F.beta ∧ F.equilibriumConstant ∧ F.kineticFractionation ∧
  F.massDependentLaw ∧ F.temperatureDependence ∧ F.pressureDependence

theorem fractionation_factor_closed_from_evidence
    (F : FractionationFactorPackage) (E : FractionationFactorEvidence F) :
    FractionationFactorClosed F := by
  exact And.intro E.alphaClosed
    (And.intro E.betaClosed
      (And.intro E.equilibriumConstantClosed
        (And.intro E.kineticFractionationClosed
          (And.intro E.massDependentLawClosed
            (And.intro E.temperatureDependenceClosed E.pressureDependenceClosed)))))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse