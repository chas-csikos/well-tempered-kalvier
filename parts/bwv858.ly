\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude13.ily"
\include "fugues/fugue13.ily"


\book {
  \bookOutputName "bwv858"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 13"
      titleRunner = "Prelude 13"
      key         = "Fs Major"
      opus        = "BWV 858"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeThirteen
  }
  \bookpart {
    \header{
      title       = "FUGA 13 â 3"
      titleRunner = "Fugue 13"
      key         = "Fs Major"
      opus        = "BWV 858"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueThirteen
  }
}