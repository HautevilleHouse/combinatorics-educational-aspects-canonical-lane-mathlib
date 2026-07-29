import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CombinatoricsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CombinatoricsAdmittedObject where
  space : CombinatoricsSpace
  finiteGraph : Prop
  connected : Prop
  targetStructure : Type
  targetTopology : TopologicalSpace targetStructure
  isomorphicToTarget : Prop
  conclusion : isomorphicToTarget

structure CombinatoricsEndgameState where
  object : CombinatoricsAdmittedObject

def CombinatoricsWitnessClosed (O : CombinatoricsAdmittedObject) : Prop :=
  O.isomorphicToTarget

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse