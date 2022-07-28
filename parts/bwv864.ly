\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"
% \include "../include/editions/us-arch-a.ily"

\include "preludes/prelude19.ily"
\include "fugues/fugue19.ily"


\book {
  \bookOutputName "bwv864"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 19"
      titleRunner = "Prelude 19"
      key         = "A Major"
      opus        = "BWV 864"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeNineteen
  }
  \bookpart {
    \header{
      title       = "FUGA 19 â 3"
      titleRunner = "Fugue 19"
      key         = "A Major"
      opus        = "BWV 864"
    }
    \paper {
      page-count       = #4
      % systems-per-page = #6
      page-breaking   = #ly:page-turn-breaking
    }
    \fugueNineteen
  }

}
