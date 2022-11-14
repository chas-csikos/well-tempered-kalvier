\version "2.22.2"
\language "english"

\include "include/editions/us-arch-a.ily"
\include "include/common.ily"

\include "parts/fugues/fugues.ily"
\include "parts/preludes/preludes.ily"

tocAct = #(define-music-function (text) (markup?) (add-toc-item! 'tocActMarkup text))

\paper { first-page-number = #0 }
%\pointAndClickOff

\book {
  \bookpart {
    \paper{
      line-width    = 5\in
      left-margin   = 2\in
      right-margin  = 2\in
      top-margin    = 1\in
      bottom-margin = 1\in

      page-breaking = #ly:optimal-breaking

      oddHeaderMarkup = \markup \null
      evenHeaderMarkup = \markup \null

      tocActMarkup = \markup \large \column {
        \vspace #1
        \fill-line {\null \fromproperty #'toc:text \null}
      }

      tocItemMarkup = \markup {
        \fill-line {
          \fill-with-pattern #1.5 #CENTER . \fromproperty #'toc:text \fromproperty #'toc:page
        }
      }
      tocTitleMarkup = \markup \null
      page-count = #2
    }
    \header {
       tagline = ##f
       copyright = \markup \null
    }
   \markuplist \table-of-contents
   \pageTurn
  }
  
  % % For printing
  % \bookpart {
  %   \markup {""}
  %   \paper {
  %     oddHeaderMarkup  = ""
  %     evenHeaderMarkup = ""
  %     oddFooterMarkup  = ""
  %     evenFooterMarkup = ""
  %   }
  % }

  \bookpart {
    \header {
      title       = "PRÆLUDIUM 1"
      titleRunner = "Prelude 1"
      key         = "C Major"
      opus        = "BWV 846"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocAct \markup {
      \abs-fontsize #9.5 "C Major ✻"
      \bold\italic "Præludium und Fuga 1"
      \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 846"
    }
    \tocItem \markup { "Prelude 1" }
    \preludeOne
  }
   \bookpart {
    \header {
      title       = "FUGA 1 â 4"
      titleRunner = "Fugue 1"
      key         = "C Major"
      opus        = "BWV 846"
    }
    \paper {
      page-count       = #2
      systems-per-page = #5
    }
    \tocItem \markup { "Fugue 1 â 4" }
    \fugueOne
  }

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
    \tocAct \markup { \abs-fontsize #9.5 "C Minor ✻"  \bold\italic "Præludium und Fuga 2" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 847" }
    \tocItem \markup { "Prelude 2" }
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
    \tocItem \markup { "Fugue 2 â 3" }
    \fugueTwo
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 3"
      titleRunner = "Prelude 3"
      key         = "C♯ Major"
      opus        = "BWV 848"
    }
    \paper {
      page-count       = #2
      systems-per-page = #7
    }
    \tocAct \markup { \abs-fontsize #9.5 { "C♯ Major ✻" } \bold\italic "Præludium und Fuga 3" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 848" }
    \tocItem \markup { "Prelude 3" }
    \preludeThree
  }
  \bookpart {
    \header{
      title       = "FUGA 3 â 3"
      titleRunner = "Fugue 3"
      key         = "C♯ Major"
      opus        = "BWV 848"
    }
    \paper {
      page-breaking        = #ly:page-turn-breaking
      page-count           = #4
      max-systems-per-page = #6
    }
    \tocItem \markup { "Fugue 3 â 3" }
    \fugueThree
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 4"
      titleRunner = "Prelude 4"
      key         = "C♯ Minor"
      opus        = "BWV 849"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocAct \markup { \abs-fontsize #9.5 { "C♯ Minor ✻" } \bold\italic "Præludium und Fuga 4"  \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 849" }
    \tocItem \markup { "Prelude 4"  }
    \preludeFour
  }
  \bookpart {
    \header{
      title       = "FUGA 4 â 5"
      titleRunner = "Fugue 4"
      key         = "C♯ Minor"
      opus        = "BWV 849"
    }
    \paper {
%       page-breaking = #ly:page-turn-breaking
%       max-systems-per-page = #7
%       min-systems-per-page = #5
      page-count    = #4
      systems-per-page = #6

    }
    \tocItem \markup { "Fugue 4 â 5" }
    \fugueFour
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 5"
      titleRunner = "Prelude 5"
      key         = "D Major"
      opus        = "BWV 850"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocAct \markup { \abs-fontsize #9.5 {"D Major ✻"} \bold\italic "Præludium und Fuga 5" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 850" }
    \tocItem \markup { "Prelude 5" }
    \preludeFive
  }
  \bookpart {
    \header{
      title       = "FUGA 5 â 4"
      titleRunner = "Fugue 5"
      key         = "D Major"
      opus        = "BWV 850"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocItem \markup { "Fugue 5 â 4" }
    \fugueFive
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 6"
      titleRunner = "Prelude 6"
      key         = "D Minor"
      opus        = "BWV 851"
    }
    \paper {
      page-count = #2
      system-count = #13
    }
    \tocAct \markup { \abs-fontsize #9.5 {"D Minor ✻"} \bold\italic "Præludium und Fuga 6"   \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 851" }
    \tocItem \markup { "Prelude 6" }
    \preludeSix
  }
  \bookpart {
    \header{
      title       = "FUGA 6 â 3"
      titleRunner = "Fugue 6"
      key         = "D Minor"
      opus        = "BWV 851"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocItem \markup { "Fugue 6 â 3" }
    \fugueSix
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 7"
      titleRunner = "Prelude 7"
      key         = "E♭ Major"
      opus        = "BWV 852"
    }
    \paper {
      page-count       = #4
      systems-per-page = #6
      page-breaking = #ly:page-turn-breaking
    }
    \tocAct \markup { \abs-fontsize #9.5 { "E♭ Major ✻" } \bold\italic "Præludium und Fuga 7" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 852" }
    \tocItem \markup { "Prelude 7" }
    \preludeSeven
  }
  \bookpart {
    \header{
      title       = "FUGA 7 â 3"
      titleRunner = "Fugue 7"
      key         = "E♭ Major"
      opus        = "BWV 852"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocItem \markup { "Fugue 7 â 3" }
    \fugueSeven
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 8"
      titleRunner = "Prelude 8"
      key         = "E♭ Minor"
      opus        = "BWV 853"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
      markup-system-spacing.basic-distance   = #(+ (/ (- top-staff-margin top-margin) staff-space) 4)
    }
    \tocAct \markup { \abs-fontsize #9.5 {"E♭/D♯ Minor ✻"} \bold\italic "Præludium und Fuga 8" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 853" }
    \tocItem \markup { "Prelude 8" }
    \preludeEight
  }
  \bookpart {
    \header{
      title       = "FUGA 8 â 3"
      titleRunner = "Fugue 8"
      key         = "D♯ Minor"
      opus        = "BWV 853"
    }
    \paper {
      systems-per-page = #6
      page-breaking        = #ly:page-turn-breaking
      page-count           = #4
    }
    \tocItem \markup { "Fugue 8 â 3" }
    \fugueEight
  }

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
    }
    \tocAct \markup { \abs-fontsize #9.5 {"E Major ✻"} \bold\italic "Præludium und Fuga 9" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 854" }
    \tocItem \markup { "Prelude 9" }
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
    }
    \tocItem \markup { "Fugue 9 â 3" }
    \fugueNine
  }

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
      % markup-system-spacing.basic-distance   = #(+ (/ (- top-staff-margin top-margin) staff-space) 4)
      system-system-spacing = #'(
          (basic-distance   . 8)
          (minimum-distance . 4)
          (padding          . 1)
          (stretchability   . 12)
        )
    }
    \tocAct \markup { \abs-fontsize #9.5 {"E Minor ✻"} \bold\italic "Præludium und Fuga 10" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 855" }
    \tocItem \markup { "Prelude 10" }
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
    \tocItem \markup { "Fugue 10 â 2" }
    \fugueTen
  }

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
    \tocAct \markup { \abs-fontsize #9.5 {"F Major ✻"} \bold\italic "Præludium und Fuga 11" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 856" }
    \tocItem \markup { "Prelude 11" }
    \preludeEleven
  }
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
    \tocItem \markup { "Fugue 11 â 3" }
    \fugueEleven
  }

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
     }
     \tocAct \markup { \abs-fontsize #9.5 {"F Minor ✻"} \bold\italic "Præludium und Fuga 12" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 857" }
     \tocItem \markup { "Prelude 12" }
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
     \tocItem \markup { "Fugue 12 â 4" }
     \fugueTwelve
   }

   \bookpart {
     \header{
       title       = "PRÆLUDIUM 13"
       titleRunner = "Prelude 13"
       key         = "F♯ Major"
       opus        = "BWV 858"
     }
     \paper {
       page-count       = #2
       systems-per-page = #6
     }
     \tocAct \markup { \abs-fontsize #9.5 {"F♯ Major ✻"} \bold\italic "Præludium und Fuga 13" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 858" }
     \tocItem \markup { "Prelude 13" }
     \preludeThirteen
   }
   \bookpart {
     \header{
       title       = "FUGA 13 â 3"
       titleRunner = "Fugue 13"
       key         = "F♯ Major"
       opus        = "BWV 858"
     }
     \paper {
       page-count       = #2
       systems-per-page = #6
     }
     \tocItem \markup { "Fugue 13 â 3" }
     \fugueThirteen
   }

   \bookpart {
     \header{
       title       = "PRÆLUDIUM 14"
       titleRunner = "Prelude 14"
       key         = "F♯ Minor"
       opus        = "BWV 859"
     }
     \paper {
       page-count       = #2
       systems-per-page = #6
     }
     \tocAct \markup { \abs-fontsize #9.5 {"F♯ Minor ✻"} \bold\italic "Præludium und Fuga 14" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 859" }
     \tocItem \markup { "Prelude 14" }
     \preludeFourteen
   }
   \bookpart {
     \header{
       title       = "FUGA 14 â 4"
       titleRunner = "Fugue 14"
       key         = "F♯ Minor"
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
     \tocItem \markup { "Fugue 14 â 4" }
     \fugueFourteen
   }

   \bookpart {
     \header{
       title       = "PRÆLUDIUM 15"
       titleRunner = "Prelude 15"
       key         = "G Major"
       opus        = "BWV 860"
     }
     \paper {
       page-count           = #2
       max-systems-per-page = #6
     }
     \tocAct \markup { \abs-fontsize #9.5 {"G Major ✻"} \bold\italic "Præludium und Fuga 15" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 860" }
     \tocItem \markup { "Prelude 15" }
     \preludeFifteen
   }
   \bookpart {
     \header{
       title       = "FUGA 15 â 3"
       titleRunner = "Fugue 15"
       key         = "G Major"
       opus        = "BWV 860"
     }
     \paper {
       page-count       = #4
       max-systems-per-page = #6
       page-breaking = #ly:page-turn-breaking
     }
     \tocItem \markup { "Fugue 15 â 3" }
     \fugueFifteen
   }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 16"
      titleRunner = "Prelude 16"
      key         = "G Minor"
      opus        = "BWV 861"
    }
    \paper {
      system-count     = #10
      page-count       = #2
      systems-per-page = #5
    }
    \tocAct \markup { \abs-fontsize #9.5 { "G Minor ✻"} \bold\italic "Præludium und Fuga 16" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 861" }
    \tocItem \markup { "Prelude 16" }
    \preludeSixteen
  }
  \bookpart {
    \header{
      title       = "FUGA 16 â 4"
      titleRunner = "Fugue 16"
      key         = "G Minor"
      opus        = "BWV 861"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocItem \markup { "Fugue 16 â 4" }
    \fugueSixteen
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 17"
      titleRunner = "Prelude 17"
      key         = "A♭ Major"
      opus        = "BWV 862"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocAct \markup { \abs-fontsize #9.5 {"A♭ Major ✻"} \bold\italic "Præludium und Fuga 17" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 862" }
    \tocItem \markup { "Prelude 17" }
    \preludeSeventeen
  }
  \bookpart {
    \header{
      title       = "FUGA 17 â 4"
      titleRunner = "Fugue 17"
      key         = "A♭ Major"
      opus        = "BWV 862"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocItem \markup { "Fugue 17 â 4" }
    \fugueSeventeen
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 18"
      titleRunner = "Prelude 18"
      key         = "G♯ Minor"
      opus        = "BWV 863"
    }
    \paper {
      page-count       = #2
      min-systems-per-page = #5
    }
    \tocAct \markup { \abs-fontsize #9.5 {"G♯ Minor ✻"} \bold\italic "Præludium und Fuga 18" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 863" }
    \tocItem \markup { "Prelude 18" }
    \preludeEighteen
  }
  \bookpart {
    \header{
      title       = "FUGA 18 â 4"
      titleRunner = "Fugue 18"
      key         = "G♯ Minor"
      opus        = "BWV 863"
    }
    \paper {
      page-count   = #2
      systems-per-page = #6
    }
    \tocItem \markup { "Fugue 18 â 4" }
    \fugueEighteen
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 19"
      titleRunner = "Prelude 19"
      key         = "A Major"
      opus        = "BWV 864"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocAct \markup { \abs-fontsize #9.5 {"A Major ✻"} \bold\italic "Præludium und Fuga 19" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 864" }
    \tocItem \markup { "Prelude 19" }
    \preludeNineteen
  }
  \bookpart {
    \header{
      title       = "FUGA 19 â 3"
      titleRunner = "Fugue 19"
      key         = "A Major"
      opus        = "BWV 864"
    }
    \paper {
      page-count       = #4
      % systems-per-page = #6
      page-breaking = #ly:page-turn-breaking
    }
    \tocItem \markup { "Fugue 19 â 3" }
    \fugueNineteen
  }

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
      % system-count     = #10
      % ragged-last-bottom = ##t
      % ragged-last = ##t
    }
    \tocAct \markup { \abs-fontsize #9.5 {"A Minor ✻"} \bold\italic "Præludium und Fuga 20" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 865" }
    \tocItem \markup { "Prelude 20" }
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
    \tocItem \markup { "Fugue 20 â 4" }
    \fugueTwenty
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 21"
      titleRunner = "Prelude 21"
      key         = "B♭ Major"
      opus        = "BWV 866"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
      system-system-spacing = #'(
          (basic-distance   . 8)
          (minimum-distance . 4)
          (padding          . 1)
          (stretchability   . 8)
        )
    }
    \tocAct \markup { \abs-fontsize #9.5 {"B♭ Major ✻"} \bold\italic "Præludium und Fuga 21" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 866" }
    \tocItem \markup { "Prelude 21" }
    \preludeTwentyone
  }
  \bookpart {
    \header{
      title       = "FUGA 21 â 3"
      titleRunner = "Fugue 21"
      key         = "B♭ Major"
      opus        = "BWV 866"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocItem \markup { "Fugue 21 â 3" }
    \fugueTwentyone
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 22"
      titleRunner = "Prelude 22"
      key         = "B♭ Minor"
      opus        = "BWV 867"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocAct \markup { \abs-fontsize #9.5 {"B♭ Minor ✻"} \bold\italic "Præludium und Fuga 22" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 867" }
    \tocItem \markup { "Prelude 22" }
    \preludeTwentytwo
  }
  \bookpart {
    \header{
      title       = "FUGA 22 â 5"
      titleRunner = "Fugue 22"
      key         = "B♭ Minor"
      opus        = "BWV 867"
    }
    \paper {
      page-count       = #2
      systems-per-page = #6
    }
    \tocItem \markup { "Fugue 22 â 5" }
    \fugueTwentytwo
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 23"
      titleRunner = "Prelude 23"
      key         = "B Major"
      opus        = "BWV 868"
    }
    \paper {
      page-count           = #2
      min-systems-per-page = #4
    }
    \tocAct \markup { \abs-fontsize #9.5 {"B Major ✻"} \bold\italic "Præludium und Fuga 23" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 868" }
    \tocItem \markup { "Prelude 23" }
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
    \tocItem \markup { "Fugue 23 â 4" }
    \fugueTwentythree
  }

  \bookpart {
    \header{
      title       = "PRÆLUDIUM 24"
      titleRunner = "Prelude 24"
      key         = "B Minor"
      opus        = "BWV 869"
    }
    \paper {
      page-count       = #2
     % systems-per-page = #7
    }
    \tocAct \markup { \abs-fontsize #9.5 {"B Minor ✻"} \bold\italic "Præludium und Fuga 24" \abs-fontsize #9.5 \override #'(font-features . ("onum")) "✻ BWV 869" }
    \tocItem \markup { "Prelude 24" }
    \preludeTwentyfour
  }
  \bookpart {
    \header{
      title       = "FUGA 24 â 4"
      titleRunner = "Fugue 24"
      key         = "B Minor"
      opus        = "BWV 869"
    }
    \paper {
      page-count       = #6
      systems-per-page = #6
      page-breaking    = #ly:page-turn-breaking
    }
    \tocItem \markup { "Fugue 24 â 4" }
    \fugueTwentyfour
  }
}
