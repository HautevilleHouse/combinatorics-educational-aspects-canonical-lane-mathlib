import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure CombinatorialDesignPackage where
  designType : Type u
  blockSize : Nat
  pointSetSize : Nat
  blockCollection : List (List (Fin pointSetSize))
  isBalanced : Prop
  isPairwiseBalanced : Prop
  replicationNumber : Prop
  balancedConditionClosed : isBalanced
  pairwiseBalancedClosed : isPairwiseBalanced
  replicationNumberClosed : replicationNumber

structure CombinatorialDesignEvidence (D : CombinatorialDesignPackage) where
  balancedConditionClosed : D.isBalanced
  pairwiseBalancedClosed : D.isPairwiseBalanced
  replicationNumberClosed : D.replicationNumber

def CombinatorialDesignClosed (D : CombinatorialDesignPackage) : Prop :=
  D.isBalanced ∧ D.isPairwiseBalanced ∧ D.replicationNumber

theorem combinatorial_design_closed_from_evidence (D : CombinatorialDesignPackage) (E : CombinatorialDesignEvidence D) : CombinatorialDesignClosed D := by
  exact And.intro E.balancedConditionClosed (And.intro E.pairwiseBalancedClosed E.replicationNumberClosed)

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse