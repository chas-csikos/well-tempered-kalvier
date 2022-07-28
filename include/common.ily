\include "tweaks.ily"
% \include "header.ily"

\header {
  tagline = ##f
  copyright = ##f
  % composer = "J.S. Bach"
  composerRunner = "Bach"
}
\paper {
  % page-breaking = #ly:page-turn-breaking
  % annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-last = ##f

  %% expilcit font setting needed for svg output
  %% and font features (i.e. onum and smcp)
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"            ;default
      #:brace "emmentaler"            ;default
      #:roman "TeX Gyre Bonum"        ;"Tex Gyre Schola"
      #:sans  "TeX Gyre Heros"        ;default
      #:typewriter "TeX Gyre Cursor"  ;default
      #:factor (/ staff-height pt 20) ;unnecessary if the staff size is default
    )
  )

  system-system-spacing = #'(
          (basic-distance   . 12) ;12
          (minimum-distance . 6)  ;8
          (padding          . 2)  ;2
          (stretchability   . 12) ;12
        )
}

\layout {
  \accidentalStyle piano
  \set Score.extraNatural = ##f
  %better spacing & smaller size than Bonum
  \override Score.BarNumber.font-name = "TeX Gyre Schola"
  \context {
    \Score
    barNumberVisibility = #first-bar-number-invisible-save-broken-bars
  }
  \context {
    \PianoStaff
      % \consists "Page_turn_engraver"
      \override StaffGrouper.staff-staff-spacing = #'(
        (basic-distance   . 9)  ;9
        (minimum-distance . 7)  ;7
        (padding          . 2)  ;1
        (stretchability   . 5)  ;5
      )
  }
  % \override Stem.details = #'(
  %   (lengths 3.5 3.5 3.5 4.25 5.0 6.0)             ;3.5 3.5 3.5 4.25 5.0 6.0
  %   (beamed-lengths 3.26 3.5 3.6)                  ;3.26 3.5 3.6
  %   (beamed-minimum-free-lengths 1.83 1.5 1.25)    ;1.83 1.5 1.25
  %   (beamed-extreme-minimum-free-lengths 2.0 1.25) ;2.0 1.25
  % )
  % \context {
  %   \Voice
  %   \consists "Melody_engraver"
  %   \override Stem #'neutral-direction = #'() %% Assertion Failed! Prelude 21
  % }
}