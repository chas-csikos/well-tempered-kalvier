\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"


\include "preludes/prelude05.ily"
\include "fugues/fugue05.ily"

\book {
  \bookOutputName "bwv850"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 5"
      titleRunner = "Prelude 5"
      key         = "D Major"
      opus        = "BWV 850"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeFive
  }
  \bookpart {
   \header{
      title       = "FUGA 5 â 4"
      titleRunner = "Fugue 5"
      key         = "D Major"
      opus        = "BWV 850"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueFive
  }
}