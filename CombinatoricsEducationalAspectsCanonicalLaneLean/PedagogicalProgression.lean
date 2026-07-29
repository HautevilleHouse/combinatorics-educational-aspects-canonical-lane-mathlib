import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoricsEducationalAspectsCanonicalLaneLean.CurriculumScope

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure PedagogicalProgressionPackage {S : CurriculumScopePackage} where
  prerequisiteChains : List String
  conceptWeaving : Prop
  spiralApproach : Prop
  tieredExercises : List String

structure PedagogicalProgressionEvidence {S : CurriculumScopePackage} (P : PedagogicalProgressionPackage S) where
  prerequisiteChainsDefined : P.prerequisiteChains.length > 0
  conceptWeavingClosed : P.conceptWeaving
  spiralApproachClosed : P.spiralApproach
  tieredExercisesPresent : P.tieredExercises.length > 0

def PedagogicalProgressionClosed {S : CurriculumScopePackage} (P : PedagogicalProgressionPackage S) : Prop :=
  (P.prerequisiteChains.length > 0) ∧ P.conceptWeaving ∧ P.spiralApproach ∧ (P.tieredExercises.length > 0)

theorem pedagogical_progression_closed_from_evidence
    {S : CurriculumScopePackage} (P : PedagogicalProgressionPackage S) (E : PedagogicalProgressionEvidence P) :
    PedagogicalProgressionClosed P := by
  exact And.intro E.prerequisiteChainsDefined (And.intro E.conceptWeavingClosed (And.intro E.spiralApproachClosed E.tieredExercisesPresent))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
