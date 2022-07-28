\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude02.ily"
\include "fugues/fugue02.ily"

\book {
  \bookOutputName "bwv847"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 2"
      titleRunner = "Prelude 2"
      key         = "C Minor"
      opus        = "BWV 847"
    }
    \paper {
      page-count           = #2
      min-systems-per-page = #6
      max-systems-per-page = #7
    }
    \preludeTwo
  }
  \bookpart {
    \header{
      title       = "FUGA 2 â 3"
      titleRunner = "Fugue 2"
      key         = "C Minor"
      opus        = "BWV 847"
    }
    \paper {
      page-count       = #2
      min-systems-per-page = #6
    }
    \fugueTwo

  }
}