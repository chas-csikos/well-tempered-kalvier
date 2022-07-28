\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"
% \include "../include/editions/us-arch-a.ily"

\include "preludes/prelude23.ily"
\include "fugues/fugue23.ily"


\book {
  \bookOutputName "bwv868"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 23"
      titleRunner = "Prelude 23"
      key         = "B Major"
      opus        = "BWV 868"
    }
    \paper {
      page-count           = #2
      % system-count         = #9
      % max-systems-per-page = #6
      % ragged-last-bottom   = ##t
    }
    \preludeTwentythree
  }
  \bookpart {
    \header{
      title       = "FUGA 23 â 4"
      titleRunner = "Fugue 23"
      key         = "B Major"
      opus        = "BWV 868"
    }
    \paper {
      page-count       = #2
      systems-per-page = 6
    }
    \fugueTwentythree
  }
}
