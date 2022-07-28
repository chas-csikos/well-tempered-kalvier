\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude07.ily"
\include "fugues/fugue07.ily"

\book {
  \bookOutputName "bwv852"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 7"
      titleRunner = "Prelude 7"
      key         = "Ef Major"
      opus        = "BWV 852"
    }
    \paper {
      page-breaking = #ly:page-turn-breaking
      page-count       = #4
      min-systems-per-page = #6
      max-systems-per-page = #7      
    }
    \preludeSeven
  }
  \bookpart {
    \header{
      title       = "FUGA 7 â 3"
      titleRunner = "Fugue 7"
      key         = "Ef Major"
      opus        = "BWV 852"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueSeven
  }
}