import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure CountingPrinciplesPackage where
  sumRule : Prop
  productRule : Prop
  inclusionExclusion : Prop
  pigeonholePrinciple : Prop
  doubleCounting : Prop

structure CountingPrinciplesEvidence (C : CountingPrinciplesPackage) where
  sumRuleClosed : C.sumRule
  productRuleClosed : C.productRule
  inclusionExclusionClosed : C.inclusionExclusion
  pigeonholePrincipleClosed : C.pigeonholePrinciple
  doubleCountingClosed : C.doubleCounting

def CountingPrinciplesClosed (C : CountingPrinciplesPackage) : Prop :=
  C.sumRule ∧ C.productRule ∧ C.inclusionExclusion ∧ C.pigeonholePrinciple ∧ C.doubleCounting

theorem counting_principles_closed_from_evidence (C : CountingPrinciplesPackage) (E : CountingPrinciplesEvidence C) :
    CountingPrinciplesClosed C := by
  exact And.intro E.sumRuleClosed
    (And.intro E.productRuleClosed
      (And.intro E.inclusionExclusionClosed
        (And.intro E.pigeonholePrincipleClosed E.doubleCountingClosed)))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse