import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure ProblemSolvingStrategiesPackage where
  strategyType : Type u
  strategyDescription : String
  isConstructive : Prop
  isDoubleCounting : Prop
  isInvariant : Prop
  isExtremal : Prop
  strategyApplied : Prop
  constructiveClosed : isConstructive
  doubleCountingClosed : isDoubleCounting
  invariantClosed : isInvariant
  extremalClosed : isExtremal
  strategyUsedClosed : strategyApplied

structure ProblemSolvingStrategiesEvidence (P : ProblemSolvingStrategiesPackage) where
  constructiveClosed : P.isConstructive
  doubleCountingClosed : P.isDoubleCounting
  invariantClosed : P.isInvariant
  extremalClosed : P.isExtremal
  strategyUsedClosed : P.strategyApplied

def ProblemSolvingStrategiesClosed (P : ProblemSolvingStrategiesPackage) : Prop :=
  P.isConstructive ∧ P.isDoubleCounting ∧ P.isInvariant ∧ P.isExtremal ∧ P.strategyApplied

theorem problem_solving_strategies_closed_from_evidence (P : ProblemSolvingStrategiesPackage) (E : ProblemSolvingStrategiesEvidence P) : ProblemSolvingStrategiesClosed P := by
  exact And.intro E.constructiveClosed (And.intro E.doubleCountingClosed (And.intro E.invariantClosed (And.intro E.extremalClosed E.strategyUsedClosed)))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse