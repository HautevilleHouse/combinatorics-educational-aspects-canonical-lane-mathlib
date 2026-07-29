import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure CombinatorialStructure where
  groundSet : Type u
  subsets : List (Set (groundSet))
  cardinality : Nat
  axiomsSatisfied : Prop
  axiomsSatisfiedTerm : axiomsSatisfied

structure CombinatorialStructureEvidence (C : CombinatorialStructure) where
  axiomsSatisfiedClosed : C.axiomsSatisfied

def CombinatorialStructureClosed (C : CombinatorialStructure) : Prop :=
  C.axiomsSatisfied

theorem combinatorial_structure_closed_from_evidence (C : CombinatorialStructure) (E : CombinatorialStructureEvidence C) : CombinatorialStructureClosed C :=
  E.axiomsSatisfiedClosed

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse