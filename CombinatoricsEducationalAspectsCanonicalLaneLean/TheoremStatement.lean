import HautevilleHouse.CombinatoricsEducationalAspectsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure CombinatoricsEducationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CombinatoricsEducationalAdmittedObject where
  space : CombinatoricsEducationalSpace
  combinatorialStructure : Prop
  educationalFramework : Prop
  witnessModel : Type
  witnessTopology : TopologicalSpace witnessModel
  structureClosed : Prop
  conclusion : structureClosed

def CombinatoricsEducationalWitnessClosed (O : CombinatoricsEducationalAdmittedObject) : Prop :=
  O.structureClosed

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse