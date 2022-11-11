\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude04.ily"
\include "fugues/fugue04.ily"

\book {
  \bookOutputName "bwv849"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 4"
      titleRunner = "Prelude 4"
      key         = "Cs Minor"
      opus        = "BWV 849"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeFour
  }
  \bookpart {
   \header{
      title       = "FUGA 4 â 5"
      titleRunner = "Fugue 4"
      key         = "Cs Minor"
      opus        = "BWV 849"
    }
    \paper {
%       page-breaking = #ly:page-turn-breaking
%       max-systems-per-page = #7
%       min-systems-per-page = #5
      page-count    = #4
      systems-per-page = #6

    }
    \fugueFour
  }
}