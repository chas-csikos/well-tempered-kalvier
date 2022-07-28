\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude09.ily"
\include "fugues/fugue09.ily"

\book {
  \bookOutputName "bwv854"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 9"
      titleRunner = "Prelude 9"
      key         = "E Major"
      opus        = "BWV 854"
    }
    \paper {
      page-count   = #2
      system-count = #11
      % min-systems-per-page = #6
      % max-systems-per-page = #7
    }
    \preludeNine
  }
  \bookpart {
    \header{
      title       = "FUGA 9 â 3"
      titleRunner = "Fugue 9"
      key         = "E Major"
      opus        = "BWV 854"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
      % min-systems-per-page = #6
      % max-systems-per-page = #7
    }
    \fugueNine
  }
}