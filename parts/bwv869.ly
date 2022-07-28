\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude24.ily"
\include "fugues/fugue24.ily"


\book {
  \bookOutputName "bwv869"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 24"
      titleRunner = "Prelude 24"
      key         = "B Minor"
      opus        = "BWV 869"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeTwentyfour
  }
  \bookpart {
    \header{
      title       = "FUGA 24 â 4"
      titleRunner = "Fugue 24"
      key         = "B Minor"
      opus        = "BWV 869"
    }
    \paper {
      page-count       = #6
      systems-per-page = #6
      page-breaking = #ly:page-turn-breaking
    }
    \fugueTwentyfour
  }
}
