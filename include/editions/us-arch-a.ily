\paper {
  print-first-page-number = ##t
  min-systems-per-page = #5 %maybe not needed;
  max-systems-per-page = #7 %but better off safe?

  ragged-last-bottom = ##f
  ragged-bottom = ##f
  ragged-last = ##f

  #(set-paper-size "arch a")
    % two-sided     = ##t
    % inner-margin  = 0.75\in
    % outer-margin  = 0.5\in
    left-margin   = 0.5\in
    right-margin  = 0.5\in
    top-margin    = 0.5\in
    bottom-margin = 0.5\in
    indent        = 0.25\in

  %top and bottom aligned across pages
    % User Variable
      %%% distance to top/bottom line of top\bottom staff from page's top\bottom edge
      top-staff-margin    = 1.0\in
      bottom-staff-margin = 1.0\in

    %% Align Top Staffs
      %%% set the basic distance of the top staff from the top margin
      %%% this formula takes into account the above settings, the current staff size, and adds
      %%% 2 staff spaces, since the reference position of the staff is its center line
      top-system-spacing.basic-distance   = #(+ (/ (- top-staff-margin top-margin) staff-space) 2)
      top-system-spacing.minimum-distance = 0
      top-system-spacing.padding          = -50 % set large negative padding in order to ignore the skyline
      top-system-spacing.stretchability   = 0   % do not stretch the distance

    %% Align bottom Staffs
      %%% set the basic distance of the top staff from the top margin
      %%% this formula takes into account the above settings, the current staff size, and adds
      %%% 2 staff spaces, since the reference position of the staff is its center line
      last-bottom-spacing.basic-distance   = #(+ (/ (- bottom-staff-margin bottom-margin) staff-space) 2)
      last-bottom-spacing.minimum-distance = 0
      last-bottom-spacing.padding          = -50 % set large negative padding in order to ignore the skyline
      last-bottom-spacing.stretchability   = 0   % do not stretch the distance

      top-markup-spacing.basic-distance   = 0
      top-markup-spacing.minimum-distance = 0
      top-markup-spacing.padding          = -50
      top-markup-spacing.stretchability   = 0

      markup-system-spacing.basic-distance   = #(+ (/ (- top-staff-margin top-margin) staff-space) 2)
      markup-system-spacing.minimum-distance = 0
      markup-system-spacing.padding          = -50
      markup-system-spacing.stretchability   = 0

  %header and footers
    %%
    bookTitleMarkup =
      \markup {
        \fill-line{
          % \right-column {
            % \abs-fontsize #10 \override #'(font-features . ("smcp""onum"))
            % \fromproperty#'header:opus
          % }
          \center-column {
            \bold
            \abs-fontsize #14
            \override #'(font-features . ("smcp"))
              \fromproperty #'header:title
          }
          % \left-column {
          % \abs-fontsize #10 \override #'(font-features . ("smcp""onum"))
            % \fromproperty#'header:key
          % }
        }
      }

    scoreTitleMarkup =
      \markup {
        \column {
          \on-the-fly \print-all-headers {
            \bookTitleMarkup
            %\hspace #1
          }
            \fill-line {
            %  \on-the-fly #not-first-page \fromproperty #'header:piece
            %  \on-the-fly #not-first-page \fromproperty #'header:opus
            }
        }
      }

    evenHeaderMarkup =
    \markup{
      \fill-line{
        \left-align {
        \line {
          \on-the-fly \print-page-number-check-first
          \bold
          \abs-fontsize #10
            \fromproperty #'page:page-number-string

          \abs-fontsize #10
          \override #'(font-features . ("smcp""onum"))
            \fromproperty #'header:titleRunner

          \abs-fontsize #8
          \override #'(font-features . ("smcp""onum"))
            \fromproperty #'header:key
      }
      }
      \null
      \right-align {
      \line {
        \override #'(font-features . ("smcp""onum"))
        \abs-fontsize #8
          \fromproperty #'header:opus
          \abs-fontsize #10
          \override #'(font-features . ("smcp""onum"))
            \fromproperty #'header:composerRunner
      }
      }
    }
    }
    
    % evenFooterMarkup =
    %   \markup{ "even" }
    
    oddHeaderMarkup =
    \markup{
      \fill-line {
        \left-align {
          \line {
            \abs-fontsize #10
            \override #'(font-features . ("smcp""onum"))
              \fromproperty #'header:titleRunner

            \abs-fontsize #8
            \override #'(font-features . ("smcp""onum"))
              \fromproperty #'header:key
          }
        }
        \null
        \column {
          \right-align {
            \line {
                \override #'(font-features . ("smcp""onum"))
                \abs-fontsize #8
                  \fromproperty #'header:opus

                \abs-fontsize #10
                \override #'(font-features . ("smcp""onum"))
                  \fromproperty #'header:composerRunner
              \on-the-fly \print-page-number-check-first
              \bold
              \abs-fontsize #10
                \fromproperty #'page:page-number-string
            }
          }
        }
      }
    }

    % oddFooterMarkup =
    %   \markup{ "odd" }
  
}

\include "oll-core/package.ily"
\loadPackage edition-engraver
\consistToContexts #edition-engraver Score.Staff.Voice

\addEdition archA

%prelude one
  \editionMod archA 1 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(3 . 4)
  \editionMod archA 1 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(3 . 4)
  \editionMod archA 2 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(-4 . -3)
  \editionMod archA 2 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(-4 . -3)
  \editionMod archA 5 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(-3.75 . -2.75)
  \editionMod archA 5 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(-3.75 . -2.75)
  \editionMod archA 8 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(1.75 . 2.25)
  \editionMod archA 8 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(1.75 . 2.25)
  % \editionMod archA 9 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(1.75 . 2.75)
  % \editionMod archA 9 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(1.75 . 2.75)

  \editionMod archA 15 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 15 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 16 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 16 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 17 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 17 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

  \editionMod archA 20 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 20 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 21 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 21 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 23 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 23 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 24 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 24 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 33 1/16 prelude.one.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 33 4/16 prelude.one.Voice.B \shape #'((0 . -0.5)(0 . -0.625)(0 . -0.625)(0 . -0.5)) Tie
  \editionMod archA 34 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 34 4/16 prelude.one.Voice.B \shape #'((0 . 0.5)(0 . 0.25)(0 . 0.25)(0 . 0.5)) Tie

%fugue one
  \editionModList archA fugue.one.Score \break #'(4 6 8 10 12)
  \editionModList archA fugue.one.Score \break #'(17 19 21 23 25)
  \editionMod archA 14 1/2 fugue.one.Staff \bar""
  \editionMod archA 14 1/2 fugue.one.Score \break
  % \editionMod archA 15 0/2 fugue.one.Voice.A \override Score.BarNumber.break-visibility = ##(#f #t #t)
  % \editionMod archA 15 1/2 fugue.one.Voice.A \revert   Score.BarNumber.break-visibility
  \editionMod archA 5  1/4 fugue.one.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 6  3/4 fugue.one.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 10 1/8 fugue.one.Voice.B \shape #'((-0.5 . -0.5)(-0.5 . -0.75)(0 . -0.75)(0 . -0.5)) Tie
  \editionMod archA 19 1/2 fugue.one.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 21 2/4 fugue.one.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 23 3/4 fugue.one.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 24 0/4 fugue.one.Voice.D \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0 . -0.35)(0 . -0.65)(0 . -0.65)(0 . -0.35))) Tie
  \editionMod archA 25 0/4 fugue.one.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 26 0/4 fugue.one.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie

%prelude two
  \editionMod archA 34 19/64 prelude.two.Voice.A \once\omit Accidental 
  \editionMod archA 34 1/2 prelude.two.Voice.C \once\omit Accidental 
  \editionMod archA 37 5/8 prelude.two.Voice.C \shape #'( (0 . -0.4) (0 . -0.75) (0 . -0.75) (0 . -0.4)) Tie
  \editionMod archA 37 3/4 prelude.two.Voice.C \shape #'( (0 . 0) (0 . -0.25) (0 . -0.25) (0 . 0)) Tie
  \editionMod archA 37 2/4 prelude.two.Voice.D \shape #'( (0 . 0) (-1.5 . -0.75) (1.5 . -0.75) (0 . 0)) Tie

%fugue two %846  %c minor 4/4
  \editionModList archA fugue.two.Score \break #'(4 7 9 11)
  \editionMod archA 14 0/2 fugue.two.Voice.A \once\override Beam.auto-knee-gap = #1
  \editionMod archA 16 1/2 fugue.two.Score \bar ""
  \editionMod archA 16 1/2 fugue.two.Score \pageBreak
  \editionMod archA 17 5/8 fugue.two.Voice.B \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 18 1/8 fugue.two.Voice.B \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 19 1/8 fugue.two.Voice.C \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 19 5/8 fugue.two.Voice.C \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 24 1/2 fugue.two.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 29 1/2 fugue.two.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 30 0/2 fugue.two.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 26 3/8 fugue.two.Voice.B \shape #'((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%prelude three
  \editionModList archA    prelude.three.Score   \noBreak #'(8 16)
  \editionModList archA    prelude.three.Score   \break #'(9 17 25 33 39 47 55 63 70 77 83 91 97)

%fugue three
  % Was working but is now rendering to 7 pages forcing breaks + no breaks
  % \editionModList archA    fugue.three.Score   \noBreak #'(24 26 27 29 30)
  % \editionModList archA    fugue.three.Score   \break #'(4 7 10 13 16 19 22 25 28 31 33 35 37)
  \editionMod archA 24 0/1 fugue.three.Score   \noPageBreak
  \editionMod archA 35 0/1 fugue.three.Score   \allowPageTurn
  \editionMod archA 4  0/4 fugue.three.Voice.A \shape #'((0 . 0.5) (0 . 0.5) (0.75 . 0.5) (0.75 . 0.5)) Tie
  \editionMod archA 5  3/4 fugue.three.Voice.A \shape #'((0 . 0.5) (0 . 0.5) (0.75 . 0.5) (0.75 . 0.5)) Tie
  \editionMod archA 8  3/4 fugue.three.Voice.A \shape #'((0 . 0.75) (0 . 0.25) (0 . 0.25) (0 . 0.75)) Tie
  \editionMod archA 9  1/4 fugue.three.Voice.A \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Tie
  \editionMod archA 9  2/4 fugue.three.Voice.C \shape #'((0 . 0) (0 . -0.25) (0 . -0.25) (0 . 0)) Tie
  \editionMod archA 15 0/4 fugue.three.Voice.A \shape #'((-1 . -0.5) (-1 . -0.5) (0.75 . -0.5) (0.75 . -0.5)) Tie
  \editionMod archA 18 1/4 fugue.three.Voice.A \shape #'((0 . 0) (0 . -0.125) (0 . -0.125) (0 . 0)) Tie
  \editionMod archA 18 2/4 fugue.three.Voice.C \shape #'((-0.75 . -0.5) (-0.75 . -0.5) (0 . -0.5) (0 . -0.5)) Tie
  \editionMod archA 24 1/4 fugue.three.Voice.C \shape #'((0 . 0.5) (0 . 0.5) (0.75 . 0.5) (0.75 . 0.5)) Tie
  %\editionMod archA 24 2/4 fugue.three.Voice.D \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.5)) Tie
  \editionMod archA 25 2/4 fugue.three.Voice.D \shape #'((0 . 0.25) (0 . 0.75) (0 . 0.75) (0 . 0.25)) Tie
  \editionMod archA 45 0/4 fugue.three.Voice.A \shape #'((0 . 0.25) (0 . 0.25) (0.75 . 0.25) (0.75 . 0.25)) Tie
  \editionMod archA 46 3/4 fugue.three.Voice.A \shape #'(((0 . 0.25) (0 . 0.25) (0 . 0.25) (0 . 0.25)) ((0 . 0.25) (0 . 0.25) (0.75 . 0.25) (0.75 . 0.25))) Tie
  \editionMod archA 49 1/4 fugue.three.Voice.A \shape #'((0 . 0.5) (0 . 1) (0.75 . 1) (0.75 . 0.5)) Tie
  \editionMod archA 50 1/4 fugue.three.Voice.A \shape #'((0 . 0.5) (0 . 0.75) (0 . 0.75) (0 . 0.5)) Tie

%prelude four
  % \editionMod archA 1 0/4 prelude.four.Voice.E \shape  #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie %see file, edition engraver fails on first beat
  \editionMod archA 1 3/4 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod archA 2 5/4 prelude.four.Voice.B \shape  #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 3 3/4 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.125) Staff.Arpeggio
  \editionMod archA 3 0/4 prelude.four.Voice.D \shape  #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 3 0/4 prelude.four.Voice.E \shape  #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 4 0/4 prelude.four.Voice.E \shape  #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 5 3/4 prelude.four.Voice.E \shape  #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 10 0/4 prelude.four.Voice.E \shape  #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 10 3/4 prelude.four.Voice.A \shape  #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 11 5/4 prelude.four.Voice.B \shape  #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 12 3/4 prelude.four.Voice.A \shape  #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 12 5/4 prelude.four.Voice.B \shape #'(((-0.5 . -0.5)(-0.5 . -0.75)(0 . -0.75)(0 . -0.5)) ((0 . -0.5)(0 . -0.75)(0 . -0.75)(0 . -0.5))) Tie
  \editionMod archA 12 3/4 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod archA 13 0/2 prelude.four.Voice.B \shape #'((0 . 0.25)(1 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 14 0/2 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod archA 14 1/2 prelude.four.Voice.A \shape #'((1 . 0)(1 . 0)(0 . 0)(0 . 0)) Tie
  \editionMod archA 15 2/4 prelude.four.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod archA 15 5/8 prelude.four.Voice.E \shape #'((-1 . -0.25)(-1 . -0.5)(0 . -0.5)(0 . -0.25)) Tie
  \editionMod archA 18 0/4 prelude.four.Voice.E \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 18 2/4 prelude.four.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  %\editionMod archA 18 5/8 prelude.four.Voice.B \once\override NoteColumn.X-offset = #-2.5 %\shape #'((-0.75 . -0.5)(-0.75 . 0)(0 . 0)(0 . -0.5)) Tie
  \editionMod archA 18 3/4 prelude.four.Voice.A \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod archA 19 0/2 prelude.four.Voice.E \shape #'((-0.75 . -0.375)(-0.75 . 0)(0 . 0)(0 . -0.375)) Tie
  \editionMod archA 21 5/4 prelude.four.Voice.A \shape #'(((-0.75 . 0.25)(-0.75 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  %\editionMod archA 25 5/8 prelude.four.Voice.B \shape #'((-1 . -0.75)(-1 . -1)(0 . -1)(0 . -0.75)) Tie
  \editionMod archA 25 6/8 prelude.four.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 27 3/4 prelude.four.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 28 0/4 prelude.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 29 3/4 prelude.four.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 34 3/4 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.5) Staff.Arpeggio
  \editionMod archA 34 0/4 prelude.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 34 3/4 prelude.four.Voice.D \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 35 0/4 prelude.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod archA 35 0/4 prelude.four.Voice.E \shape #'((-0.75 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 35 3/4 prelude.four.Voice.B \shape #'((-0.75 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 35 3/4 prelude.four.Voice.D \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod archA 36 0/4 prelude.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 36 0/4 prelude.four.Voice.D \shape #'((-0.75 . -0.25)(0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 36 3/4 prelude.four.Voice.B \shape #'(((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) ((0 . 0)(0 . 0)(0 . 0)(0 . 0.0))) Tie
  \editionMod archA 38 0/2 prelude.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod archA 38 11/8 prelude.four.Voice.D \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie


