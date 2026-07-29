import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoricsEducationalAspectsCanonicalLaneLean.LearningOutcomes

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure TeacherResourcesPackage {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} {A : AssessmentFrameworkPackage S P} {L : LearningOutcomesPackage S P A} where
  lessonPlans : List String
  activityGuides : List String
  differentiationStrategies : Prop
  professionalDevelopment : Prop

structure TeacherResourcesEvidence {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} {A : AssessmentFrameworkPackage S P} {L : LearningOutcomesPackage S P A} (T : TeacherResourcesPackage S P A L) where
  lessonPlansPresent : T.lessonPlans.length > 0
  activityGuidesPresent : T.activityGuides.length > 0
  differentiationStrategiesClosed : T.differentiationStrategies
  professionalDevelopmentClosed : T.professionalDevelopment

def TeacherResourcesClosed {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} {A : AssessmentFrameworkPackage S P} {L : LearningOutcomesPackage S P A} (T : TeacherResourcesPackage S P A L) : Prop :=
  (T.lessonPlans.length > 0) ∧ (T.activityGuides.length > 0) ∧ T.differentiationStrategies ∧ T.professionalDevelopment

theorem teacher_resources_closed_from_evidence
    {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} {A : AssessmentFrameworkPackage S P} {L : LearningOutcomesPackage S P A}
    (T : TeacherResourcesPackage S P A L) (E : TeacherResourcesEvidence T) :
    TeacherResourcesClosed T := by
  exact And.intro E.lessonPlansPresent (And.intro E.activityGuidesPresent (And.intro E.differentiationStrategiesClosed E.professionalDevelopmentClosed))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
