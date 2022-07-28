\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude03.ily"
\include "fugues/fugue03.ily"

\book {
  \bookOutputName "bwv848"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 3"
      titleRunner = "Prelude 3"
      key         = "CS Major"
      opus        = "BWV 848"
    }
    \paper {
      page-count       = #2
      systems-per-page = #7
    }
    \preludeThree
  }
  \bookpart {
    \header{
      title       = "FUGA 3 â 3"
      titleRunner = "Fugue 3"
      key         = "CS Major"
      opus        = "BWV 848"
    }
    \paper {
      min-systems-per-page = #5
      max-systems-per-page = #6
      page-count = #4
      page-breaking        = #ly:page-turn-breaking
    }
    \fugueThree
  }
}