%fugue 4
  \editionModList archA    fugue.four.Score \break #'(9 17 25 32 39  44 49 54 59 64 69)
  \editionMod archA 44 0/1 fugue.four.Score \pageBreak
  \editionMod archA 74 0/1 fugue.four.Score \allowPageTurn
  \editionMod archA 10 1/2 fugue.four.Voice.C \shape #'((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 13 0/1 fugue.four.Voice.D \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 13 1/2 fugue.four.Voice.C \shape #'((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 14 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 14 1/2 fugue.four.Voice.E \shape #'((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 15 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 16 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 18 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . 0.25)(-0.75 . 0.25)(-0.75 . 0)) Tie
  \editionMod archA 20 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 22 0/1 fugue.four.Voice.C \hide MultiMeasureRest
  \editionMod archA 25 0/1 fugue.four.Voice.C \override MultiMeasureRest.transparent = ##f
  \editionMod archA 28 1/2 fugue.four.Voice.B \shape #'((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 28 0/2 fugue.four.Voice.D \shape #'((0 . -0.125)(0 . 0.25)(0 . 0.25)(0 . -0.125)) Tie
  \editionMod archA 29 0/2 fugue.four.Voice.D \shape #'((0 . -0.125)(0 . 0.25)(-1.25 . 0.25)(-1.25 . -0.125)) Tie
  \editionMod archA 31 0/2 fugue.four.Voice.B \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0 . 0.5)(0 . 0.5)(-0.75 . 0.5)(-0.75 . 0.5))) Tie
  \editionMod archA 32 0/2 fugue.four.Voice.A \shape #'((0 . 0.875)(0 . 2)(0 . 2)(0 . 0.875)) Tie
  \editionMod archA 33 0/2 fugue.four.Voice.D \shape #'((-1 . 0.25)(-1 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod archA 33 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 33 3/4 fugue.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod archA 34 0/2 fugue.four.Voice.D \shape #'((-1 . 0.25)(-1 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod archA 38 0/2 fugue.four.Voice.D \shape #'(((-1 . 0.25)(-1 . 0.25)(0 . 0.25)(0 . 0.25))((0 . 0.25)(0 . 0.25)(1 . 0.25)(1 . 0.25))) Tie
  \editionMod archA 39 3/4 fugue.four.Voice.D \shape #'(((0 . 0.25)(0 . 0.25)(1 . 0.25)(1 . 0.25))) Tie
  \editionMod archA 40 0/2 fugue.four.Voice.C \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 42 1/2 fugue.four.Voice.C \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 43 1/2 fugue.four.Voice.C \shape #'(((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) ((0 . -0.5)(0 . -1)(1 . -1)(1 . -0.5))) Tie
  \editionMod archA 44 0/2 fugue.four.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod archA 44 0/2 fugue.four.Voice.C \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod archA 44 1/2 fugue.four.Voice.B \once\override Stem.length = #5.25
  \editionMod archA 44 1/2 fugue.four.Voice.B \once\override Stem.whiteout = #1
  \editionMod archA 45 0/2 fugue.four.Voice.B \once\override Stem.whiteout = #1
  \editionMod archA 45 3/4 fugue.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) Tie
  \editionMod archA 46 0/2 fugue.four.Voice.B \shape #'((0 . -0.5)(-1.25 . -1.25)(1.25 . -1.25)(0 . -0.5)) Tie
  \editionMod archA 51 0/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 53 1/2 fugue.four.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(1 . 0.25)(1 . 0.25))) Tie
  \editionMod archA 55 0/1 fugue.four.Voice.D \hide MultiMeasureRest
  \editionMod archA 60 0/1 fugue.four.Voice.D \override MultiMeasureRest.transparent = ##f
  \editionMod archA 56 1/2 fugue.four.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod archA 70 0/1 fugue.four.Voice.D \hide MultiMeasureRest
  \editionMod archA 72 0/1 fugue.four.Voice.D \override MultiMeasureRest.transparent = ##f
  \editionMod archA 72 1/2 fugue.four.Voice.B \shape #'((-1 . -0.5)(-1 . -0.5)(1 . -0.5)(1 . -0.5)) Tie
  \editionMod archA 78 0/1 fugue.four.Voice.C \small %\hide MultiMeasureRest
  \editionMod archA 81 0/1 fugue.four.Voice.C \normalsize %\override MultiMeasureRest.transparent = ##f
  \editionMod archA 78 0/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 79 1/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 85 1/2 fugue.four.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 91 0/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 92 1/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 99 0/2 fugue.four.Voice.C \shape #'((-1 . -1.5)(-1 . -1.75)(0 . -1.75)(0 . -1.5)) Tie
  \editionMod archA 99 3/4 fugue.four.Voice.B \shape #'((0.75 . 0.5)(0.75 . 0.75)(-0.75 . 0.75)(-0.75 . 0.5)) Tie
  \editionMod archA 101 1/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod archA 101 1/2 fugue.four.Voice.B \shape #'((0 . -0.25)(0 . 0)(-0.5 . 0)(-0.5 . -0.25)) Tie
  \editionMod archA 102 1/2 fugue.four.Voice.B \shape #'(((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) ((0 . 0)(0 . 0)(-1 . 0)(-1 . 0))) Tie
  \editionMod archA 105 1/2 fugue.four.Voice.B \once\tieDown
  \editionMod archA 105 1/2 fugue.four.Voice.B \shape #'((0.75 . 0.5)(0.75 . 0.75)(-1 . 0.75)(-1 . 0.5)) Tie
  \editionMod archA 106 0/1 fugue.four.Voice.E \shape #'( ((-1 . -0.25)(-1 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(1 . -0.25)(1 . -0.25)) ) Tie
  \editionMod archA 108 1/2 fugue.four.Voice.A \shape #'((0 . 1)(0 . 1.5)(1 . 1.5)(1 . 1)) Tie
  \editionMod archA 110 0/1 fugue.four.Voice.E \shape #'(((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) ((0 . -0.5)(0 . -0.5)(1 . -0.5)(1 . -0.5))) Tie
  \editionMod archA 110 1/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod archA 111 0/1 fugue.four.Voice.B \shape #'((1 . -0.5)(0 . 0)(0 . 0)(-0.75 . -0.5)) Tie
  \editionMod archA 112 0/1 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod archA 112 0/1 fugue.four.Voice.E \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod archA 113 0/1 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod archA 113 0/1 fugue.four.Voice.E \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod archA 114 0/1 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod archA 114 0/1 fugue.four.Voice.B \shape #'((0 . 0)(0 . 0)(-1 . 0)(-1 . 0)) Tie
  \editionMod archA 114 0/1 fugue.four.Voice.E \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie

%prelude five
  \editionMod archA 3  0/1 prelude.five.Score \break
  \editionMod archA 27 0/1 prelude.five.Voice.D \shape #'((-1 . -0.5)(-0.5 . -0.5)(0.5 . -0.5)(1 . -0.5)) Tie
  \editionMod archA 28 0/1 prelude.five.Voice.D \shape #'((-1 . -0.5)(-0.5 . -0.5)(0.5 . -0.5)(1 . -0.5)) Tie
  \editionMod archA 32 6/16 prelude.five.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5)) Tie

%fugue five
  \editionMod archA 3 3/4 fugue.five.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 5 1/4 fugue.five.Voice.B \shape #'(((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0))((-0.25 . 0)(-0.25 . -0.25)(0 . -0.25)(0 . 0))) Tie
  \editionMod archA 5 1/2 fugue.five.Score  \bar ""
  \editionMod archA 15 1/4 fugue.five.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod archA 15 2/4 fugue.five.Voice.B \shape #'((1 . 1)(1 . 1)(0 . 1)(0 . 1)) Tie
  \editionMod archA 15 2/4 fugue.five.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 16 1/2 fugue.five.Score  \bar ""
  \editionMod archA 16 2/8 fugue.five.Voice.B \once\override Beam.positions =  #'(-3.75 . -4.25)
  \editionMod archA 16 2/8 fugue.five.Voice.C \once\override Beam.positions =  #'(-5.25 . -6)
  \editionMod archA 24 1/2 fugue.five.Score  \bar ""
  

%prelude six
  \editionMod archA 15 1/2 prelude.six.Voice.B \shape #'((0 . -0.25)(-2 . 0)(2 . 0)(0 . -0.25)) Tie
  \editionMod archA 20 3/8 prelude.six.Voice.D \shape #'((-0.75 . -0.5)(-0.75 . -0.75)(0 . -0.75)(0 . -0.5)) Tie
  \editionMod archA 20 1/2 prelude.six.Voice.D \shape #'((-0.75 . 0)(-0.75 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 23 0/2 prelude.six.Voice.D \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 23 1/2 prelude.six.Voice.D \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 25 1/2 prelude.six.Voice.F \shape #'((0 . 0.5)(0 . 1.5)(0 . 1.5)(0 . 0.5)) Tie

