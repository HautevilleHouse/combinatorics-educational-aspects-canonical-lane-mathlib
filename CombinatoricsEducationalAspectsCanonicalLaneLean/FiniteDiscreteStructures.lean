import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure FiniteDiscreteStructuresPackage where
  structureType : Type u
  domainSize : Nat
  relationSet : List (List (List (Fin domainSize)))
  isPartialOrder : Prop
  isGraph : Prop
  isTree : Prop
  posetClosed : isPartialOrder
  graphClosed : isGraph
  treeClosed : isTree

structure FiniteDiscreteStructuresEvidence (S : FiniteDiscreteStructuresPackage) where
  posetClosed : S.isPartialOrder
  graphClosed : S.isGraph
  treeClosed : S.isTree

def FiniteDiscreteStructuresClosed (S : FiniteDiscreteStructuresPackage) : Prop :=
  S.isPartialOrder ∧ S.isGraph ∧ S.isTree

theorem finite_discrete_structures_closed_from_evidence (S : FiniteDiscreteStructuresPackage) (E : FiniteDiscreteStructuresEvidence S) : FiniteDiscreteStructuresClosed S := by
  exact And.intro E.posetClosed (And.intro E.graphClosed E.treeClosed)

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse