import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure DeltaNotationPackage where
  referenceMaterialDefined : Prop
  deltaValueCalculated : Prop
  perMilNotation : Prop
  fractionationCorrection : Prop

structure DeltaNotationEvidence (D : DeltaNotationPackage) where
  referenceMaterialDefinedClosed : D.referenceMaterialDefined
  deltaValueCalculatedClosed : D.deltaValueCalculated
  perMilNotationClosed : D.perMilNotation
  fractionationCorrectionClosed : D.fractionationCorrection

def DeltaNotationClosed (D : DeltaNotationPackage) : Prop :=
  D.referenceMaterialDefined ∧ D.deltaValueCalculated ∧
  D.perMilNotation ∧ D.fractionationCorrection

theorem delta_notation_closed_from_evidence
    (D : DeltaNotationPackage) (E : DeltaNotationEvidence D) :
    DeltaNotationClosed D := by
  exact And.intro E.referenceMaterialDefinedClosed
    (And.intro E.deltaValueCalculatedClosed
      (And.intro E.perMilNotationClosed E.fractionationCorrectionClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse
