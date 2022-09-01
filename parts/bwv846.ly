\version "2.22.2"

\include "../include/editions/us-letter.ily"
\include "../include/common.ily"

\include "preludes/prelude01.ily"
\include "fugues/fugue01.ily"

\book {
  \bookOutputName "bwv846"
  \paper { first-page-number = #1 }
  \bookpart {
    \header {
      title       = "PRÆLUDIUM 1"
      titleRunner = "Prelude 1"
      key         = "C Major"
      opus        = "BWV 846"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeOne
  }
  \bookpart {
    \header {
      title       = "FUGA 1 â 4"
      titleRunner = "Fugue 1"
      key         = "C Major"
      opus        = "BWV 846"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueOne
  }
}