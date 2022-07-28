\version "2.22.2"

\include "../include/common.ily"
\include "../include/editions/us-arch-a.ily"
% \include "../include/editions/us-arch-a.ily"

\include "preludes/prelude12.ily"
\include "fugues/fugue12.ily"


\book {
  \bookOutputName "bwv857"
  \paper { first-page-number = #2 }
   \bookpart {
      \header{
        title       = "PRÆLUDIUM 12"
        titleRunner = "Prelude 12"
        key         = "F Minor"
        opus        = "BWV 857"
      }
      \paper {
        page-count         = #2
        %  systems-per-page   = #6
        %  ragged-last-bottom = ##t
     }
     \preludeTwelve
   }
   \bookpart {
      \header{
        title       = "FUGA 12 â 4"
        titleRunner = "Fugue 12"
        key         = "F Minor"
        opus        = "BWV 857"
      }
      \paper {
        page-count       = #4
        page-breaking = #ly:page-turn-breaking
      }
     \fugueTwelve
   }
}