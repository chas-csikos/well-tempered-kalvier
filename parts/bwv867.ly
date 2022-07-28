\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"
\include "preludes/prelude22.ily"
\include "fugues/fugue22.ily"


\book {
  \bookOutputName "bwv867"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 22"
      titleRunner = "Prelude 22"
      key         = "Bf Minor"
      opus        = "BWV 867"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeTwentytwo
  }
  \bookpart {
    \header{
      title       = "FUGA 22 â 5"
      titleRunner = "Fugue 22"
      key         = "Bf Minor"
      opus        = "BWV 867"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueTwentytwo
  }
}
