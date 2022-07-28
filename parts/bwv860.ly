\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude15.ily"
\include "fugues/fugue15.ily"


\book {
  \bookOutputName "bwv860"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 15"
      titleRunner = "Prelude 15"
      key         = "G Major"
      opus        = "BWV 860"
    }
    \paper {
      page-count           = #2
      max-systems-per-page = #6
      ragged-last-bottom   = ##t
    }
    \preludeFifteen
  }
  \bookpart {
    \header{
      title       = "FUGA 15 â 3"
      titleRunner = "Fugue 15"
      key         = "G Major"
      opus        = "BWV 860"
    }
    \paper {
      page-count       = #4
      max-systems-per-page = #6
      page-breaking = #ly:page-turn-breaking
    }
    \fugueFifteen
  }
}
