\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"
% \include "../include/editions/us-arch-a.ily"

\include "preludes/prelude14.ily"
\include "fugues/fugue14.ily"


\book {
  \bookOutputName "bwv859"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 14"
      titleRunner = "Prelude 14"
      key         = "Fs Minor"
      opus        = "BWV 859"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \preludeFourteen
  }
  \bookpart {
    \header{
      title       = "FUGA 14 â 4"
      titleRunner = "Fugue 14"
      key         = "Fs Minor"
      opus        = "BWV 859"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
      system-system-spacing = #'(
          (basic-distance   . 8)
          (minimum-distance . 4)
          (padding          . 1)
          (stretchability   . 12)
        )
    }
    \fugueFourteen
  }
}