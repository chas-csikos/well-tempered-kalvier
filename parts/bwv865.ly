\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"
% \include "../include/editions/us-arch-a.ily"

\include "preludes/prelude20.ily"
\include "fugues/fugue20.ily"


\book {
  \bookOutputName "bwv865"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 20"
      titleRunner = "Prelude 20"
      key         = "A minor"
      opus        = "BWV 865"
    }
    \paper {
      page-count       = #2
      max-systems-per-page = #6
      % system-count     = #12
      % ragged-last-bottom = ##t
      % ragged-last = ##t
    }
    \preludeTwenty
  }
  \bookpart {
    \header{
      title       = "FUGA 20 â 4"
      titleRunner = "Fugue 20"
      key         = "A Minor"
      opus        = "BWV 865"
    }
    \paper {
      page-count       = #6
      systems-per-page = #6
      page-breaking = #ly:page-turn-breaking
    }
    \fugueTwenty
  }
}
