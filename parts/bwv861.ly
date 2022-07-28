\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude16.ily"
\include "fugues/fugue16.ily"


\book {
  \bookOutputName "bwv861"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 16"
      titleRunner = "Prelude 16"
      key         = "G Minor"
      opus        = "BWV 861"
    }
    \paper {
      page-count           = #2
      system-count = #10
      max-systems-per-page = #6
    }
    \preludeSixteen
  }
  \bookpart {
    \header{
      title       = "FUGA 16 â 4"
      titleRunner = "Fugue 16"
      key         = "G Minor"
      opus        = "BWV 861"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueSixteen
  }
}