%fugue six
  \editionMod archA 7  1/8 fugue.six.Voice.C \shape #'((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 8  1/4 fugue.six.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 19 0/2 fugue.six.Voice.A \shape #'(((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0))((0 . 0)(0 . 0)(0 . 0)(0 . 0))) Tie
  \editionMod archA 25  0/4 fugue.six.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod archA 28  2/4 fugue.six.Voice.A \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5))) Tie
  \editionMod archA 30  1/8 fugue.six.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod archA 36  1/8 fugue.six.Voice.A \shape #'((-1 . 0.5)(-1 . 0.75)(1 . 0.75)(1 . 0.5)) Tie
  \editionMod archA 41  0/2 fugue.six.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 42  0/4 fugue.six.Voice.A \shape #'((0 . 1)(0 . 1)(0.75 . 1)(0.75 . 1)) Tie

%prelude seven
  \editionModList archA prelude.seven.Score \break #'(3 5 7 9 12 16 20 23 26 29 31  37 40 43 46 49 52 55 58 61 64 67)
  % \editionModList archA prelude.seven.Score \noBreak #'()
  % \editionMod archA 1  0/1 prelude.seven.Voice.D \shape #'((0 . 0)(-0.75 . -0.75)(0.75 . -0.75)(0 . 0)) Tie %Doesn't work? Placed in file (prelude07.ily).
  \editionMod archA 2  0/1 prelude.seven.Voice.D \shape #'((0 . 0)(-0.5 . -0.25)(0.5 . -0.25)(0 . 0)) Tie
  \editionMod archA 2  1/2 prelude.seven.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 7  0/2 prelude.seven.Voice.A \shape #'((-1 . 0.25)(-1 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod archA 8  0/2 prelude.seven.Voice.D \shape #'(((-1 . -0.25)(-2 . -0.5)(1 . -0.5)(0 . -0.25)) ((0 . -0.5)(0 . -0.75)(1 . -0.75)(1 . -0.5)))Tie
  \editionMod archA 9  0/2 prelude.seven.Voice.D \shape #'((0 . 0)(-1 . -0.5)(1 . -0.5)(0 . 0)) Tie
  \editionMod archA 9  1/2 prelude.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 10 3/4 prelude.seven.Voice.D \shape #'((-0.75 . -0.25)(-0.75 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 12 3/4 prelude.seven.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 15 0/1 prelude.seven.Voice.D \shape #'(((-1 . -0.25)(-1 . 0.125)(0 . 0.125)(0 . -0.25)) ((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25))) Tie
  \editionMod archA 18 1/2 prelude.seven.Voice.C \shape #'((0 . 1)(0 . 1)(1 . 1)(1 . 1)) Tie
  \editionMod archA 19 1/2 prelude.seven.Voice.B \shape #'(((-1 . -0.25)(-1 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)))Tie
  \editionMod archA 29 0/4 prelude.seven.Voice.D \shape #'((0 . 0)(-0.5 . -0.25)(0.5 . -0.25)(0 . 0)) Tie
  \editionMod archA 29 2/4 prelude.seven.Voice.C \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 30 2/4 prelude.seven.Voice.C \shape #'(((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) ((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5))) Tie
  \editionMod archA 31 0/4 prelude.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) Tie
  \editionMod archA 31 0/4 prelude.seven.Voice.B \once\override Stem.length = #6
  \editionMod archA 33 1/2 prelude.seven.Score   { \bar""\allowPageTurn }
  \editionMod archA 33 0/2 prelude.seven.Voice.B \shape #'(((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0))((-0.5 . 0)(-0.5 . 0)(0 . 0)(0 . 0))) Tie
  \editionMod archA 33 0/2 prelude.seven.Voice.C \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0))((-0.5 . 0)(-0.5 . 0)(0 . 0)(0 . 0))) Tie
  \editionMod archA 36 1/4 prelude.seven.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 36 2/4 prelude.seven.Voice.A \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0 . 1.25)(0 . 1.75)(2 . 1.75)(2 . 1.25))) Tie
  %\editionMod archA 37 3/16 prelude.seven.Voice.A \once\omit Accidental
  \editionMod archA 39 1/2 prelude.seven.Voice.A \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod archA 42 3/4 prelude.seven.Voice.B \shape #'(((0 . -0.75)(-0.5 . -1.5)(0.5 . -1.5)(0 . -0.75)) ((0 . 0)(0 . 0)(0 . 0)(0 . 0))) Tie
  \editionMod archA 43 4/16 prelude.seven.Voice.A \once\override VoiceFollower.bound-details = #'((right (attach-dir . 0) (padding . 1)) (left (attach-dir . 0) (padding . 3.5)))
  \editionMod archA 46 0/2 prelude.seven.Voice.A \shape #'((-0.3 . 2)(-0.3 . 1.75)(0 . 1.75)(0 . 2)) Tie
  \editionMod archA 56 1/4 prelude.seven.Voice.B \shape #'((-0.5 . -2)(-0.5 . -2)(0 . -2)(0 . -2)) Tie
  \editionMod archA 57 3/4 prelude.seven.Voice.A \shape #'((0 . 0.25)(0 . 0.75)(0 . 0.75)(0 . 0.25)) Tie
  \editionMod archA 63 1/4 prelude.seven.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 63 3/4 prelude.seven.Voice.C \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod archA 65 3/4 prelude.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 67 1/4 prelude.seven.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 68 0/1 prelude.seven.Voice.D \shape #'((0 . 0)(-1 . -0.25)(1 . -0.25)(0 . 0)) Tie
  \editionMod archA 69 0/1 prelude.seven.Voice.D \shape #'((0 . 0)(-1 . -0.25)(1 . -0.25)(0 . 0)) Tie

%fugue seven
  \editionMod archA 10 7/8 fugue.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.25 . 0.5)(0.25 . 0.5)) Tie
  \editionMod archA 20 1/3 fugue.seven.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 35 3/4 fugue.seven.Voice.A \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 36 3/8 fugue.seven.Voice.E \shape #'((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 36 11/16 fugue.seven.Voice.E \shape #'((-0.25 . 0)(-0.25 . 0)(0 . 0)(0 . 0)) Tie
  \editionMod archA 37 3/16 fugue.seven.Voice.E \shape #'((0 . 0)(0 . 0)(0.25 . 0)(0.25 . 0)) Tie
  \editionMod archA 10 7/8 fugue.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie

%prelude 8
  \editionMod archA 6 0/2 prelude.eight.Voice.A \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod archA 9 0/2 prelude.eight.Voice.A \once \offset positions #'(-0.5 . 0.25) Staff.Arpeggio
  \editionMod archA 10 0/2 prelude.eight.Voice.B \once \offset positions #'(-0.5 . 0.25) Staff.Arpeggio
  %\editionMod archA 10 2/2 prelude.eight.Voice.A \once \offset positions #'(-0.5 . 0) Staff.Arpeggio
  \editionMod archA 11 0/2 prelude.eight.Voice.A \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  %\editionMod archA 11 1/2 prelude.eight.Voice.D \once \offset positions #'(-0.5 . 0.25) Staff.Arpeggio
  \editionMod archA 12 0/2 prelude.eight.Voice.C \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  \editionMod archA 12 1/2 prelude.eight.Voice.C \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  \editionMod archA 12 2/2 prelude.eight.Voice.C \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  %\editionMod archA 17 1/2 prelude.eight.Voice.B \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  \editionMod archA 24 0/2 prelude.eight.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod archA 24 0/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod archA 24 1/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod archA 24 2/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod archA 25 0/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod archA 25 1/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod archA 25 2/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  % \editionMod archA 26 0/4 prelude.eight.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod archA 26 0/4 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod archA 28 2/2 prelude.eight.Voice.A \once \offset positions #'(-0.25 . -0.125) PianoStaff.Arpeggio
  \editionMod archA 29 0/1 prelude.eight.Voice.A \shape #'((-0.75 . 0.5)(-0.75 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 30 0/1 prelude.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 30 1/2 prelude.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 39 0/1 prelude.eight.Voice.A \shape #'((-0.75 . 0.5)(-1 . 0.75)(1 . 0.75)(0.75 . 0.5)) Tie

%fugue eight
  \editionMod archA 44 0/1 fugue.eight.Score   \allowPageTurn
  \editionMod archA 47 1/2 fugue.eight.Staff   \bar""
  % \editionModList archA    fugue.eight.Score   \pageBreak #'(22 44 66)
  % \editionModList archA    fugue.eight.Score   \break #'(22 26 30 33 36 40)
  % \editionModList archA    fugue.eight.Score   \break #'(44 51    54 58 62)
  \editionMod archA 9  3/4 fugue.eight.Voice.C \shape #'((-0.75 . 0.5)(-0.75 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 14 3/4 fugue.eight.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 16 3/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 20 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 21 7/8 fugue.eight.Voice.A \once\tieDown
  \editionMod archA 23 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 45 1/4 fugue.eight.Voice.A \once \tieDown
  \editionMod archA 45 1/4 fugue.eight.Voice.A \shape #'((-0.25 . 0)(-0.25 . 0)(0 . 0)(0 . 0)) Tie
  \editionMod archA 46 3/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.75)(0.75 . 0.75)(0.75 . 0.5)) Tie
  \editionMod archA 47 3/4 fugue.eight.Voice.B \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod archA 56 0/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 60 7/8 fugue.eight.Voice.B \shape #'((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 62 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 71 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 72 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 75 3/4 fugue.eight.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 76 2/4 fugue.eight.Voice.C \shape #'(((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0.5 . -0.25)(0.5 . -0.25))) Tie
  \editionMod archA 78 3/4 fugue.eight.Voice.C \shape #'((-0.5 . 0.25)(-0.5 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

%prelude nine
  \editionModList archA prelude.nine.Score \break #'(3 5 7 9 12 14 16 18 20 22)
  %\editionMod archA 1 0/1 prelude.nine.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie % Failed.
  \editionMod archA 2 0/1 prelude.nine.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  % %\editionMod archA 2 0/1 prelude.nine.Voice.D \once\override Tie.stencil = #flare-tie
  \editionMod archA 2 0/1 prelude.nine.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 4 0/1 prelude.nine.Voice.A \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 5 0/1 prelude.nine.Voice.D \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 6 6/8 prelude.nine.Voice.D \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 6 9/8 prelude.nine.Voice.A \shape #'(((0 . 0.25)(0 . 0.5)(0 . 0.25)(0 . 0.25)) ((0 . 1)(0 . 1.5)(1.75 . 1.5)(1.75 . 1)))Tie
  \editionMod archA 7 6/8 prelude.nine.Voice.D \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 11 0/8 prelude.nine.Voice.E \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 11 6/8 prelude.nine.Voice.E \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 11 9/8 prelude.nine.Voice.F \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 12 0/1 prelude.nine.Score   \pageBreak
  \editionMod archA 12 3/8 prelude.nine.Voice.F \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 13 0/8 prelude.nine.Voice.F \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 15 0/8 prelude.nine.Voice.H \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 15 6/8 prelude.nine.Voice.H \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 16 0/8 prelude.nine.Voice.H \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 19 0/8 prelude.nine.Voice.H \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 19 3/8 prelude.nine.Voice.G \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 19 6/8 prelude.nine.Voice.G \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 19 0/8 prelude.nine.Voice.H \shape #'(((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0))) Tie %((0 . -0.5)(0 . -0.75)(0 . -0.75)(0 . -0.5))
  \editionMod archA 20 0/8 prelude.nine.Voice.H \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 21 6/8 prelude.nine.Voice.H \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie

%fugue nine
  \editionMod archA 15 0/1 fugue.nine.Score  \pageBreak
  \editionModList archA fugue.nine.Score      \break #'(6 8 10 12) 
  \editionMod archA 3  1/2 fugue.nine.Staff   \bar""
  \editionMod archA 4  1/4 fugue.nine.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 10 1/4 fugue.nine.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 11 1/4 fugue.nine.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 11 2/4 fugue.nine.Voice.B \shape #'(((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) ((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5))) Tie
  \editionMod archA 14 3/4 fugue.nine.Voice.B \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod archA 18 3/4 fugue.nine.Voice.A \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0.75 . -0.5)(0.75 . -0.5)) Tie
  \editionMod archA 26 3/8 fugue.nine.Voice.B \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie

%prelude ten
  \editionMod archA 1  0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) Tie
  \editionMod archA 6  0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 8  0/4 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 10 0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 11 11/16 prelude.ten.Voice.A \shape #'((-0.25 . 0.25)(-0.25 . 0)(0.25 . 0)(0.25 . 0.25)) Tie
  \editionMod archA 12 2/4 prelude.ten.Voice.A \once\override Script.X-offset = #1.25
  \editionMod archA 13 0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 15 0/4 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod archA 16 0/4 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 17 0/4 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 18 0/4 prelude.ten.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 19 2/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 20 0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 20 2/4 prelude.ten.Voice.A \once\override Script.X-offset = #1.25
  \editionMod archA 21 0/4 prelude.ten.Score   \pageBreak
  \editionMod archA 21 0/4 prelude.ten.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 22 0/4 prelude.ten.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 30 1/2 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie

%fugue ten
  \editionMod archA 4  0/4 fugue.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 6  2/4 fugue.ten.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod archA 8  2/4 fugue.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 23 0/4 fugue.ten.Voice.B \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 25 0/4 fugue.ten.Voice.A \shape #'((0 . 0)(0 . 0)(0.25 . 0)(0.25 . 0)) Tie
  \editionMod archA 25 2/4 fugue.ten.Voice.B \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 27 2/4 fugue.ten.Voice.B \shape #'(((0 . 0)( . 0.25)(0 . 0.25)(0 . 0)) ((0 . 1)(0 . 1.5)(1.75 . 1.5)(1.75 . 1))) Tie

%prelude eleven
  \editionMod archA 3  6/8 prelude.eleven.Voice.B \once\override Script.X-offset = #1.25
  \editionMod archA 9  6/8 prelude.eleven.Voice.B \once\override Script.padding = #0.75
  \editionMod archA 10 6/8 prelude.eleven.Voice.B \once\override Script.padding = #0.75
  \editionMod archA 14 0/8 prelude.eleven.Voice.B \once\override Script.X-offset = #1.25
  \editionMod archA 13 6/8 prelude.eleven.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 17 0/8 prelude.eleven.Voice.A \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie

%fugue eleven
  \editionMod archA 16 0/8 fugue.eleven.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 31 0/8 fugue.eleven.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 33 0/8 fugue.eleven.Voice.B \shape #'((0 . 0.25)(-0.5 . 0.25)(0.5 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 31 0/8 fugue.eleven.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 34 0/8 fugue.eleven.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 36 0/8 fugue.eleven.Voice.C \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0))((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod archA 41 0/8 fugue.eleven.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 44 0/8 fugue.eleven.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 49 0/8 fugue.eleven.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 58 0/8 fugue.eleven.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 62 0/8 fugue.eleven.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 64 0/8 fugue.eleven.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 65 2/8 fugue.eleven.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 68 0/8 fugue.eleven.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 70 2/8 fugue.eleven.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%prelude twelve
  \editionMod archA 5 0/1 prelude.twelve.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 6 3/16 prelude.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 7 1/8 prelude.twelve.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 11 1/2 prelude.twelve.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) Tie
  \editionMod archA 12 0/4 prelude.twelve.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 12 7/16 prelude.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 12 5/8 prelude.twelve.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 13 3/16 prelude.twelve.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 16 3/16 prelude.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 17 0/1 prelude.twelve.Voice.D \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod archA 18 0/1 prelude.twelve.Voice.D \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod archA 19 0/1 prelude.twelve.Voice.D \shape #'(((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) ((0 . -0.25)(0 . -0.75)(0 . -0.75)(0 . -0.25))) Tie
  \editionMod archA 20 0/1 prelude.twelve.Voice.D \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie

%fugue twelve
  \editionMod archA 9 1/4 fugue.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 12 1/2 fugue.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 13 1/4 fugue.twelve.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod archA 16 1/4 fugue.twelve.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod archA 19 2/4 fugue.twelve.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 22 1/4 fugue.twelve.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 23 1/4 fugue.twelve.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 24 1/4 fugue.twelve.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie  
  \editionMod archA 30 1/4 fugue.twelve.Voice.B \shape #'((0 . -0.75)(0 . -0.5)(0 . -0.5)(0 . -0.75)) Tie
  \editionMod archA 31 0/4 fugue.twelve.Score   \allowPageTurn
  \editionMod archA 33 2/4 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 37 3/4 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 38 0/4 fugue.twelve.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 38 3/4 fugue.twelve.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod archA 40 7/8 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 43 3/4 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  % \editionMod archA 43 3/4 fugue.twelve.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 50 1/4 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

%prelude thirteen
  \editionMod archA 2 11/16 prelude.thirteen.Voice.A \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0.5 . -0.25)(0.5 . -0.25)) Tie
  \editionMod archA 4  11/16 prelude.thirteen.Voice.A \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 7  11/16 prelude.thirteen.Voice.A \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 10 11/16 prelude.thirteen.Voice.A \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 12 0/4   prelude.thirteen.Voice.A \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 12 6/16   prelude.thirteen.Voice.B \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0))((0 . -1)(0 . -0.75)(0 . -0.75)(0 . -1))) Tie
  \editionMod archA 19 0/4   prelude.thirteen.Voice.A \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 23 11/16 prelude.thirteen.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod archA 24 6/16  prelude.thirteen.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie

%fugue thirteen
  \editionMod archA 9  3/4 fugue.thirteen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25))) Tie
  \editionMod archA 10 0/4 fugue.thirteen.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 21 3/4 fugue.thirteen.Voice.B \shape #'( (0 . -0.5) (0 . -1.75) (0 . -1.75) (0 . -0.5) ) Tie
  \editionMod archA 24 0/4 fugue.thirteen.Voice.B \shape #'( (-0.75 . -0.5) (-0.5 . -1) (0 . -1) (0 . -0.5) ) Tie
  \editionMod archA 25 3/4 fugue.thirteen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25))((0.25 . 0.25)(0.25 . 0.625)(2 . 0.625)(2 . 0.25))) Tie
  \editionMod archA 28 3/8 fugue.thirteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 32 7/8 fugue.thirteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%prelude fourteen
  \editionMod archA 13 0/4 prelude.fourteen.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 22 0/4 prelude.fourteen.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie

%fugue fourteen
  \editionMod archA 5 2/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 5 3/4 fugue.fourteen.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 8 3/4 fugue.fourteen.Voice.D \shape #'(((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 11 3/4 fugue.fourteen.Voice.D \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 12 5/4 fugue.fourteen.Voice.C \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)(0 . 0))((0 . -0.5)(0 . -0.375)(0.125 . -0.375)(0.125 . -0.5))) Tie
  \editionMod archA 14 2/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 15 3/4 fugue.fourteen.Voice.B \shape #'(((-0.5 . -0.25)(-0.5 . -0.125)(0 . -0.125)(0 . -0.25)) ((0 . -0.25)(0 . -0.125)(0 . -0.125)(0 . -0.25))) Tie
  \editionMod archA 16 3/4 fugue.fourteen.Voice.D \shape #'((0 . 0.25)(0 . 0.625)(0 . 0.625)(0 . 0.25)) Tie
  \editionMod archA 17 2/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 18 5/4 fugue.fourteen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25))) Tie
  \editionMod archA 19 0/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 20 0/1 fugue.fourteen.Voice.C \hide MultiMeasureRest
  \editionMod archA 28 0/1 fugue.fourteen.Voice.C \override MultiMeasureRest.transparent = ##f
  \editionMod archA 23 2/4 fugue.fourteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 25 3/4 fugue.fourteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 32 1/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 32 3/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 32 3/4 fugue.fourteen.Voice.D \shape #'((0 . 0.125)(0 . 0)(0 . 0)(0 . 0.125)) Tie
  \editionMod archA 34 0/4 fugue.fourteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 35 0/4 fugue.fourteen.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 35 0/4 fugue.fourteen.Voice.D \shape #'((0 . 0.125)(0 . 0)(0 . 0)(0 . 0.125)) Tie
  \editionMod archA 37 3/4 fugue.fourteen.Voice.D \shape #'(((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0))) Tie
  \editionMod archA 38 0/4 fugue.fourteen.Voice.D \shape #'(((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0))) Tie
  \editionMod archA 38 3/4 fugue.fourteen.Voice.D \shape #'(((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0))) Tie
  \editionMod archA 39 2/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%prelude fifteen
%fugue fifteen
  \editionMod archA 44 0/1 fugue.fifteen.Score   \allowPageTurn
  \editionMod archA 15 0/2 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 17 1/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 17 3/8 fugue.fifteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 32 1/8 fugue.fifteen.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0.5 . -0.25)(0.5 . -0.25)) Tie
  \editionMod archA 41 3/8 fugue.fifteen.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 47 0/4 fugue.fifteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 49 1/8 fugue.fifteen.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 56 0/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 57 0/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 62 0/8 fugue.fifteen.Voice.C \shape #'(((-0.5 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 63 0/8 fugue.fifteen.Voice.C \shape #'((-0.5 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 64 0/8 fugue.fifteen.Voice.C \shape #'((-0.5 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 64 0/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 66 1/8 fugue.fifteen.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.25 . 0.25)(0.25 . 0.25)) Tie
  \editionMod archA 69 3/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 70 0/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 85 0/8 fugue.fifteen.Voice.D \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie

%prelude sixteen
  \editionMod archA 4 15/16 prelude.sixteen.Voice.C \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod archA 8 5/8  prelude.sixteen.Voice.E \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 9 1/4  prelude.sixteen.Voice.E \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 9 1/2  prelude.sixteen.Voice.F \shape #'((-0.5 . -0.25)(-0.25 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 11 0/2 prelude.sixteen.Voice.B \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod archA 12 1/4 prelude.sixteen.Voice.E \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  % \editionMod archA 12 1/2 prelude.sixteen.Voice.F \shape #'((0 . 0.325)(0 . 0.75)(0 . 0.75)(0 . 0.325)) Tie
  \editionMod archA 18 1/2 prelude.sixteen.Voice.H \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie

%fugue sixteen
  % \editionMod archA 9  1/4  fugue.sixteen.Voice.A \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 15 3/4  fugue.sixteen.Voice.B \shape #'((-0.375 . -0.75)(-0.25 . -0.75)(0 . -0.75)(0 . -0.75)) Tie
  \editionMod archA 17 3/8  fugue.sixteen.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 27 0/4  fugue.sixteen.Voice.A \shape #'((0 . 0.25)(0 . 0)(0.75 . 0)(0.75 . 0.25)) Tie
  \editionMod archA 30 1/2  fugue.sixteen.Voice.B \shape #'((0 . -0.375)(0 . -0.375)(0 . -0.375)(0 . -0.375)) Tie
  \editionMod archA 30 1/2  fugue.sixteen.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 30 1/2  fugue.sixteen.Voice.D \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 31 0/2  fugue.sixteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

%prelude seventeen
  \editionMod archA 36 1/4 prelude.seventeen.Voice.A \shape #'((-1 . 0.25)(-1 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod archA 42 1/8 prelude.seventeen.Voice.A \once\override Script.padding = #0.5

%fugue seventeen
  \editionMod archA 3 3/4 fugue.seventeen.Voice.C \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 4 0/4 fugue.seventeen.Voice.D \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 6 0/1 fugue.seventeen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 8 1/4 fugue.seventeen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 18 3/4 fugue.seventeen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25))((0 . 0.25)(0 . 0.25)(0.25 . 0.25)(0.25 . 0.25))) Tie
  \editionMod archA 23 0/4 fugue.seventeen.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 30 0/4 fugue.seventeen.Voice.D \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
%prelude eighteen
  \editionMod archA 8 0/4 prelude.eighteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 10 0/4 prelude.eighteen.Voice.B \shape #'((-0.5 . 0.25)(-0.5 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 15 0/4 prelude.eighteen.Voice.A \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0.5 . -0.25)(0.5 . -0.25)) Tie
  \editionMod archA 19 0/4 prelude.eighteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 19 3/8 prelude.eighteen.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 20 0/4 prelude.eighteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 20 3/8 prelude.eighteen.Voice.C \shape #'((0 . -0.125)(0 . 0)(0 . 0)(0 . -0.125)) Tie
  \editionMod archA 25 0/8 prelude.eighteen.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie

