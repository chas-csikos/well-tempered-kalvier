\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude06.ily"
\include "fugues/fugue06.ily"

\book {
  \bookOutputName "bwv851"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 6"
      titleRunner = "Prelude 6"
      key         = "D Minor"
      opus        = "BWV 851"
    }
    \paper {
      page-count = #2
      system-count = #13
    }
    \preludeSix
  }
  \bookpart {
    \header{
      title       = "FUGA 6 â 3"
      titleRunner = "Fugue 6"
      key         = "D Minor"
      opus        = "BWV 851"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueSix
  }
}