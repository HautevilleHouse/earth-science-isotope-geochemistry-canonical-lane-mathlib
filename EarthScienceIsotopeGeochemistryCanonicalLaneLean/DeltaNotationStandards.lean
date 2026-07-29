import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure DeltaNotationPackage where
  deltaValueDefined : Prop
  referenceStandardStated : Prop
  permilScaleUsed : Prop
  isotopicRatioConversion : Prop

structure DeltaNotationEvidence (D : DeltaNotationPackage) where
  deltaValueDefinedClosed : D.deltaValueDefined
  referenceStandardStatedClosed : D.referenceStandardStated
  permilScaleUsedClosed : D.permilScaleUsed
  isotopicRatioConversionClosed : D.isotopicRatioConversion

def DeltaNotationClosed (D : DeltaNotationPackage) : Prop :=
  D.deltaValueDefined ∧ D.referenceStandardStated ∧
  D.permilScaleUsed ∧ D.isotopicRatioConversion

theorem delta_notation_closed_from_evidence
    (D : DeltaNotationPackage) (E : DeltaNotationEvidence D) :
    DeltaNotationClosed D := by
  exact And.intro E.deltaValueDefinedClosed
    (And.intro E.referenceStandardStatedClosed
      (And.intro E.permilScaleUsedClosed
        E.isotopicRatioConversionClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse