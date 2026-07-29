import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatoricsEducationalAspectsCanonicalLaneLean

structure GraphColoringPackage where
  vertexSet : Type u
  edgeSet : Set (vertexSet × vertexSet)
  colorFunction : vertexSet → Nat
  properColoring : Prop
  chromaticNumber : Nat
  coloringConstructed : Prop
  coloringConstructedTerm : coloringConstructed

structure GraphColoringEvidence (G : GraphColoringPackage) where
  properColoringClosed : G.properColoring
  coloringConstructedClosed : G.coloringConstructed

def GraphColoringClosed (G : GraphColoringPackage) : Prop :=
  G.properColoring ∧ G.coloringConstructed

theorem graph_coloring_closed_from_evidence (G : GraphColoringPackage) (E : GraphColoringEvidence G) : GraphColoringClosed G :=
  And.intro E.properColoringClosed E.coloringConstructedClosed

end CombinatoricsEducationalAspectsCanonicalLaneLean
end HautevilleHouse