%fugue eighteen
  \editionMod archA 6 1/2 fugue.eighteen.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 14 1/2 fugue.eighteen.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 28 1/2 fugue.eighteen.Voice.B \shape #'(((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) ((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5))) Tie
  \editionMod archA 36 1/2 fugue.eighteen.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 37 0/2 fugue.eighteen.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie

%prelude nineteen
  \editionMod archA 18 3/8 prelude.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie

%fugue nineteen
  \editionMod archA 28 0/1 fugue.nineteen.Score {\allowPageTurn}
  % \editionModList archA fugue.nineteen.Score  \break #'(26 29 31 33 35 37 40 43 45 47 49)
  % \editionMod archA 26 0/8 fugue.nineteen.Score \allowPageTurn
  \editionMod archA 4 5/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 6 6/8 fugue.nineteen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod archA 11 0/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 11 6/8 fugue.nineteen.Voice.C \shape #'((0 . -0.25)(0 . -0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 12 0/8 fugue.nineteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 12 4/8 fugue.nineteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 13 6/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 17 0/8 fugue.nineteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 17 5/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 17 6/8 fugue.nineteen.Voice.B \shape #'(((-0.75 . -0.25)(-0.75 . 0)(0 . 0)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 18 0/8 fugue.nineteen.Voice.C \shape #'((-0.75 . 0.5)(-0.75 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 19 0/8 fugue.nineteen.Voice.C \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0.75 . -0.5)(0.75 . -0.5)) Tie
  \editionMod archA 20 6/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 33 4/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 36 3/8 fugue.nineteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 41 5/8 fugue.nineteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 44 8/8 fugue.nineteen.Voice.B \shape #'(((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 47 0/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 53 0/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0)(0.75 . 0)(0.75 . 0.25)) Tie

%prelude twenty
  \editionMod archA 28 0/4 prelude.twenty.Score  \noBreak
  \editionMod archA 7 0/4 prelude.twenty.Voice.A \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod archA 11 0/4 prelude.twenty.Voice.A \shape #'((0 . 0.25)(0 . 0)(0.75 . 0)(0.75 . 0.25)) Tie
  \editionMod archA 13 6/8 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 14 0/8 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 14 3/8 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 14 6/8 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 15 0/4 prelude.twenty.Voice.B \shape #'((0 . -0.125)(0 . 0)(0 . 0)(0 . -0.125)) Tie
  \editionMod archA 16 2/8 prelude.twenty.Voice.D \shape #'((0 . -0.5)(0 . -.25)(-0.75 . -0.25)(-0.75 . -0.5)) Tie
  \editionMod archA 16 3/8 prelude.twenty.Voice.D \shape #'((1 . -1)(1 . -0.75)(-1 . -0.75)(-1 . -1)) Tie
  \editionMod archA 16 5/16 prelude.twenty.Voice.C \shape #'((-0.75 . -0.5)(-0.75 . -0.75)(0 . -0.75)(0 . -0.5)) Tie
  \editionMod archA 16 3/8 prelude.twenty.Voice.C \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod archA 18 3/8 prelude.twenty.Voice.D \shape #'((0 . -0.5)(0 . -.75)(-1 . -0.75)(-1 . -0.5)) Tie
  \editionMod archA 20 0/8 prelude.twenty.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod archA 26 0/8 prelude.twenty.Voice.B \shape #'((0 . 0.5)(0 . 0.75)(0.75 . 0.75)(0.75 . 0.5)) Tie
  \editionMod archA 26 0/8 prelude.twenty.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(-0.5 . -0.25)(-0.5 . -0.25)) Tie
  \editionMod archA 26 6/8 prelude.twenty.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 27 0/8 prelude.twenty.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 27 7/16 prelude.twenty.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.5)(0 . -0.5)(0 . -0.25)) Tie
  \editionMod archA 27 8/16 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 27 12/16 prelude.twenty.Voice.C \shape #'((0 . 0.125)(0 . 0)(0 . 0)(0 . 0.125)) Tie

%fugue twenty
  \editionMod archA 36 0/8 fugue.twenty.Score \allowPageTurn
  \editionMod archA 62 0/8 fugue.twenty.Score \allowPageTurn
  \editionMod archA 8 7/8 fugue.twenty.Voice.B \shape #'((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 10 1/4 fugue.twenty.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 12 3/8 fugue.twenty.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 22 7/8 fugue.twenty.Voice.B \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 23 7/8 fugue.twenty.Voice.B \shape #'((-0.5 . -1)(-0.5 . -1)(0 . -1)(0 . -1)) Tie
  \editionMod archA 24 0/2 fugue.twenty.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 35 1/2 fugue.twenty.Voice.D \shape #'(((-0.5 . 0.25)(-0.5 . 0.25)(0 . 0.25)(0 . 0.25))((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25))) Tie
  \editionMod archA 39 7/8 fugue.twenty.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
    \editionMod archA 42 3/4 fugue.twenty.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
    \editionMod archA 43 1/2 fugue.twenty.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
    \editionMod archA 43 1/2 fugue.twenty.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
    \editionMod archA 50 0/2 fugue.twenty.Voice.D \shape #'((-0.25 . -1.5)(-0.25 . -1.25)(0 . -1.25)(0 . -1.5)) Tie
  \editionMod archA 59 3/4 fugue.twenty.Voice.D \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 60 1/2 fugue.twenty.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 61 0/2 fugue.twenty.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 61 0/2 fugue.twenty.Voice.D \shape #'((-0.75 . -0.25)(-0.75 . -0.5)(0 . -0.5)(0 . -0.25)) Tie
  \editionMod archA 61 3/4 fugue.twenty.Voice.B \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 64 1/2 fugue.twenty.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 70 1/2 fugue.twenty.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  %\editionMod archA 73 3/4 fugue.twenty.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod archA 74 0/2 fugue.twenty.Voice.A \shape #'((0 . -0.375)(-1 . 0.5)(1 . 0.5)(0 . -0.375)) Tie
  \editionMod archA 75 1/4 fugue.twenty.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 83 1/2 fugue.twenty.Voice.H \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(1 . -0.25)(1 . -0.25))) Tie
  \editionMod archA 84 0/2 fugue.twenty.Voice.H \shape #'(((-1 . -0.25)(-1 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(1 . -0.25)(1 . -0.25))) Tie
  \editionMod archA 85 0/2 fugue.twenty.Voice.H \shape #'(((-1 . -0.25)(-1 . -0.75)(1 . -0.75)(1 . -0.25))) Tie
  \editionMod archA 86 0/2 fugue.twenty.Voice.G \once\override Stem.length = #5.5
  \editionMod archA 86 0/2 fugue.twenty.Voice.H \shape #'(((-1 . -0.25)(-1 . -0.75)(0.75 . -0.75)(0.75 . -0.25))) Tie

%prelude twentyone
  %
%fugue twentyone
  \editionMod archA 35 2/4 fugue.twentyone.Voice.A \shape #'((-0.5 . 0.25)(-0.5 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

%prelude twentytwo
  \editionMod archA 3 0/4 prelude.twentytwo.Voice.B \once \override Beam.positions = #'(-2 . -2.25)
  \editionMod archA 5 1/4 prelude.twentytwo.Voice.B \shape #'( (0.75 . 1) (0.75 . 0.75) (-1 . 0.75) (-1 . 1) ) Tie
  \editionMod archA 5 2/4 prelude.twentytwo.Voice.A \once\override NoteColumn.force-hshift = #-0.5
  \editionMod archA 5 2/4 prelude.twentytwo.Voice.B \once\shiftOff
  \editionMod archA 5 2/4 prelude.twentytwo.Voice.B \once \override Beam.positions = #'(4.5 . 4)
  \editionMod archA 5 1/4 prelude.twentytwo.Voice.C \shape #'( (0.75 . 1)(0.75 . 0.5)(-0.25 . 0.5)(-0.25 . 1) ) Tie
  \editionMod archA 5 3/4 prelude.twentytwo.Voice.B \shape #'( (0 . -1) (0 . -0.75) (-1 . -0.75) (-1 . -1) ) Tie
  \editionMod archA 5 3/4 prelude.twentytwo.Voice.C \shape #'( (0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0) ) Tie
  % \editionMod archA 6 0/4 prelude.twentytwo.Voice.A \shape #'((0 . -0.5)(-0.5 . 0)(0 . 0)(0 . 0.5)) Tie
  \editionMod archA 6 0/4 prelude.twentytwo.Voice.B \once \override NoteColumn.force-hshift = #0.75
  \editionMod archA 6 3/4 prelude.twentytwo.Voice.B \once\tieDown
  \editionMod archA 6 3/4 prelude.twentytwo.Voice.B \shape #'((1 . 1)(1 . 1)(0 . 1)(0 . 1)) Tie
  \editionMod archA 7 0/4 prelude.twentytwo.Voice.D \shape #'((-1 . -0.25)(-1 . -1)(0 . -1)(0 . -0.25)) Tie

%fugue twentytwo
  \editionMod archA 39 0/1 fugue.twentytwo.Staff \hide MultiMeasureRest
  \editionMod archA 44 0/1 fugue.twentytwo.Staff \override MultiMeasureRest.transparent = ##f
  \editionMod archA 13 2/4 fugue.twentytwo.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 16 2/4 fugue.twentytwo.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 17 3/4 fugue.twentytwo.Voice.C \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 20 1/2 fugue.twentytwo.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(1 . -0.25)(1 . -0.25)) Tie
  \editionMod archA 21 1/2 fugue.twentytwo.Voice.B \shape #' ((0 . -0.25)(0 . 0)(-1.5 . 0)(-1.5 . -0.25)) Tie
  \editionMod archA 23 0/1 fugue.twentytwo.Voice.B \shape #'((1 . -1.25)( 1 . -1.75 )(-1 . -1.75)(-1 . -1.25)) Tie
  \editionMod archA 24 0/1 fugue.twentytwo.Voice.D \shape #'((-1 . 0.25)(-1 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  % \editionMod archA 32 0/4 fugue.twentytwo.Voice.B \shape #'((0.75 . 0)(0.75 . 0)(0 . 0)(0 . 0)) Tie
  \editionMod archA 32 0/1 fugue.twentytwo.Voice.B \shape #'(((0 . -0.125)(0 . -0.25)(0 . -0.25)(0 . -0.125)) ((0 . -0.435)(0 . -0.75)(1 . -0.75)(1 . -0.435))) Tie
  \editionMod archA 32 1/4 fugue.twentytwo.Voice.C \once \override Beam.positions = #'(-0.75 . -1)
  \editionMod archA 32 1/2 fugue.twentytwo.Voice.C \shape #'((0.5 . 1) (0 . 0.75) (0 . 0.75) (0 . 1)) Tie
  \editionMod archA 32 1/2 fugue.twentytwo.Voice.C \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5))) Tie
  \editionMod archA 33 1/2 fugue.twentytwo.Voice.C \shape #'((0.75 . -0.25) (0.75 . 0.5) (0 . 0.5) (0 . 0)) Tie
  \editionMod archA 33 1/2 fugue.twentytwo.Voice.C \once \tieUp
  \editionMod archA 34 0/2 fugue.twentytwo.Voice.A \shape #'((-1 . 0.75)(0 . 2) (0 . 2)(1 . 0.75)) Tie
  \editionMod archA 35 1/2 fugue.twentytwo.Voice.C \once\tieUp
  \editionMod archA 35 1/2 fugue.twentytwo.Voice.C \shape #'((1.5 . 0)(1.5 . 0)(-1 . 0)(-1 . 0)) Tie
  \editionMod archA 45 1/2 fugue.twentytwo.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 47 1/2 fugue.twentytwo.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 52 1/2 fugue.twentytwo.Voice.E \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 53 0/2 fugue.twentytwo.Voice.B \shape #'((1 . -0.5)(1 . -1)(-1 . -1)(-1 . -0.5)) Tie
  \editionMod archA 53 1/2 fugue.twentytwo.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25))) Tie
  \editionMod archA 65 1/2 fugue.twentytwo.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 71 1/4 fugue.twentytwo.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 73 0/4 fugue.twentytwo.Voice.B \shape #'((0 . -0.5)(0 . -0.75)(-0.75 . -0.75)(-0.75 . -0.5)) Tie

%prelude twentythree
  \editionMod archA 3 1/4 prelude.twentythree.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 5 1/4 prelude.twentythree.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod archA 12 1/2 prelude.twentythree.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie

%fugue twentythree
  \editionMod archA 6  1/2 fugue.twentythree.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod archA 15 1/2 fugue.twentythree.Voice.D \shape #'(((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 21 1/2 fugue.twentythree.Voice.C \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod archA 23 3/8 fugue.twentythree.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod archA 25 2/4 fugue.twentythree.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 28 1/2 fugue.twentythree.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod archA 30 1/2 fugue.twentythree.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod archA 33 5/8 fugue.twentythree.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie

%prelude twentyfour
  \editionMod archA 4  3/4 prelude.twentyfour.Voice.B \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 8  3/4 prelude.twentyfour.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 34 0/4 prelude.twentyfour.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 46 7/8 prelude.twentyfour.Voice.B \shape #'((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%fugue twentyfour
  \editionMod archA 26 0/1 fugue.twentyfour.Score \allowPageTurn
  \editionMod archA 51 0/1 fugue.twentyfour.Score \allowPageTurn
  \editionMod archA 28 1/2 fugue.twentyfour.Score \bar""
  \editionMod archA 69 1/2 fugue.twentyfour.Score \bar""
  \editionMod archA 7  1/2 fugue.twentyfour.Voice.C \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 8  0/2 fugue.twentyfour.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 10 3/4 fugue.twentyfour.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 11 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 1)(0 . 1.5)(0 . 1.5)(0 . 1)) Tie
  \editionMod archA 11 1/4 fugue.twentyfour.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 14 5/8 fugue.twentyfour.Voice.B \once\override Stem.length=#11
  \editionMod archA 15 1/2 fugue.twentyfour.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 15 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 22 3/4 fugue.twentyfour.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod archA 23 1/4 fugue.twentyfour.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod archA 24 0/4 fugue.twentyfour.Voice.B \once \tieUp
  \editionMod archA 24 0/4 fugue.twentyfour.Voice.B \shape #'((0 . -0.25)(0 . -0.75)(0 . -0.75)(0 . -0.25)) Tie
  \editionMod archA 26 7/8 fugue.twentyfour.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod archA 28 1/8 fugue.twentyfour.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 36 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 36 1/2 fugue.twentyfour.Voice.C \shape #'(((0 . 0.25)(0 . -0.25)(0 . -0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod archA 37 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 40 3/4 fugue.twentyfour.Voice.B \shape #'((-0.25 . -1.75)(-0.25 . -2.25)(0 . -2.25)(0 . -1.75)) Tie
  \editionMod archA 42 3/8 fugue.twentyfour.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 44 1/4 fugue.twentyfour.Voice.D \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod archA 45 3/4 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 47 3/8 fugue.twentyfour.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 50 1/2 fugue.twentyfour.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 53 3/8 fugue.twentyfour.Voice.B \shape #'((-0.25 . -1)(-0.25 . -1)(0 . -1)(0 . -1)) Tie
  \editionMod archA 52 1/2 fugue.twentyfour.Voice.D \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod archA 55 1/4 fugue.twentyfour.Voice.A \once\tieUp
  \editionMod archA 55 1/4 fugue.twentyfour.Voice.A \shape #'((0 . 1.25)(0 . 1)(0.5 . 1)(0.5 . 1.25)) Tie
  \editionMod archA 55 3/4 fugue.twentyfour.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod archA 56 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 56 1/2 fugue.twentyfour.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)))Tie
  \editionMod archA 60 3/8 fugue.twentyfour.Voice.B \shape #'((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod archA 63 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod archA 64 3/4 fugue.twentyfour.Voice.A \once \override Beam.positions = #'(7 . 5.75)
  \editionMod archA 67 7/8 fugue.twentyfour.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod archA 71 5/8 fugue.twentyfour.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod archA 74 7/16 fugue.twentyfour.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod archA 74 1/2 fugue.twentyfour.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie