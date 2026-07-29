import canonicalLaneMathlib.CombStructure

/-!
# Pigeonhole Principle Package
-/

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure PigeonholePackage {C : CombStructurePackage} where
  domainSize : Nat
  codomainSize : Nat
  function : C.finiteSet → C.finiteSet
  injectionCondition : Prop
  conclusion : Prop

structure PigeonholeEvidence {C : CombStructurePackage}
    (P : PigeonholePackage C) where
  injectionConditionClosed : P.injectionCondition
  conclusionClosed : P.conclusion

def PigeonholeClosed {C : CombStructurePackage}
    (P : PigeonholePackage C) : Prop :=
  P.injectionCondition ∧ P.conclusion

theorem pigeonhole_closed_from_evidence
    {C : CombStructurePackage} (P : PigeonholePackage C)
    (E : PigeonholeEvidence P) : PigeonholeClosed P := by
  exact And.intro E.injectionConditionClosed E.conclusionClosed

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse