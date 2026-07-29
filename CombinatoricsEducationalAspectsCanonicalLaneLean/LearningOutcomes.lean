import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoricsEducationalAspectsCanonicalLaneLean.AssessmentFramework

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure LearningOutcomesPackage {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} {A : AssessmentFrameworkPackage S P} where
  cognitiveLevels : List String
  skillsAddressed : List String
  outcomesMeasurable : Prop
  alignmentFramework : Prop

structure LearningOutcomesEvidence {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} {A : AssessmentFrameworkPackage S P} (L : LearningOutcomesPackage S P A) where
  cognitiveLevelsCovered : L.cognitiveLevels.length > 0
  skillsAddressedCovered : L.skillsAddressed.length > 0
  outcomesMeasurableClosed : L.outcomesMeasurable
  alignmentFrameworkClosed : L.alignmentFramework

def LearningOutcomesClosed {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} {A : AssessmentFrameworkPackage S P} (L : LearningOutcomesPackage S P A) : Prop :=
  (L.cognitiveLevels.length > 0) ∧ (L.skillsAddressed.length > 0) ∧ L.outcomesMeasurable ∧ L.alignmentFramework

theorem learning_outcomes_closed_from_evidence
    {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} {A : AssessmentFrameworkPackage S P}
    (L : LearningOutcomesPackage S P A) (E : LearningOutcomesEvidence L) :
    LearningOutcomesClosed L := by
  exact And.intro E.cognitiveLevelsCovered (And.intro E.skillsAddressedCovered (And.intro E.outcomesMeasurableClosed E.alignmentFrameworkClosed))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
