import EarthScienceIsotopeGeochemistryCanonicalLaneLean.IsotopeSystem

namespace HautevilleHouse
namespace EarthScienceIsotopeGeochemistryCanonicalLaneLean

structure MantleReservoirEvolutionPackage where
  mantleConvectionModel : Type u
  isotopicEvolution : Type v
  depletedMantle : Prop
  enrichedMantle : Prop
  primitiveMantle : Prop
  recyclingFlux : Prop
  crustalContamination : Prop

structure MantleReservoirEvolutionEvidence (M : MantleReservoirEvolutionPackage) where
  mantleConvectionModelClosed : M.mantleConvectionModel
  isotopicEvolutionClosed : M.isotopicEvolution
  depletedMantleClosed : M.depletedMantle
  enrichedMantleClosed : M.enrichedMantle
  primitiveMantleClosed : M.primitiveMantle
  recyclingFluxClosed : M.recyclingFlux
  crustalContaminationClosed : M.crustalContamination

def MantleReservoirEvolutionClosed (M : MantleReservoirEvolutionPackage) : Prop :=
  M.mantleConvectionModel ∧ M.isotopicEvolution ∧ M.depletedMantle ∧
  M.enrichedMantle ∧ M.primitiveMantle ∧ M.recyclingFlux ∧ M.crustalContamination

theorem mantle_reservoir_evolution_closed_from_evidence
    (M : MantleReservoirEvolutionPackage) (E : MantleReservoirEvolutionEvidence M) :
    MantleReservoirEvolutionClosed M := by
  exact And.intro E.mantleConvectionModelClosed
    (And.intro E.isotopicEvolutionClosed
      (And.intro E.depletedMantleClosed
        (And.intro E.enrichedMantleClosed
          (And.intro E.primitiveMantleClosed
            (And.intro E.recyclingFluxClosed E.crustalContaminationClosed)))))

end EarthScienceIsotopeGeochemistryCanonicalLaneLean
end HautevilleHouse