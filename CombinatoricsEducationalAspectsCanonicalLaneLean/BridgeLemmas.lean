import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatoricsEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CombinatoricsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse