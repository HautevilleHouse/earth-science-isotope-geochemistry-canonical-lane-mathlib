import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  electronicStructure : Type u
  orbitalConfig : Type v
  isotopeShift : Prop
  vibrationalFrequency : Prop
  bondOrder : Prop
  zeroPointEnergy : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  isotopeShiftClosed : M.isotopeShift
  vibrationalFrequencyClosed : M.vibrationalFrequency
  bondOrderClosed : M.bondOrder
  zeroPointEnergyClosed : M.zeroPointEnergy

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.isotopeShift ∧ M.vibrationalFrequency ∧ M.bondOrder ∧ M.zeroPointEnergy

theorem molecular_orbital_theory_closed_from_evidence
    (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.isotopeShiftClosed
    (And.intro E.vibrationalFrequencyClosed
      (And.intro E.bondOrderClosed E.zeroPointEnergyClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse