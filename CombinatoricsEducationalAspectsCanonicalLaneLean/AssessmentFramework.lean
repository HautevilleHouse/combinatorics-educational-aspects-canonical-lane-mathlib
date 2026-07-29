import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoricsEducationalAspectsCanonicalLaneLean.PedagogicalProgression

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure AssessmentFrameworkPackage {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} where
  formativeAssessments : List String
  summativeAssessments : List String
  rubricsDefined : Prop
  feedbackMechanisms : List String

structure AssessmentFrameworkEvidence {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} (A : AssessmentFrameworkPackage S P) where
  formativeAssessmentsPresent : A.formativeAssessments.length > 0
  summativeAssessmentsPresent : A.summativeAssessments.length > 0
  rubricsDefinedClosed : A.rubricsDefined
  feedbackMechanismsPresent : A.feedbackMechanisms.length > 0

def AssessmentFrameworkClosed {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S} (A : AssessmentFrameworkPackage S P) : Prop :=
  (A.formativeAssessments.length > 0) ∧ (A.summativeAssessments.length > 0) ∧ A.rubricsDefined ∧ (A.feedbackMechanisms.length > 0)

theorem assessment_framework_closed_from_evidence
    {S : CurriculumScopePackage} {P : PedagogicalProgressionPackage S}
    (A : AssessmentFrameworkPackage S P) (E : AssessmentFrameworkEvidence A) :
    AssessmentFrameworkClosed A := by
  exact And.intro E.formativeAssessmentsPresent (And.intro E.summativeAssessmentsPresent (And.intro E.rubricsDefinedClosed E.feedbackMechanismsPresent))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
