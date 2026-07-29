import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure EnumerationPackage where
  objectsType : Type u
  count : Nat → Nat
  generatingFunction : String
  recurrenceRelation : Prop
  closedForm : Prop
  recurrenceRelationTerm : recurrenceRelation
  closedFormTerm : closedForm

structure EnumerationEvidence (E : EnumerationPackage) where
  recurrenceRelationClosed : E.recurrenceRelation
  closedFormClosed : E.closedForm

def EnumerationClosed (E : EnumerationPackage) : Prop :=
  E.recurrenceRelation ∧ E.closedForm

theorem enumeration_closed_from_evidence (E : EnumerationPackage) (Ev : EnumerationEvidence E) : EnumerationClosed E :=
  And.intro Ev.recurrenceRelationClosed Ev.closedFormClosed

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse