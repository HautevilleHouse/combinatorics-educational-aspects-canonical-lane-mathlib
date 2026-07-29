import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure PermutationsAndCombinationsPackage where
  factorialDefinition : Prop
  permutationFormula : Prop
  combinationFormula : Prop
  starsAndBars : Prop
  binomialCoefficientProperties : Prop

structure PermutationsAndCombinationsEvidence (P : PermutationsAndCombinationsPackage) where
  factorialDefinitionClosed : P.factorialDefinition
  permutationFormulaClosed : P.permutationFormula
  combinationFormulaClosed : P.combinationFormula
  starsAndBarsClosed : P.starsAndBars
  binomialCoefficientPropertiesClosed : P.binomialCoefficientProperties

def PermutationsAndCombinationsClosed (P : PermutationsAndCombinationsPackage) : Prop :=
  P.factorialDefinition ∧ P.permutationFormula ∧ P.combinationFormula ∧ P.starsAndBars ∧ P.binomialCoefficientProperties

theorem permutations_and_combinations_closed_from_evidence
    (P : PermutationsAndCombinationsPackage) (E : PermutationsAndCombinationsEvidence P) :
    PermutationsAndCombinationsClosed P := by
  exact And.intro E.factorialDefinitionClosed
    (And.intro E.permutationFormulaClosed
      (And.intro E.combinationFormulaClosed
        (And.intro E.starsAndBarsClosed E.binomialCoefficientPropertiesClosed)))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse