import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

def CombinatoricsEducationalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem combinatorics_educational_endgame (A : AdmissibleClass) :
    CombinatoricsEducationalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse