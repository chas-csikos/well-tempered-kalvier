\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"

\include "preludes/prelude10.ily"
\include "fugues/fugue10.ily"

\book {
  \bookOutputName "bwv855"
  \paper { first-page-number = #2 }
  \bookpart {
    \header{
      title       = "PRÆLUDIUM 10"
      titleRunner = "Prelude 10"
      key         = "E Minor"
      opus        = "BWV 855"
    }
    \paper {
      page-count       = #2
      systems-per-page = #7
      % markup-system-spacing.basic-distance  = #(+ (/ (- top-staff-margin top-margin) staff-space) 4)
      system-system-spacing = #'(
          (basic-distance   . 8)
          (minimum-distance . 4)
          (padding          . 1)
          (stretchability   . 12)
        )
    }
    \preludeTen
  }
  \bookpart {
    \header{
      title       = "FUGA 10 â 2"
      titleRunner = "Fugue 10"
      key         = "E Minor"
      opus        = "BWV 855"
    }
    \paper {
      page-count       = #2
      systems-per-page = #7
    }
    \fugueTen
  }
}