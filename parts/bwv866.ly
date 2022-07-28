\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"
% \include "../include/editions/us-arch-a.ily"

\include "preludes/prelude21.ily"
\include "fugues/fugue21.ily"


\book {
  \bookOutputName "bwv866"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 21"
      titleRunner = "Prelude 21"
      key         = "Bf Major"
      opus        = "BWV 866"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeTwentyone
  }
  \bookpart {
    \header{
      title       = "FUGA 21 â 3"
      titleRunner = "Fugue 21"
      key         = "Bf Major"
      opus        = "BWV 866"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueTwentyone
  }
}
