import canonicalLaneMathlib.CombStructure

/-!
# Induction Principle Package
-/

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure InductionPackage {C : CombStructurePackage} where
  baseCase : Prop
  stepCase : (n : Nat) → Prop → Prop
  hypothesis : (n : Nat) → (h : stepCase n (∀ m : Nat, m < n → stepCase m True)) → stepCase n True
  conclusion : ∀ n : Nat, stepCase n True

structure InductionEvidence {C : CombStructurePackage}
    (I : InductionPackage C) where
  baseCaseClosed : I.baseCase
  stepCaseClosed : ∀ n : Nat, I.stepCase n I.baseCase → I.stepCase n True

def InductionClosed {C : CombStructurePackage}
    (I : InductionPackage C) : Prop :=
  I.baseCase ∧ (∀ n : Nat, I.stepCase n I.baseCase → I.stepCase n True)

theorem induction_closed_from_evidence
    {C : CombStructurePackage} (I : InductionPackage C)
    (E : InductionEvidence I) : InductionClosed I := by
  exact And.intro E.baseCaseClosed E.stepCaseClosed

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse