\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"
% \include "../include/editions/us-arch-a.ily"

\include "preludes/prelude17.ily"
\include "fugues/fugue17.ily"


\book {
  \bookOutputName "bwv862"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 17"
      titleRunner = "Prelude 17"
      key         = "Af Major"
      opus        = "BWV 862"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeSeventeen
  }
  \bookpart {
    \header{
      title       = "FUGA 17 â 4"
      titleRunner = "Fugue 17"
      key         = "Af Major"
      opus        = "BWV 862"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueSeventeen
  }
}
