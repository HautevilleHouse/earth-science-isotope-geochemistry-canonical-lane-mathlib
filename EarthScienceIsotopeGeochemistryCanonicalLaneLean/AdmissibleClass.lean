import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure IsotopeAdmittedObject where
  sample : Type
  isotopeRatio : sample → ℝ
  fractionationFactor : ℝ
  conclusion : fractionationFactor > 0

structure AdmissibleClass where
  object : IsotopeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse
