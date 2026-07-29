import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure GraphTheoryFundamentalsPackage where
  vertexDegrees : Prop
  handshakingLemma : Prop
  connectivity : Prop
  adjacencyMatrix : Prop
  bipartiteCharacterization : Prop

structure GraphTheoryFundamentalsEvidence (G : GraphTheoryFundamentalsPackage) where
  vertexDegreesClosed : G.vertexDegrees
  handshakingLemmaClosed : G.handshakingLemma
  connectivityClosed : G.connectivity
  adjacencyMatrixClosed : G.adjacencyMatrix
  bipartiteCharacterizationClosed : G.bipartiteCharacterization

def GraphTheoryFundamentalsClosed (G : GraphTheoryFundamentalsPackage) : Prop :=
  G.vertexDegrees ∧ G.handshakingLemma ∧ G.connectivity ∧ G.adjacencyMatrix ∧ G.bipartiteCharacterization

theorem graph_theory_fundamentals_closed_from_evidence
    (G : GraphTheoryFundamentalsPackage) (E : GraphTheoryFundamentalsEvidence G) :
    GraphTheoryFundamentalsClosed G := by
  exact And.intro E.vertexDegreesClosed
    (And.intro E.handshakingLemmaClosed
      (And.intro E.connectivityClosed
        (And.intro E.adjacencyMatrixClosed E.bipartiteCharacterizationClosed)))

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse