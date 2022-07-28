\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude08.ily"
\include "fugues/fugue08.ily"

\book {
  \bookOutputName "bwv853"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 8"
      titleRunner = "Prelude 8"
      key         = "E♭ Minor"
      opus        = "BWV 853"
    }
    \paper {
      page-count       = #2
      % systems-per-page = #7
      min-systems-per-page = #6
      max-systems-per-page = #7
    }
    \preludeEight
  }
  \bookpart {
    \header{
      title       = "FUGA 8 â 3"
      titleRunner = "Fugue 8"
      key         = "Ds Minor"
      opus        = "BWV 853"
    }
    \paper {
      page-breaking    = #ly:page-turn-breaking
      page-count       = #4
      systems-per-page = #6
    }
    \fugueEight
  }
}