\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude18.ily"
\include "fugues/fugue18.ily"


\book {
  \bookOutputName "bwv863"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 18"
      titleRunner = "Prelude 18"
      key         = "Gs Minor"
      opus        = "BWV 863"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeEighteen
  }
  \bookpart {
    \header{
      title       = "FUGA 18 â 4"
      titleRunner = "Fugue 18"
      key         = "Gs Minor"
      opus        = "BWV 863"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueEighteen
  }
}
