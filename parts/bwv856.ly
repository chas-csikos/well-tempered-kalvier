\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude11.ily"
\include "fugues/fugue11.ily"


\book {
  \bookOutputName "bwv856"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 11"
      titleRunner = "Prelude 11"
      key         = "F Major"
      opus        = "BWV 856"
    }
    \paper {
      page-count           = #2
      min-systems-per-page = #4
    }
    \preludeEleven
  }
  % \bookpart { \paper{ print-page-number = ##f } \markup { %{ \fill-line { { \bold "Intentionally left blank" } } %} } }
  \bookpart {
    \header{
      title       = "FUGA 11 â 3"
      titleRunner = "Fugue 11"
      key         = "F Major"
      opus        = "BWV 856"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \fugueEleven
  }
}