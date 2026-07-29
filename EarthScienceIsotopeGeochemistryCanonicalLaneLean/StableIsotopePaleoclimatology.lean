import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure PaleoclimateProxyPackage where
  temperatureDependentFractionation : Prop
  carbonateOxygenIsotopeThermometry : Prop
  iceCoreDeuteriumExcess : Prop
  paleotemperatureEquation : Prop

structure PaleoclimateProxyEvidence (P : PaleoclimateProxyPackage) where
  temperatureDependentFractionationClosed : P.temperatureDependentFractionation
  carbonateOxygenIsotopeThermometryClosed : P.carbonateOxygenIsotopeThermometry
  iceCoreDeuteriumExcessClosed : P.iceCoreDeuteriumExcess
  paleotemperatureEquationClosed : P.paleotemperatureEquation

def PaleoclimateProxyClosed (P : PaleoclimateProxyPackage) : Prop :=
  P.temperatureDependentFractionation ∧ P.carbonateOxygenIsotopeThermometry ∧
  P.iceCoreDeuteriumExcess ∧ P.paleotemperatureEquation

theorem paleoclimate_proxy_closed_from_evidence
    (P : PaleoclimateProxyPackage) (E : PaleoclimateProxyEvidence P) :
    PaleoclimateProxyClosed P := by
  exact And.intro E.temperatureDependentFractionationClosed
    (And.intro E.carbonateOxygenIsotopeThermometryClosed
      (And.intro E.iceCoreDeuteriumExcessClosed
        E.paleotemperatureEquationClosed))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse