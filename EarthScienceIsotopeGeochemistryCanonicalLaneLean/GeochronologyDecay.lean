import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure GeochronologyDecayPackage where
  parentIsotope : Type u
  daughterIsotope : Type v
  decayConstant : Type w
  halfLife : Type x
  decayEquationClosed : Prop
  isochronMethod : Prop

structure GeochronologyDecayEvidence (P : GeochronologyDecayPackage) where
  parentIsotopeClosed : P.parentIsotope
  daughterIsotopeClosed : P.daughterIsotope
  decayConstantClosed : P.decayConstant
  halfLifeClosed : P.halfLife
  decayEquationClosed : P.decayEquationClosed
  isochronMethodClosed : P.isochronMethod

def GeochronologyDecayClosed (P : GeochronologyDecayPackage) : Prop :=
  P.parentIsotope ∧ P.daughterIsotope ∧ P.decayConstant ∧
  P.halfLife ∧ P.decayEquationClosed ∧ P.isochronMethod

theorem geochronology_decay_closed_from_evidence
    (P : GeochronologyDecayPackage) (E : GeochronologyDecayEvidence P) :
    GeochronologyDecayClosed P := by
  exact And.intro E.parentIsotopeClosed
    (And.intro E.daughterIsotopeClosed
      (And.intro E.decayConstantClosed
        (And.intro E.halfLifeClosed
          (And.intro E.decayEquationClosed E.isochronMethodClosed))))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse