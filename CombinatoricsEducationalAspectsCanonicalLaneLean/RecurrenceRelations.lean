import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure RecurrenceRelationsPackage where
  linearRecurrence : Prop
  characteristicPolynomial : Prop
  fibonacciRecurrence : Prop
  divideAndConquer : Prop
  masterTheorem : Prop

structure RecurrenceRelationsEvidence (R : RecurrenceRelationsPackage) where
  linearRecurrenceClosed : R.linearRecurrence
  characteristicPolynomialClosed : R.characteristicPolynomial
  fibonacciRecurrenceClosed : R.fibonacciRecurrence
  divideAndConquerClosed : R.divideAndConquer
  masterTheoremClosed : R.masterTheorem

def RecurrenceRelationsClosed (R : RecurrenceRelationsPackage) : Prop :=
  R.linearRecurrence ∧ R.characteristicPolynomial ∧ R.fibonacciRecurrence ∧ R.divideAndConquer ∧ R.masterTheorem

theorem recurrence_relations_closed_from_evidence
    (R : RecurrenceRelationsPackage) (E : RecurrenceRelationsEvidence R) :
    RecurrenceRelationsClosed R := by
  exact And.intro E.linearRecurrenceClosed
    (And.intro E.characteristicPolynomialClosed
      (And.intro E.fibonacciRecurrenceClosed
        (And.intro E.divideAndConquerClosed E.masterTheoremClosed)))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse