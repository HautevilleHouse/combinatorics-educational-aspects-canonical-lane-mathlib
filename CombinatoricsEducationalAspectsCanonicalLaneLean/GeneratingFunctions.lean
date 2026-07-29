import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure GeneratingFunctionsPackage where
  ordinaryGeneratingFunction : Prop
  exponentialGeneratingFunction : Prop
  recurrenceSolution : Prop
  productRule : Prop
  compositionRule : Prop

structure GeneratingFunctionsEvidence (G : GeneratingFunctionsPackage) where
  ordinaryGeneratingFunctionClosed : G.ordinaryGeneratingFunction
  exponentialGeneratingFunctionClosed : G.exponentialGeneratingFunction
  recurrenceSolutionClosed : G.recurrenceSolution
  productRuleClosed : G.productRule
  compositionRuleClosed : G.compositionRule

def GeneratingFunctionsClosed (G : GeneratingFunctionsPackage) : Prop :=
  G.ordinaryGeneratingFunction ∧ G.exponentialGeneratingFunction ∧ G.recurrenceSolution ∧ G.productRule ∧ G.compositionRule

theorem generating_functions_closed_from_evidence
    (G : GeneratingFunctionsPackage) (E : GeneratingFunctionsEvidence G) :
    GeneratingFunctionsClosed G := by
  exact And.intro E.ordinaryGeneratingFunctionClosed
    (And.intro E.exponentialGeneratingFunctionClosed
      (And.intro E.recurrenceSolutionClosed
        (And.intro E.productRuleClosed E.compositionRuleClosed)))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse