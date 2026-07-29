import canonicalLaneMathlib.AdmissibleClass

/-!
# Combinatorial Structure Package
-/

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure CombStructurePackage where
  finiteSet : Type u
  subsets : List (finiteSet → Prop)
  enumerationLaw : Prop
  countingLaw : Prop
  inclusionExclusion : Prop

structure CombStructureEvidence (C : CombStructurePackage) where
  enumerationLawClosed : C.enumerationLaw
  countingLawClosed : C.countingLaw
  inclusionExclusionClosed : C.inclusionExclusion

def CombStructureClosed (C : CombStructurePackage) : Prop :=
  C.enumerationLaw ∧ C.countingLaw ∧ C.inclusionExclusion

theorem comb_structure_closed_from_evidence
    (C : CombStructurePackage) (E : CombStructureEvidence C) :
    CombStructureClosed C := by
  exact And.intro E.enumerationLawClosed
    (And.intro E.countingLawClosed E.inclusionExclusionClosed)

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse