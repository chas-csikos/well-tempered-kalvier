#(set! paper-alist (cons '("JIS B4" . (cons (* 257 mm) (* 364 mm))) paper-alist))
\paper{
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  ragged-right  = ##f

  #(set-paper-size "JIS B4")
  left-margin   = 23.5\mm
  right-margin  = 23.5\mm
  top-margin    = 16.75\mm
  bottom-margin = 16.75\mm
  indent        = 11.75\mm

  % User Variable
  %%% distance to top/bottom line of top\bottom staff from page's top\bottom edge
  top-staff-margin    = 33.5\mm
  bottom-staff-margin = 33.5\mm

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
}

\include "oll-core/package.ily"
\loadPackage edition-engraver
\consistToContexts #edition-engraver Score.Staff.Voice

\addEdition jisB

%prelude one
  \editionMod jisB 1 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(3 . 4)
  \editionMod jisB 1 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(3 . 4)
  \editionMod jisB 2 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(-4 . -3)
  \editionMod jisB 2 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(-4 . -3)
  \editionMod jisB 5 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(-3.75 . -2.75)
  \editionMod jisB 5 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(-3.75 . -2.75)
  \editionMod jisB 8 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(1.75 . 2.25)
  \editionMod jisB 8 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(1.75 . 2.25)
  % \editionMod jisB 9 1/8 prelude.one.Voice.A \once \override Beam.positions = #'(1.75 . 2.75)
  % \editionMod jisB 9 5/8 prelude.one.Voice.A \once \override Beam.positions = #'(1.75 . 2.75)

  \editionMod jisB 15 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 15 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 16 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 16 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 17 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 17 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

  \editionMod jisB 20 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 20 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 21 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 21 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 23 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 23 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 24 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 24 9/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 33 1/16 prelude.one.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 33 4/16 prelude.one.Voice.B \shape #'((0 . -0.5)(0 . -0.625)(0 . -0.625)(0 . -0.5)) Tie
  \editionMod jisB 34 1/16 prelude.one.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 34 4/16 prelude.one.Voice.B \shape #'((0 . 0.5)(0 . 0.25)(0 . 0.25)(0 . 0.5)) Tie

%fugue one
  \editionModList jisB fugue.one.Score \break #'(4 6 8 10 12)
  \editionModList jisB fugue.one.Score \break #'(17 19 21 23 25)
  \editionMod jisB 14 1/2 fugue.one.Staff \bar""
  \editionMod jisB 14 1/2 fugue.one.Score \break
  % \editionMod jisB 15 0/2 fugue.one.Voice.A \override Score.BarNumber.break-visibility = ##(#f #t #t)
  % \editionMod jisB 15 1/2 fugue.one.Voice.A \revert   Score.BarNumber.break-visibility
  \editionMod jisB 5  1/4 fugue.one.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 6  3/4 fugue.one.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 10 1/8 fugue.one.Voice.B \shape #'((-0.5 . -0.5)(-0.5 . -0.75)(0 . -0.75)(0 . -0.5)) Tie
  \editionMod jisB 19 1/2 fugue.one.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 21 2/4 fugue.one.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 23 3/4 fugue.one.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 24 0/4 fugue.one.Voice.D \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0 . -0.35)(0 . -0.65)(0 . -0.65)(0 . -0.35))) Tie
  \editionMod jisB 25 0/4 fugue.one.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 26 0/4 fugue.one.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie

%prelude two
  \editionMod jisB 34 19/64 prelude.two.Voice.A \once\omit Accidental 
  \editionMod jisB 34 1/2 prelude.two.Voice.C \once\omit Accidental 
  \editionMod jisB 37 5/8 prelude.two.Voice.C \shape #'( (0 . -0.4) (0 . -0.75) (0 . -0.75) (0 . -0.4)) Tie
  \editionMod jisB 37 3/4 prelude.two.Voice.C \shape #'( (0 . 0) (0 . -0.25) (0 . -0.25) (0 . 0)) Tie
  \editionMod jisB 37 2/4 prelude.two.Voice.D \shape #'( (0 . 0) (-1.5 . -0.75) (1.5 . -0.75) (0 . 0)) Tie

%fugue two %846  %c minor 4/4
  \editionModList jisB fugue.two.Score \break #'(4 7 9 11)
  \editionMod jisB 14 0/2 fugue.two.Voice.A \once\override Beam.auto-knee-gap = #1
  \editionMod jisB 16 1/2 fugue.two.Score \bar ""
  \editionMod jisB 16 1/2 fugue.two.Score \pageBreak
  \editionMod jisB 17 5/8 fugue.two.Voice.B \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 18 1/8 fugue.two.Voice.B \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 19 1/8 fugue.two.Voice.C \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 19 5/8 fugue.two.Voice.C \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 24 1/2 fugue.two.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 29 1/2 fugue.two.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 30 0/2 fugue.two.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 26 3/8 fugue.two.Voice.B \shape #'((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%prelude three
  \editionModList jisB    prelude.three.Score   \noBreak #'(8 16)
  \editionModList jisB    prelude.three.Score   \break #'(9 17 25 33 39 47 55 63 70 77 83 91 97)

%fugue three
  % Was working but is now rendering to 7 pages forcing breaks + no breaks
  % \editionModList jisB    fugue.three.Score   \noBreak #'(24 26 27 29 30)
  % \editionModList jisB    fugue.three.Score   \break #'(4 7 10 13 16 19 22 25 28 31 33 35 37)
  \editionMod jisB 24 0/1 fugue.three.Score   \noPageBreak
  \editionMod jisB 35 0/1 fugue.three.Score   \allowPageTurn
  \editionMod jisB 4  0/4 fugue.three.Voice.A \shape #'((0 . 0.5) (0 . 0.5) (0.75 . 0.5) (0.75 . 0.5)) Tie
  \editionMod jisB 5  3/4 fugue.three.Voice.A \shape #'((0 . 0.5) (0 . 0.5) (0.75 . 0.5) (0.75 . 0.5)) Tie
  \editionMod jisB 8  3/4 fugue.three.Voice.A \shape #'((0 . 0.75) (0 . 0.25) (0 . 0.25) (0 . 0.75)) Tie
  \editionMod jisB 9  1/4 fugue.three.Voice.A \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Tie
  \editionMod jisB 9  2/4 fugue.three.Voice.C \shape #'((0 . 0) (0 . -0.25) (0 . -0.25) (0 . 0)) Tie
  \editionMod jisB 15 0/4 fugue.three.Voice.A \shape #'((-1 . -0.5) (-1 . -0.5) (0.75 . -0.5) (0.75 . -0.5)) Tie
  \editionMod jisB 18 1/4 fugue.three.Voice.A \shape #'((0 . 0) (0 . -0.125) (0 . -0.125) (0 . 0)) Tie
  \editionMod jisB 18 2/4 fugue.three.Voice.C \shape #'((-0.75 . -0.5) (-0.75 . -0.5) (0 . -0.5) (0 . -0.5)) Tie
  \editionMod jisB 24 1/4 fugue.three.Voice.C \shape #'((0 . 0.5) (0 . 0.5) (0.75 . 0.5) (0.75 . 0.5)) Tie
  %\editionMod jisB 24 2/4 fugue.three.Voice.D \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.5)) Tie
  \editionMod jisB 25 2/4 fugue.three.Voice.D \shape #'((0 . 0.25) (0 . 0.75) (0 . 0.75) (0 . 0.25)) Tie
  \editionMod jisB 45 0/4 fugue.three.Voice.A \shape #'((0 . 0.25) (0 . 0.25) (0.75 . 0.25) (0.75 . 0.25)) Tie
  \editionMod jisB 46 3/4 fugue.three.Voice.A \shape #'(((0 . 0.25) (0 . 0.25) (0 . 0.25) (0 . 0.25)) ((0 . 0.25) (0 . 0.25) (0.75 . 0.25) (0.75 . 0.25))) Tie
  \editionMod jisB 49 1/4 fugue.three.Voice.A \shape #'((0 . 0.5) (0 . 1) (0.75 . 1) (0.75 . 0.5)) Tie
  \editionMod jisB 50 1/4 fugue.three.Voice.A \shape #'((0 . 0.5) (0 . 0.75) (0 . 0.75) (0 . 0.5)) Tie

%prelude four
  % \editionMod jisB 1 0/4 prelude.four.Voice.E \shape  #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie %see file, edition engraver fails on first beat
  \editionMod jisB 1 3/4 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod jisB 2 5/4 prelude.four.Voice.B \shape  #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 3 3/4 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.125) Staff.Arpeggio
  \editionMod jisB 3 0/4 prelude.four.Voice.D \shape  #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 3 0/4 prelude.four.Voice.E \shape  #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 4 0/4 prelude.four.Voice.E \shape  #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 5 3/4 prelude.four.Voice.E \shape  #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 10 0/4 prelude.four.Voice.E \shape  #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 10 3/4 prelude.four.Voice.A \shape  #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 11 5/4 prelude.four.Voice.B \shape  #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 12 3/4 prelude.four.Voice.A \shape  #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 12 5/4 prelude.four.Voice.B \shape #'(((-0.5 . -0.5)(-0.5 . -0.75)(0 . -0.75)(0 . -0.5)) ((0 . -0.5)(0 . -0.75)(0 . -0.75)(0 . -0.5))) Tie
  \editionMod jisB 12 3/4 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod jisB 13 0/2 prelude.four.Voice.B \shape #'((0 . 0.25)(1 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 14 0/2 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod jisB 14 1/2 prelude.four.Voice.A \shape #'((1 . 0)(1 . 0)(0 . 0)(0 . 0)) Tie
  \editionMod jisB 15 2/4 prelude.four.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod jisB 15 5/8 prelude.four.Voice.E \shape #'((-1 . -0.25)(-1 . -0.5)(0 . -0.5)(0 . -0.25)) Tie
  \editionMod jisB 18 0/4 prelude.four.Voice.E \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 18 2/4 prelude.four.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  %\editionMod jisB 18 5/8 prelude.four.Voice.B \once\override NoteColumn.X-offset = #-2.5 %\shape #'((-0.75 . -0.5)(-0.75 . 0)(0 . 0)(0 . -0.5)) Tie
  \editionMod jisB 18 3/4 prelude.four.Voice.A \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod jisB 19 0/2 prelude.four.Voice.E \shape #'((-0.75 . -0.375)(-0.75 . 0)(0 . 0)(0 . -0.375)) Tie
  \editionMod jisB 21 5/4 prelude.four.Voice.A \shape #'(((-0.75 . 0.25)(-0.75 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  %\editionMod jisB 25 5/8 prelude.four.Voice.B \shape #'((-1 . -0.75)(-1 . -1)(0 . -1)(0 . -0.75)) Tie
  \editionMod jisB 25 6/8 prelude.four.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 27 3/4 prelude.four.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 28 0/4 prelude.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 29 3/4 prelude.four.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 34 3/4 prelude.four.Voice.A \once \offset positions #'(-0.75 . 0.5) Staff.Arpeggio
  \editionMod jisB 34 0/4 prelude.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 34 3/4 prelude.four.Voice.D \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 35 0/4 prelude.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod jisB 35 0/4 prelude.four.Voice.E \shape #'((-0.75 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 35 3/4 prelude.four.Voice.B \shape #'((-0.75 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 35 3/4 prelude.four.Voice.D \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod jisB 36 0/4 prelude.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 36 0/4 prelude.four.Voice.D \shape #'((-0.75 . -0.25)(0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 36 3/4 prelude.four.Voice.B \shape #'(((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) ((0 . 0)(0 . 0)(0 . 0)(0 . 0.0))) Tie
  \editionMod jisB 38 0/2 prelude.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod jisB 38 11/8 prelude.four.Voice.D \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie


%fugue 4
  \editionModList jisB    fugue.four.Score \break #'(9 17 25 32 39  44 49 54 59 64 69)
  \editionMod jisB 44 0/1 fugue.four.Score \pageBreak
  \editionMod jisB 74 0/1 fugue.four.Score \allowPageTurn
  \editionMod jisB 10 1/2 fugue.four.Voice.C \shape #'((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 13 0/1 fugue.four.Voice.D \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 13 1/2 fugue.four.Voice.C \shape #'((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 14 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 14 1/2 fugue.four.Voice.E \shape #'((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 15 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 16 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 18 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . 0.25)(-0.75 . 0.25)(-0.75 . 0)) Tie
  \editionMod jisB 20 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 22 0/1 fugue.four.Voice.C \hide MultiMeasureRest
  \editionMod jisB 25 0/1 fugue.four.Voice.C \override MultiMeasureRest.transparent = ##f
  \editionMod jisB 28 1/2 fugue.four.Voice.B \shape #'((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 28 0/2 fugue.four.Voice.D \shape #'((0 . -0.125)(0 . 0.25)(0 . 0.25)(0 . -0.125)) Tie
  \editionMod jisB 29 0/2 fugue.four.Voice.D \shape #'((0 . -0.125)(0 . 0.25)(-1.25 . 0.25)(-1.25 . -0.125)) Tie
  \editionMod jisB 31 0/2 fugue.four.Voice.B \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0 . 0.5)(0 . 0.5)(-0.75 . 0.5)(-0.75 . 0.5))) Tie
  \editionMod jisB 32 0/2 fugue.four.Voice.A \shape #'((0 . 0.875)(0 . 2)(0 . 2)(0 . 0.875)) Tie
  \editionMod jisB 33 0/2 fugue.four.Voice.D \shape #'((-1 . 0.25)(-1 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod jisB 33 1/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 33 3/4 fugue.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod jisB 34 0/2 fugue.four.Voice.D \shape #'((-1 . 0.25)(-1 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod jisB 38 0/2 fugue.four.Voice.D \shape #'(((-1 . 0.25)(-1 . 0.25)(0 . 0.25)(0 . 0.25))((0 . 0.25)(0 . 0.25)(1 . 0.25)(1 . 0.25))) Tie
  \editionMod jisB 39 3/4 fugue.four.Voice.D \shape #'(((0 . 0.25)(0 . 0.25)(1 . 0.25)(1 . 0.25))) Tie
  \editionMod jisB 40 0/2 fugue.four.Voice.C \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 42 1/2 fugue.four.Voice.C \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 43 1/2 fugue.four.Voice.C \shape #'(((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) ((0 . -0.5)(0 . -1)(1 . -1)(1 . -0.5))) Tie
  \editionMod jisB 44 0/2 fugue.four.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod jisB 44 0/2 fugue.four.Voice.C \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod jisB 44 1/2 fugue.four.Voice.B \once\override Stem.length = #5.25
  \editionMod jisB 44 1/2 fugue.four.Voice.B \once\override Stem.whiteout = #1
  \editionMod jisB 45 0/2 fugue.four.Voice.B \once\override Stem.whiteout = #1
  \editionMod jisB 45 3/4 fugue.four.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) Tie
  \editionMod jisB 46 0/2 fugue.four.Voice.B \shape #'((0 . -0.5)(-1.25 . -1.25)(1.25 . -1.25)(0 . -0.5)) Tie
  \editionMod jisB 51 0/2 fugue.four.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 53 1/2 fugue.four.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(1 . 0.25)(1 . 0.25))) Tie
  \editionMod jisB 55 0/1 fugue.four.Voice.D \hide MultiMeasureRest
  \editionMod jisB 60 0/1 fugue.four.Voice.D \override MultiMeasureRest.transparent = ##f
  \editionMod jisB 56 1/2 fugue.four.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod jisB 70 0/1 fugue.four.Voice.D \hide MultiMeasureRest
  \editionMod jisB 72 0/1 fugue.four.Voice.D \override MultiMeasureRest.transparent = ##f
  \editionMod jisB 72 1/2 fugue.four.Voice.B \shape #'((-1 . -0.5)(-1 . -0.5)(1 . -0.5)(1 . -0.5)) Tie
  \editionMod jisB 78 0/1 fugue.four.Voice.C \small %\hide MultiMeasureRest
  \editionMod jisB 81 0/1 fugue.four.Voice.C \normalsize %\override MultiMeasureRest.transparent = ##f
  \editionMod jisB 78 0/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 79 1/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 85 1/2 fugue.four.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 91 0/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 92 1/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 99 0/2 fugue.four.Voice.C \shape #'((-1 . -1.5)(-1 . -1.75)(0 . -1.75)(0 . -1.5)) Tie
  \editionMod jisB 99 3/4 fugue.four.Voice.B \shape #'((0.75 . 0.5)(0.75 . 0.75)(-0.75 . 0.75)(-0.75 . 0.5)) Tie
  \editionMod jisB 101 1/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod jisB 101 1/2 fugue.four.Voice.B \shape #'((0 . -0.25)(0 . 0)(-0.5 . 0)(-0.5 . -0.25)) Tie
  \editionMod jisB 102 1/2 fugue.four.Voice.B \shape #'(((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) ((0 . 0)(0 . 0)(-1 . 0)(-1 . 0))) Tie
  \editionMod jisB 105 1/2 fugue.four.Voice.B \once\tieDown
  \editionMod jisB 105 1/2 fugue.four.Voice.B \shape #'((0.75 . 0.5)(0.75 . 0.75)(-1 . 0.75)(-1 . 0.5)) Tie
  \editionMod jisB 106 0/1 fugue.four.Voice.E \shape #'( ((-1 . -0.25)(-1 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(1 . -0.25)(1 . -0.25)) ) Tie
  \editionMod jisB 108 1/2 fugue.four.Voice.A \shape #'((0 . 1)(0 . 1.5)(1 . 1.5)(1 . 1)) Tie
  \editionMod jisB 110 0/1 fugue.four.Voice.E \shape #'(((-1 . -0.5)(-1 . -0.5)(0 . -0.5)(0 . -0.5)) ((0 . -0.5)(0 . -0.5)(1 . -0.5)(1 . -0.5))) Tie
  \editionMod jisB 110 1/2 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod jisB 111 0/1 fugue.four.Voice.B \shape #'((1 . -0.5)(0 . 0)(0 . 0)(-0.75 . -0.5)) Tie
  \editionMod jisB 112 0/1 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod jisB 112 0/1 fugue.four.Voice.E \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod jisB 113 0/1 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod jisB 113 0/1 fugue.four.Voice.E \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod jisB 114 0/1 fugue.four.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod jisB 114 0/1 fugue.four.Voice.B \shape #'((0 . 0)(0 . 0)(-1 . 0)(-1 . 0)) Tie
  \editionMod jisB 114 0/1 fugue.four.Voice.E \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie

%prelude five
  \editionMod jisB 3  0/1 prelude.five.Score \break
  \editionMod jisB 27 0/1 prelude.five.Voice.D \shape #'((-1 . -0.5)(-0.5 . -0.5)(0.5 . -0.5)(1 . -0.5)) Tie
  \editionMod jisB 28 0/1 prelude.five.Voice.D \shape #'((-1 . -0.5)(-0.5 . -0.5)(0.5 . -0.5)(1 . -0.5)) Tie
  \editionMod jisB 32 6/16 prelude.five.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5)) Tie

%fugue five
  \editionMod jisB 3 3/4 fugue.five.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 5 1/4 fugue.five.Voice.B \shape #'(((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0))((-0.25 . 0)(-0.25 . -0.25)(0 . -0.25)(0 . 0))) Tie
  \editionMod jisB 5 1/2 fugue.five.Score  \bar ""
  \editionMod jisB 15 1/4 fugue.five.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod jisB 15 2/4 fugue.five.Voice.B \shape #'((1 . 1)(1 . 1)(0 . 1)(0 . 1)) Tie
  \editionMod jisB 15 2/4 fugue.five.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 16 1/2 fugue.five.Score  \bar ""
  \editionMod jisB 16 2/8 fugue.five.Voice.B \once\override Beam.positions =  #'(-3.75 . -4.25)
  \editionMod jisB 16 2/8 fugue.five.Voice.C \once\override Beam.positions =  #'(-5.25 . -6)
  \editionMod jisB 24 1/2 fugue.five.Score  \bar ""
  

%prelude six
  \editionMod jisB 15 1/2 prelude.six.Voice.B \shape #'((0 . -0.25)(-2 . 0)(2 . 0)(0 . -0.25)) Tie
  \editionMod jisB 20 3/8 prelude.six.Voice.D \shape #'((-0.75 . -0.5)(-0.75 . -0.75)(0 . -0.75)(0 . -0.5)) Tie
  \editionMod jisB 20 1/2 prelude.six.Voice.D \shape #'((-0.75 . 0)(-0.75 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 23 0/2 prelude.six.Voice.D \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 23 1/2 prelude.six.Voice.D \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 25 1/2 prelude.six.Voice.F \shape #'((0 . 0.5)(0 . 1.5)(0 . 1.5)(0 . 0.5)) Tie

%fugue six
  \editionMod jisB 7  1/8 fugue.six.Voice.C \shape #'((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 8  1/4 fugue.six.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 19 0/2 fugue.six.Voice.A \shape #'(((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0))((0 . 0)(0 . 0)(0 . 0)(0 . 0))) Tie
  \editionMod jisB 25  0/4 fugue.six.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod jisB 28  2/4 fugue.six.Voice.A \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5))) Tie
  \editionMod jisB 30  1/8 fugue.six.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(1 . 0.5)(1 . 0.5)) Tie
  \editionMod jisB 36  1/8 fugue.six.Voice.A \shape #'((-1 . 0.5)(-1 . 0.75)(1 . 0.75)(1 . 0.5)) Tie
  \editionMod jisB 41  0/2 fugue.six.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 42  0/4 fugue.six.Voice.A \shape #'((0 . 1)(0 . 1)(0.75 . 1)(0.75 . 1)) Tie

%prelude seven
  \editionModList jisB prelude.seven.Score \break #'(3 5 7 9 12 16 20 23 26 29 31  37 40 43 46 49 52 55 58 61 64 67)
  % \editionModList jisB prelude.seven.Score \noBreak #'()
  % \editionMod jisB 1  0/1 prelude.seven.Voice.D \shape #'((0 . 0)(-0.75 . -0.75)(0.75 . -0.75)(0 . 0)) Tie %Doesn't work? Placed in file (prelude07.ily).
  \editionMod jisB 2  0/1 prelude.seven.Voice.D \shape #'((0 . 0)(-0.5 . -0.25)(0.5 . -0.25)(0 . 0)) Tie
  \editionMod jisB 2  1/2 prelude.seven.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 7  0/2 prelude.seven.Voice.A \shape #'((-1 . 0.25)(-1 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod jisB 8  0/2 prelude.seven.Voice.D \shape #'(((-1 . -0.25)(-2 . -0.5)(1 . -0.5)(0 . -0.25)) ((0 . -0.5)(0 . -0.75)(1 . -0.75)(1 . -0.5)))Tie
  \editionMod jisB 9  0/2 prelude.seven.Voice.D \shape #'((0 . 0)(-1 . -0.5)(1 . -0.5)(0 . 0)) Tie
  \editionMod jisB 9  1/2 prelude.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 10 3/4 prelude.seven.Voice.D \shape #'((-0.75 . -0.25)(-0.75 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 12 3/4 prelude.seven.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 15 0/1 prelude.seven.Voice.D \shape #'(((-1 . -0.25)(-1 . 0.125)(0 . 0.125)(0 . -0.25)) ((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25))) Tie
  \editionMod jisB 18 1/2 prelude.seven.Voice.C \shape #'((0 . 1)(0 . 1)(1 . 1)(1 . 1)) Tie
  \editionMod jisB 19 1/2 prelude.seven.Voice.B \shape #'(((-1 . -0.25)(-1 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)))Tie
  \editionMod jisB 29 0/4 prelude.seven.Voice.D \shape #'((0 . 0)(-0.5 . -0.25)(0.5 . -0.25)(0 . 0)) Tie
  \editionMod jisB 29 2/4 prelude.seven.Voice.C \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 30 2/4 prelude.seven.Voice.C \shape #'(((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) ((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5))) Tie
  \editionMod jisB 31 0/4 prelude.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) Tie
  \editionMod jisB 31 0/4 prelude.seven.Voice.B \once\override Stem.length = #6
  \editionMod jisB 33 1/2 prelude.seven.Score   { \bar""\allowPageTurn }
  \editionMod jisB 33 0/2 prelude.seven.Voice.B \shape #'(((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0))((-0.5 . 0)(-0.5 . 0)(0 . 0)(0 . 0))) Tie
  \editionMod jisB 33 0/2 prelude.seven.Voice.C \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0))((-0.5 . 0)(-0.5 . 0)(0 . 0)(0 . 0))) Tie
  \editionMod jisB 36 1/4 prelude.seven.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 36 2/4 prelude.seven.Voice.A \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0 . 1.25)(0 . 1.75)(2 . 1.75)(2 . 1.25))) Tie
  %\editionMod jisB 37 3/16 prelude.seven.Voice.A \once\omit Accidental
  \editionMod jisB 39 1/2 prelude.seven.Voice.A \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod jisB 42 3/4 prelude.seven.Voice.B \shape #'(((0 . -0.75)(-0.5 . -1.5)(0.5 . -1.5)(0 . -0.75)) ((0 . 0)(0 . 0)(0 . 0)(0 . 0))) Tie
  \editionMod jisB 43 4/16 prelude.seven.Voice.A \once\override VoiceFollower.bound-details = #'((right (attach-dir . 0) (padding . 1)) (left (attach-dir . 0) (padding . 3.5)))
  \editionMod jisB 46 0/2 prelude.seven.Voice.A \shape #'((-0.3 . 2)(-0.3 . 1.75)(0 . 1.75)(0 . 2)) Tie
  \editionMod jisB 56 1/4 prelude.seven.Voice.B \shape #'((-0.5 . -2)(-0.5 . -2)(0 . -2)(0 . -2)) Tie
  \editionMod jisB 57 3/4 prelude.seven.Voice.A \shape #'((0 . 0.25)(0 . 0.75)(0 . 0.75)(0 . 0.25)) Tie
  \editionMod jisB 63 1/4 prelude.seven.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 63 3/4 prelude.seven.Voice.C \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod jisB 65 3/4 prelude.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 67 1/4 prelude.seven.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 68 0/1 prelude.seven.Voice.D \shape #'((0 . 0)(-1 . -0.25)(1 . -0.25)(0 . 0)) Tie
  \editionMod jisB 69 0/1 prelude.seven.Voice.D \shape #'((0 . 0)(-1 . -0.25)(1 . -0.25)(0 . 0)) Tie

%fugue seven
  \editionMod jisB 10 7/8 fugue.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.25 . 0.5)(0.25 . 0.5)) Tie
  \editionMod jisB 20 1/3 fugue.seven.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 35 3/4 fugue.seven.Voice.A \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 36 3/8 fugue.seven.Voice.E \shape #'((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 36 11/16 fugue.seven.Voice.E \shape #'((-0.25 . 0)(-0.25 . 0)(0 . 0)(0 . 0)) Tie
  \editionMod jisB 37 3/16 fugue.seven.Voice.E \shape #'((0 . 0)(0 . 0)(0.25 . 0)(0.25 . 0)) Tie
  \editionMod jisB 10 7/8 fugue.seven.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie

%prelude 8
  \editionMod jisB 6 0/2 prelude.eight.Voice.A \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod jisB 9 0/2 prelude.eight.Voice.A \once \offset positions #'(-0.5 . 0.25) Staff.Arpeggio
  \editionMod jisB 10 0/2 prelude.eight.Voice.B \once \offset positions #'(-0.5 . 0.25) Staff.Arpeggio
  %\editionMod jisB 10 2/2 prelude.eight.Voice.A \once \offset positions #'(-0.5 . 0) Staff.Arpeggio
  \editionMod jisB 11 0/2 prelude.eight.Voice.A \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  %\editionMod jisB 11 1/2 prelude.eight.Voice.D \once \offset positions #'(-0.5 . 0.25) Staff.Arpeggio
  \editionMod jisB 12 0/2 prelude.eight.Voice.C \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  \editionMod jisB 12 1/2 prelude.eight.Voice.C \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  \editionMod jisB 12 2/2 prelude.eight.Voice.C \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  %\editionMod jisB 17 1/2 prelude.eight.Voice.B \once \offset positions #'(-0.5 . 0.25) PianoStaff.Arpeggio
  \editionMod jisB 24 0/2 prelude.eight.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod jisB 24 0/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod jisB 24 1/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod jisB 24 2/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod jisB 25 0/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod jisB 25 1/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  \editionMod jisB 25 2/2 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) PianoStaff.Arpeggio
  % \editionMod jisB 26 0/4 prelude.eight.Voice.A \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod jisB 26 0/4 prelude.eight.Voice.C \once \offset positions #'(-0.75 . 0.25) Staff.Arpeggio
  \editionMod jisB 28 2/2 prelude.eight.Voice.A \once \offset positions #'(-0.25 . -0.125) PianoStaff.Arpeggio
  \editionMod jisB 29 0/1 prelude.eight.Voice.A \shape #'((-0.75 . 0.5)(-0.75 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 30 0/1 prelude.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 30 1/2 prelude.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 39 0/1 prelude.eight.Voice.A \shape #'((-0.75 . 0.5)(-1 . 0.75)(1 . 0.75)(0.75 . 0.5)) Tie

%fugue eight
  \editionMod jisB 44 0/1 fugue.eight.Score   \allowPageTurn
  \editionMod jisB 47 1/2 fugue.eight.Staff   \bar""
  % \editionModList jisB    fugue.eight.Score   \pageBreak #'(22 44 66)
  % \editionModList jisB    fugue.eight.Score   \break #'(22 26 30 33 36 40)
  % \editionModList jisB    fugue.eight.Score   \break #'(44 51    54 58 62)
  \editionMod jisB 9  3/4 fugue.eight.Voice.C \shape #'((-0.75 . 0.5)(-0.75 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 14 3/4 fugue.eight.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 16 3/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 20 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 21 7/8 fugue.eight.Voice.A \once\tieDown
  \editionMod jisB 23 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 45 1/4 fugue.eight.Voice.A \once \tieDown
  \editionMod jisB 45 1/4 fugue.eight.Voice.A \shape #'((-0.25 . 0)(-0.25 . 0)(0 . 0)(0 . 0)) Tie
  \editionMod jisB 46 3/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.75)(0.75 . 0.75)(0.75 . 0.5)) Tie
  \editionMod jisB 47 3/4 fugue.eight.Voice.B \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod jisB 56 0/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 60 7/8 fugue.eight.Voice.B \shape #'((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 62 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 71 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 72 1/4 fugue.eight.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 75 3/4 fugue.eight.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 76 2/4 fugue.eight.Voice.C \shape #'(((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0.5 . -0.25)(0.5 . -0.25))) Tie
  \editionMod jisB 78 3/4 fugue.eight.Voice.C \shape #'((-0.5 . 0.25)(-0.5 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

%prelude nine
  \editionModList jisB prelude.nine.Score \break #'(3 5 7 9 12 14 16 18 20 22)
  %\editionMod jisB 1 0/1 prelude.nine.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie % Failed.
  \editionMod jisB 2 0/1 prelude.nine.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  % %\editionMod jisB 2 0/1 prelude.nine.Voice.D \once\override Tie.stencil = #flare-tie
  \editionMod jisB 2 0/1 prelude.nine.Voice.D \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 4 0/1 prelude.nine.Voice.A \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 5 0/1 prelude.nine.Voice.D \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 6 6/8 prelude.nine.Voice.D \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 6 9/8 prelude.nine.Voice.A \shape #'(((0 . 0.25)(0 . 0.5)(0 . 0.25)(0 . 0.25)) ((0 . 1)(0 . 1.5)(1.75 . 1.5)(1.75 . 1)))Tie
  \editionMod jisB 7 6/8 prelude.nine.Voice.D \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 11 0/8 prelude.nine.Voice.E \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 11 6/8 prelude.nine.Voice.E \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 11 9/8 prelude.nine.Voice.F \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 12 0/1 prelude.nine.Score   \pageBreak
  \editionMod jisB 12 3/8 prelude.nine.Voice.F \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 13 0/8 prelude.nine.Voice.F \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 15 0/8 prelude.nine.Voice.H \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 15 6/8 prelude.nine.Voice.H \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 16 0/8 prelude.nine.Voice.H \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 19 0/8 prelude.nine.Voice.H \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 19 3/8 prelude.nine.Voice.G \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 19 6/8 prelude.nine.Voice.G \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 19 0/8 prelude.nine.Voice.H \shape #'(((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0))) Tie %((0 . -0.5)(0 . -0.75)(0 . -0.75)(0 . -0.5))
  \editionMod jisB 20 0/8 prelude.nine.Voice.H \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 21 6/8 prelude.nine.Voice.H \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie

%fugue nine
  \editionMod jisB 15 0/1 fugue.nine.Score  \pageBreak
  \editionModList jisB fugue.nine.Score      \break #'(6 8 10 12) 
  \editionMod jisB 3  1/2 fugue.nine.Staff   \bar""
  \editionMod jisB 4  1/4 fugue.nine.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 10 1/4 fugue.nine.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 11 1/4 fugue.nine.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 11 2/4 fugue.nine.Voice.B \shape #'(((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) ((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5))) Tie
  \editionMod jisB 14 3/4 fugue.nine.Voice.B \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod jisB 18 3/4 fugue.nine.Voice.A \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0.75 . -0.5)(0.75 . -0.5)) Tie
  \editionMod jisB 26 3/8 fugue.nine.Voice.B \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie

%prelude ten
  \editionMod jisB 1  0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) Tie
  \editionMod jisB 6  0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 8  0/4 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 10 0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 11 11/16 prelude.ten.Voice.A \shape #'((-0.25 . 0.25)(-0.25 . 0)(0.25 . 0)(0.25 . 0.25)) Tie
  \editionMod jisB 12 2/4 prelude.ten.Voice.A \once\override Script.X-offset = #1.25
  \editionMod jisB 13 0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 15 0/4 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod jisB 16 0/4 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 17 0/4 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 18 0/4 prelude.ten.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 19 2/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 20 0/4 prelude.ten.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 20 2/4 prelude.ten.Voice.A \once\override Script.X-offset = #1.25
  \editionMod jisB 21 0/4 prelude.ten.Score   \pageBreak
  \editionMod jisB 21 0/4 prelude.ten.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 22 0/4 prelude.ten.Voice.A \shape #'((-1 . 0.5)(-1 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 30 1/2 prelude.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie

%fugue ten
  \editionMod jisB 4  0/4 fugue.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 6  2/4 fugue.ten.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod jisB 8  2/4 fugue.ten.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 23 0/4 fugue.ten.Voice.B \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 25 0/4 fugue.ten.Voice.A \shape #'((0 . 0)(0 . 0)(0.25 . 0)(0.25 . 0)) Tie
  \editionMod jisB 25 2/4 fugue.ten.Voice.B \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 27 2/4 fugue.ten.Voice.B \shape #'(((0 . 0)( . 0.25)(0 . 0.25)(0 . 0)) ((0 . 1)(0 . 1.5)(1.75 . 1.5)(1.75 . 1))) Tie

%prelude eleven
  \editionMod jisB 3  6/8 prelude.eleven.Voice.B \once\override Script.X-offset = #1.25
  \editionMod jisB 9  6/8 prelude.eleven.Voice.B \once\override Script.padding = #0.75
  \editionMod jisB 10 6/8 prelude.eleven.Voice.B \once\override Script.padding = #0.75
  \editionMod jisB 14 0/8 prelude.eleven.Voice.B \once\override Script.X-offset = #1.25
  \editionMod jisB 13 6/8 prelude.eleven.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 17 0/8 prelude.eleven.Voice.A \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie

%fugue eleven
  \editionMod jisB 16 0/8 fugue.eleven.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 31 0/8 fugue.eleven.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 33 0/8 fugue.eleven.Voice.B \shape #'((0 . 0.25)(-0.5 . 0.25)(0.5 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 31 0/8 fugue.eleven.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 34 0/8 fugue.eleven.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 36 0/8 fugue.eleven.Voice.C \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0))((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod jisB 41 0/8 fugue.eleven.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 44 0/8 fugue.eleven.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 49 0/8 fugue.eleven.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 58 0/8 fugue.eleven.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 62 0/8 fugue.eleven.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 64 0/8 fugue.eleven.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 65 2/8 fugue.eleven.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 68 0/8 fugue.eleven.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 70 2/8 fugue.eleven.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%prelude twelve
  \editionMod jisB 5 0/1 prelude.twelve.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 6 3/16 prelude.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 7 1/8 prelude.twelve.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 11 1/2 prelude.twelve.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) Tie
  \editionMod jisB 12 0/4 prelude.twelve.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 12 7/16 prelude.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 12 5/8 prelude.twelve.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 13 3/16 prelude.twelve.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 16 3/16 prelude.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 17 0/1 prelude.twelve.Voice.D \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod jisB 18 0/1 prelude.twelve.Voice.D \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod jisB 19 0/1 prelude.twelve.Voice.D \shape #'(((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) ((0 . -0.25)(0 . -0.75)(0 . -0.75)(0 . -0.25))) Tie
  \editionMod jisB 20 0/1 prelude.twelve.Voice.D \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie

%fugue twelve
  \editionMod jisB 9 1/4 fugue.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 12 1/2 fugue.twelve.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 13 1/4 fugue.twelve.Voice.A \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
  \editionMod jisB 16 1/4 fugue.twelve.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod jisB 19 2/4 fugue.twelve.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 22 1/4 fugue.twelve.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 23 1/4 fugue.twelve.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 24 1/4 fugue.twelve.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie  
  \editionMod jisB 30 1/4 fugue.twelve.Voice.B \shape #'((0 . -0.75)(0 . -0.5)(0 . -0.5)(0 . -0.75)) Tie
  \editionMod jisB 31 0/4 fugue.twelve.Score   \allowPageTurn
  \editionMod jisB 33 2/4 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 37 3/4 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 38 0/4 fugue.twelve.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 38 3/4 fugue.twelve.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod jisB 40 7/8 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 43 3/4 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  % \editionMod jisB 43 3/4 fugue.twelve.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 50 1/4 fugue.twelve.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

%prelude thirteen
  \editionMod jisB 2 11/16 prelude.thirteen.Voice.A \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0.5 . -0.25)(0.5 . -0.25)) Tie
  \editionMod jisB 4  11/16 prelude.thirteen.Voice.A \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 7  11/16 prelude.thirteen.Voice.A \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 10 11/16 prelude.thirteen.Voice.A \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 12 0/4   prelude.thirteen.Voice.A \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 12 6/16   prelude.thirteen.Voice.B \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0))((0 . -1)(0 . -0.75)(0 . -0.75)(0 . -1))) Tie
  \editionMod jisB 19 0/4   prelude.thirteen.Voice.A \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 23 11/16 prelude.thirteen.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod jisB 24 6/16  prelude.thirteen.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie

%fugue thirteen
  \editionMod jisB 9  3/4 fugue.thirteen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25))) Tie
  \editionMod jisB 10 0/4 fugue.thirteen.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 21 3/4 fugue.thirteen.Voice.B \shape #'( (0 . -0.5) (0 . -1.75) (0 . -1.75) (0 . -0.5) ) Tie
  \editionMod jisB 24 0/4 fugue.thirteen.Voice.B \shape #'( (-0.75 . -0.5) (-0.5 . -1) (0 . -1) (0 . -0.5) ) Tie
  \editionMod jisB 25 3/4 fugue.thirteen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25))((0.25 . 0.25)(0.25 . 0.625)(2 . 0.625)(2 . 0.25))) Tie
  \editionMod jisB 28 3/8 fugue.thirteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 32 7/8 fugue.thirteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%prelude fourteen
  \editionMod jisB 13 0/4 prelude.fourteen.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 22 0/4 prelude.fourteen.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie

%fugue fourteen
  \editionMod jisB 5 2/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 5 3/4 fugue.fourteen.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 8 3/4 fugue.fourteen.Voice.D \shape #'(((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 11 3/4 fugue.fourteen.Voice.D \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 12 5/4 fugue.fourteen.Voice.C \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)(0 . 0))((0 . -0.5)(0 . -0.375)(0.125 . -0.375)(0.125 . -0.5))) Tie
  \editionMod jisB 14 2/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 15 3/4 fugue.fourteen.Voice.B \shape #'(((-0.5 . -0.25)(-0.5 . -0.125)(0 . -0.125)(0 . -0.25)) ((0 . -0.25)(0 . -0.125)(0 . -0.125)(0 . -0.25))) Tie
  \editionMod jisB 16 3/4 fugue.fourteen.Voice.D \shape #'((0 . 0.25)(0 . 0.625)(0 . 0.625)(0 . 0.25)) Tie
  \editionMod jisB 17 2/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 18 5/4 fugue.fourteen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25))) Tie
  \editionMod jisB 19 0/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 20 0/1 fugue.fourteen.Voice.C \hide MultiMeasureRest
  \editionMod jisB 28 0/1 fugue.fourteen.Voice.C \override MultiMeasureRest.transparent = ##f
  \editionMod jisB 23 2/4 fugue.fourteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 25 3/4 fugue.fourteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 32 1/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 32 3/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 32 3/4 fugue.fourteen.Voice.D \shape #'((0 . 0.125)(0 . 0)(0 . 0)(0 . 0.125)) Tie
  \editionMod jisB 34 0/4 fugue.fourteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 35 0/4 fugue.fourteen.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 35 0/4 fugue.fourteen.Voice.D \shape #'((0 . 0.125)(0 . 0)(0 . 0)(0 . 0.125)) Tie
  \editionMod jisB 37 3/4 fugue.fourteen.Voice.D \shape #'(((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0))) Tie
  \editionMod jisB 38 0/4 fugue.fourteen.Voice.D \shape #'(((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0))) Tie
  \editionMod jisB 38 3/4 fugue.fourteen.Voice.D \shape #'(((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0))) Tie
  \editionMod jisB 39 2/4 fugue.fourteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%prelude fifteen
%fugue fifteen
  \editionMod jisB 44 0/1 fugue.fifteen.Score   \allowPageTurn
  \editionMod jisB 15 0/2 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 17 1/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 17 3/8 fugue.fifteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 32 1/8 fugue.fifteen.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0.5 . -0.25)(0.5 . -0.25)) Tie
  \editionMod jisB 41 3/8 fugue.fifteen.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 47 0/4 fugue.fifteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 49 1/8 fugue.fifteen.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 56 0/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 57 0/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 62 0/8 fugue.fifteen.Voice.C \shape #'(((-0.5 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 63 0/8 fugue.fifteen.Voice.C \shape #'((-0.5 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 64 0/8 fugue.fifteen.Voice.C \shape #'((-0.5 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 64 0/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 66 1/8 fugue.fifteen.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.25 . 0.25)(0.25 . 0.25)) Tie
  \editionMod jisB 69 3/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 70 0/8 fugue.fifteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 85 0/8 fugue.fifteen.Voice.D \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie

%prelude sixteen
  \editionMod jisB 4 15/16 prelude.sixteen.Voice.C \shape #'(((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5)) ((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5))) Tie
  \editionMod jisB 8 5/8  prelude.sixteen.Voice.E \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 9 1/4  prelude.sixteen.Voice.E \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 9 1/2  prelude.sixteen.Voice.F \shape #'((-0.5 . -0.25)(-0.25 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 11 0/2 prelude.sixteen.Voice.B \shape #'((0 . 0)(0 . -0.5)(0 . -0.5)(0 . 0)) Tie
  \editionMod jisB 12 1/4 prelude.sixteen.Voice.E \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  % \editionMod jisB 12 1/2 prelude.sixteen.Voice.F \shape #'((0 . 0.325)(0 . 0.75)(0 . 0.75)(0 . 0.325)) Tie
  \editionMod jisB 18 1/2 prelude.sixteen.Voice.H \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie

%fugue sixteen
  % \editionMod jisB 9  1/4  fugue.sixteen.Voice.A \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 15 3/4  fugue.sixteen.Voice.B \shape #'((-0.375 . -0.75)(-0.25 . -0.75)(0 . -0.75)(0 . -0.75)) Tie
  \editionMod jisB 17 3/8  fugue.sixteen.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 27 0/4  fugue.sixteen.Voice.A \shape #'((0 . 0.25)(0 . 0)(0.75 . 0)(0.75 . 0.25)) Tie
  \editionMod jisB 30 1/2  fugue.sixteen.Voice.B \shape #'((0 . -0.375)(0 . -0.375)(0 . -0.375)(0 . -0.375)) Tie
  \editionMod jisB 30 1/2  fugue.sixteen.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 30 1/2  fugue.sixteen.Voice.D \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 31 0/2  fugue.sixteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

%prelude seventeen
  \editionMod jisB 36 1/4 prelude.seventeen.Voice.A \shape #'((-1 . 0.25)(-1 . 0.25)(1 . 0.25)(1 . 0.25)) Tie
  \editionMod jisB 42 1/8 prelude.seventeen.Voice.A \once\override Script.padding = #0.5

%fugue seventeen
  \editionMod jisB 3 3/4 fugue.seventeen.Voice.C \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 4 0/4 fugue.seventeen.Voice.D \shape #'((-0.75 . 0.25)(-0.75 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 6 0/1 fugue.seventeen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 8 1/4 fugue.seventeen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 18 3/4 fugue.seventeen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25))((0 . 0.25)(0 . 0.25)(0.25 . 0.25)(0.25 . 0.25))) Tie
  \editionMod jisB 23 0/4 fugue.seventeen.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 30 0/4 fugue.seventeen.Voice.D \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
%prelude eighteen
  \editionMod jisB 8 0/4 prelude.eighteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 10 0/4 prelude.eighteen.Voice.B \shape #'((-0.5 . 0.25)(-0.5 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 15 0/4 prelude.eighteen.Voice.A \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0.5 . -0.25)(0.5 . -0.25)) Tie
  \editionMod jisB 19 0/4 prelude.eighteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 19 3/8 prelude.eighteen.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 20 0/4 prelude.eighteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 20 3/8 prelude.eighteen.Voice.C \shape #'((0 . -0.125)(0 . 0)(0 . 0)(0 . -0.125)) Tie
  \editionMod jisB 25 0/8 prelude.eighteen.Voice.A \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie

%fugue eighteen
  \editionMod jisB 6 1/2 fugue.eighteen.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 14 1/2 fugue.eighteen.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 28 1/2 fugue.eighteen.Voice.B \shape #'(((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) ((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5))) Tie
  \editionMod jisB 36 1/2 fugue.eighteen.Voice.B \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 37 0/2 fugue.eighteen.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie

%prelude nineteen
  \editionMod jisB 18 3/8 prelude.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie

%fugue nineteen
  \editionMod jisB 28 0/1 fugue.nineteen.Score {\allowPageTurn}
  % \editionModList jisB fugue.nineteen.Score  \break #'(26 29 31 33 35 37 40 43 45 47 49)
  % \editionMod jisB 26 0/8 fugue.nineteen.Score \allowPageTurn
  \editionMod jisB 4 5/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 6 6/8 fugue.nineteen.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod jisB 11 0/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 11 6/8 fugue.nineteen.Voice.C \shape #'((0 . -0.25)(0 . -0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 12 0/8 fugue.nineteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 12 4/8 fugue.nineteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 13 6/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 17 0/8 fugue.nineteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 17 5/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 17 6/8 fugue.nineteen.Voice.B \shape #'(((-0.75 . -0.25)(-0.75 . 0)(0 . 0)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 18 0/8 fugue.nineteen.Voice.C \shape #'((-0.75 . 0.5)(-0.75 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 19 0/8 fugue.nineteen.Voice.C \shape #'((-0.75 . -0.5)(-0.75 . -0.5)(0.75 . -0.5)(0.75 . -0.5)) Tie
  \editionMod jisB 20 6/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 33 4/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 36 3/8 fugue.nineteen.Voice.B \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 41 5/8 fugue.nineteen.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 44 8/8 fugue.nineteen.Voice.B \shape #'(((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 47 0/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 53 0/8 fugue.nineteen.Voice.A \shape #'((0 . 0.25)(0 . 0)(0.75 . 0)(0.75 . 0.25)) Tie

%prelude twenty
  \editionMod jisB 28 0/4 prelude.twenty.Score  \noBreak
  \editionMod jisB 7 0/4 prelude.twenty.Voice.A \shape #'((0 . -0.25)(0 . 0)(0 . 0)(0 . -0.25)) Tie
  \editionMod jisB 11 0/4 prelude.twenty.Voice.A \shape #'((0 . 0.25)(0 . 0)(0.75 . 0)(0.75 . 0.25)) Tie
  \editionMod jisB 13 6/8 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 14 0/8 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 14 3/8 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 14 6/8 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 15 0/4 prelude.twenty.Voice.B \shape #'((0 . -0.125)(0 . 0)(0 . 0)(0 . -0.125)) Tie
  \editionMod jisB 16 2/8 prelude.twenty.Voice.D \shape #'((0 . -0.5)(0 . -.25)(-0.75 . -0.25)(-0.75 . -0.5)) Tie
  \editionMod jisB 16 3/8 prelude.twenty.Voice.D \shape #'((1 . -1)(1 . -0.75)(-1 . -0.75)(-1 . -1)) Tie
  \editionMod jisB 16 5/16 prelude.twenty.Voice.C \shape #'((-0.75 . -0.5)(-0.75 . -0.75)(0 . -0.75)(0 . -0.5)) Tie
  \editionMod jisB 16 3/8 prelude.twenty.Voice.C \shape #'((0 . 0.25)(0 . 0)(0 . 0)(0 . 0.25)) Tie
  \editionMod jisB 18 3/8 prelude.twenty.Voice.D \shape #'((0 . -0.5)(0 . -.75)(-1 . -0.75)(-1 . -0.5)) Tie
  \editionMod jisB 20 0/8 prelude.twenty.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod jisB 26 0/8 prelude.twenty.Voice.B \shape #'((0 . 0.5)(0 . 0.75)(0.75 . 0.75)(0.75 . 0.5)) Tie
  \editionMod jisB 26 0/8 prelude.twenty.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(-0.5 . -0.25)(-0.5 . -0.25)) Tie
  \editionMod jisB 26 6/8 prelude.twenty.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 27 0/8 prelude.twenty.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 27 7/16 prelude.twenty.Voice.C \shape #'((-0.5 . -0.25)(-0.5 . -0.5)(0 . -0.5)(0 . -0.25)) Tie
  \editionMod jisB 27 8/16 prelude.twenty.Voice.C \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 27 12/16 prelude.twenty.Voice.C \shape #'((0 . 0.125)(0 . 0)(0 . 0)(0 . 0.125)) Tie

%fugue twenty
  \editionMod jisB 36 0/8 fugue.twenty.Score \allowPageTurn
  \editionMod jisB 62 0/8 fugue.twenty.Score \allowPageTurn
  \editionMod jisB 8 7/8 fugue.twenty.Voice.B \shape #'((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 10 1/4 fugue.twenty.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 12 3/8 fugue.twenty.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 22 7/8 fugue.twenty.Voice.B \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 23 7/8 fugue.twenty.Voice.B \shape #'((-0.5 . -1)(-0.5 . -1)(0 . -1)(0 . -1)) Tie
  \editionMod jisB 24 0/2 fugue.twenty.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 35 1/2 fugue.twenty.Voice.D \shape #'(((-0.5 . 0.25)(-0.5 . 0.25)(0 . 0.25)(0 . 0.25))((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25))) Tie
  \editionMod jisB 39 7/8 fugue.twenty.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
    \editionMod jisB 42 3/4 fugue.twenty.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
    \editionMod jisB 43 1/2 fugue.twenty.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
    \editionMod jisB 43 1/2 fugue.twenty.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
    \editionMod jisB 50 0/2 fugue.twenty.Voice.D \shape #'((-0.25 . -1.5)(-0.25 . -1.25)(0 . -1.25)(0 . -1.5)) Tie
  \editionMod jisB 59 3/4 fugue.twenty.Voice.D \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 60 1/2 fugue.twenty.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 61 0/2 fugue.twenty.Voice.C \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 61 0/2 fugue.twenty.Voice.D \shape #'((-0.75 . -0.25)(-0.75 . -0.5)(0 . -0.5)(0 . -0.25)) Tie
  \editionMod jisB 61 3/4 fugue.twenty.Voice.B \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 64 1/2 fugue.twenty.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 70 1/2 fugue.twenty.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  %\editionMod jisB 73 3/4 fugue.twenty.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod jisB 74 0/2 fugue.twenty.Voice.A \shape #'((0 . -0.375)(-1 . 0.5)(1 . 0.5)(0 . -0.375)) Tie
  \editionMod jisB 75 1/4 fugue.twenty.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 83 1/2 fugue.twenty.Voice.H \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(1 . -0.25)(1 . -0.25))) Tie
  \editionMod jisB 84 0/2 fugue.twenty.Voice.H \shape #'(((-1 . -0.25)(-1 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(1 . -0.25)(1 . -0.25))) Tie
  \editionMod jisB 85 0/2 fugue.twenty.Voice.H \shape #'(((-1 . -0.25)(-1 . -0.75)(1 . -0.75)(1 . -0.25))) Tie
  \editionMod jisB 86 0/2 fugue.twenty.Voice.G \once\override Stem.length = #5.5
  \editionMod jisB 86 0/2 fugue.twenty.Voice.H \shape #'(((-1 . -0.25)(-1 . -0.75)(0.75 . -0.75)(0.75 . -0.25))) Tie

%prelude twentyone
  %
%fugue twentyone
  \editionMod jisB 35 2/4 fugue.twentyone.Voice.A \shape #'((-0.5 . 0.25)(-0.5 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie

%prelude twentytwo
  \editionMod jisB 3 0/4 prelude.twentytwo.Voice.B \once \override Beam.positions = #'(-2 . -2.25)
  \editionMod jisB 5 1/4 prelude.twentytwo.Voice.B \shape #'( (0.75 . 1) (0.75 . 0.75) (-1 . 0.75) (-1 . 1) ) Tie
  \editionMod jisB 5 2/4 prelude.twentytwo.Voice.A \once\override NoteColumn.force-hshift = #-0.5
  \editionMod jisB 5 2/4 prelude.twentytwo.Voice.B \once\shiftOff
  \editionMod jisB 5 2/4 prelude.twentytwo.Voice.B \once \override Beam.positions = #'(4.5 . 4)
  \editionMod jisB 5 1/4 prelude.twentytwo.Voice.C \shape #'( (0.75 . 1)(0.75 . 0.5)(-0.25 . 0.5)(-0.25 . 1) ) Tie
  \editionMod jisB 5 3/4 prelude.twentytwo.Voice.B \shape #'( (0 . -1) (0 . -0.75) (-1 . -0.75) (-1 . -1) ) Tie
  \editionMod jisB 5 3/4 prelude.twentytwo.Voice.C \shape #'( (0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0) ) Tie
  % \editionMod jisB 6 0/4 prelude.twentytwo.Voice.A \shape #'((0 . -0.5)(-0.5 . 0)(0 . 0)(0 . 0.5)) Tie
  \editionMod jisB 6 0/4 prelude.twentytwo.Voice.B \once \override NoteColumn.force-hshift = #0.75
  \editionMod jisB 6 3/4 prelude.twentytwo.Voice.B \once\tieDown
  \editionMod jisB 6 3/4 prelude.twentytwo.Voice.B \shape #'((1 . 1)(1 . 1)(0 . 1)(0 . 1)) Tie
  \editionMod jisB 7 0/4 prelude.twentytwo.Voice.D \shape #'((-1 . -0.25)(-1 . -1)(0 . -1)(0 . -0.25)) Tie

%fugue twentytwo
  \editionMod jisB 39 0/1 fugue.twentytwo.Staff \hide MultiMeasureRest
  \editionMod jisB 44 0/1 fugue.twentytwo.Staff \override MultiMeasureRest.transparent = ##f
  \editionMod jisB 13 2/4 fugue.twentytwo.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 16 2/4 fugue.twentytwo.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 17 3/4 fugue.twentytwo.Voice.C \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 20 1/2 fugue.twentytwo.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(1 . -0.25)(1 . -0.25)) Tie
  \editionMod jisB 21 1/2 fugue.twentytwo.Voice.B \shape #' ((0 . -0.25)(0 . 0)(-1.5 . 0)(-1.5 . -0.25)) Tie
  \editionMod jisB 23 0/1 fugue.twentytwo.Voice.B \shape #'((1 . -1.25)( 1 . -1.75 )(-1 . -1.75)(-1 . -1.25)) Tie
  \editionMod jisB 24 0/1 fugue.twentytwo.Voice.D \shape #'((-1 . 0.25)(-1 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  % \editionMod jisB 32 0/4 fugue.twentytwo.Voice.B \shape #'((0.75 . 0)(0.75 . 0)(0 . 0)(0 . 0)) Tie
  \editionMod jisB 32 0/1 fugue.twentytwo.Voice.B \shape #'(((0 . -0.125)(0 . -0.25)(0 . -0.25)(0 . -0.125)) ((0 . -0.435)(0 . -0.75)(1 . -0.75)(1 . -0.435))) Tie
  \editionMod jisB 32 1/4 fugue.twentytwo.Voice.C \once \override Beam.positions = #'(-0.75 . -1)
  \editionMod jisB 32 1/2 fugue.twentytwo.Voice.C \shape #'((0.5 . 1) (0 . 0.75) (0 . 0.75) (0 . 1)) Tie
  \editionMod jisB 32 1/2 fugue.twentytwo.Voice.C \shape #'(((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0 . 0.5)(0 . 0.5)(0 . 0.5)(0 . 0.5))) Tie
  \editionMod jisB 33 1/2 fugue.twentytwo.Voice.C \shape #'((0.75 . -0.25) (0.75 . 0.5) (0 . 0.5) (0 . 0)) Tie
  \editionMod jisB 33 1/2 fugue.twentytwo.Voice.C \once \tieUp
  \editionMod jisB 34 0/2 fugue.twentytwo.Voice.A \shape #'((-1 . 0.75)(0 . 2) (0 . 2)(1 . 0.75)) Tie
  \editionMod jisB 35 1/2 fugue.twentytwo.Voice.C \once\tieUp
  \editionMod jisB 35 1/2 fugue.twentytwo.Voice.C \shape #'((1.5 . 0)(1.5 . 0)(-1 . 0)(-1 . 0)) Tie
  \editionMod jisB 45 1/2 fugue.twentytwo.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 47 1/2 fugue.twentytwo.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 52 1/2 fugue.twentytwo.Voice.E \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 53 0/2 fugue.twentytwo.Voice.B \shape #'((1 . -0.5)(1 . -1)(-1 . -1)(-1 . -0.5)) Tie
  \editionMod jisB 53 1/2 fugue.twentytwo.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25))) Tie
  \editionMod jisB 65 1/2 fugue.twentytwo.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 71 1/4 fugue.twentytwo.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 73 0/4 fugue.twentytwo.Voice.B \shape #'((0 . -0.5)(0 . -0.75)(-0.75 . -0.75)(-0.75 . -0.5)) Tie

%prelude twentythree
  \editionMod jisB 3 1/4 prelude.twentythree.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 5 1/4 prelude.twentythree.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod jisB 12 1/2 prelude.twentythree.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie

%fugue twentythree
  \editionMod jisB 6  1/2 fugue.twentythree.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod jisB 15 1/2 fugue.twentythree.Voice.D \shape #'(((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 21 1/2 fugue.twentythree.Voice.C \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod jisB 23 3/8 fugue.twentythree.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
  \editionMod jisB 25 2/4 fugue.twentythree.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 28 1/2 fugue.twentythree.Voice.A \shape #'((0 . 0)(0 . 0.125)(0 . 0.125)(0 . 0)) Tie
  \editionMod jisB 30 1/2 fugue.twentythree.Voice.B \shape #'((0 . 0)(0 . -0.125)(0 . -0.125)(0 . 0)) Tie
  \editionMod jisB 33 5/8 fugue.twentythree.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie

%prelude twentyfour
  \editionMod jisB 4  3/4 prelude.twentyfour.Voice.B \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25))((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 8  3/4 prelude.twentyfour.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 34 0/4 prelude.twentyfour.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 46 7/8 prelude.twentyfour.Voice.B \shape #'((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25)) Tie

%fugue twentyfour
  \editionMod jisB 26 0/1 fugue.twentyfour.Score \allowPageTurn
  \editionMod jisB 51 0/1 fugue.twentyfour.Score \allowPageTurn
  \editionMod jisB 28 1/2 fugue.twentyfour.Score \bar""
  \editionMod jisB 69 1/2 fugue.twentyfour.Score \bar""
  \editionMod jisB 7  1/2 fugue.twentyfour.Voice.C \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 8  0/2 fugue.twentyfour.Voice.B \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 10 3/4 fugue.twentyfour.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 11 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 1)(0 . 1.5)(0 . 1.5)(0 . 1)) Tie
  \editionMod jisB 11 1/4 fugue.twentyfour.Voice.C \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 14 5/8 fugue.twentyfour.Voice.B \once\override Stem.length=#11
  \editionMod jisB 15 1/2 fugue.twentyfour.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 15 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 22 3/4 fugue.twentyfour.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod jisB 23 1/4 fugue.twentyfour.Voice.A \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0.75 . -0.25)(0.75 . -0.25)) Tie
  \editionMod jisB 24 0/4 fugue.twentyfour.Voice.B \once \tieUp
  \editionMod jisB 24 0/4 fugue.twentyfour.Voice.B \shape #'((0 . -0.25)(0 . -0.75)(0 . -0.75)(0 . -0.25)) Tie
  \editionMod jisB 26 7/8 fugue.twentyfour.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod jisB 28 1/8 fugue.twentyfour.Voice.B \shape #'((-0.5 . -0.25)(-0.5 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 36 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 36 1/2 fugue.twentyfour.Voice.C \shape #'(((0 . 0.25)(0 . -0.25)(0 . -0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25))) Tie
  \editionMod jisB 37 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 40 3/4 fugue.twentyfour.Voice.B \shape #'((-0.25 . -1.75)(-0.25 . -2.25)(0 . -2.25)(0 . -1.75)) Tie
  \editionMod jisB 42 3/8 fugue.twentyfour.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 44 1/4 fugue.twentyfour.Voice.D \shape #'((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) Tie
  \editionMod jisB 45 3/4 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 47 3/8 fugue.twentyfour.Voice.C \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 50 1/2 fugue.twentyfour.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 53 3/8 fugue.twentyfour.Voice.B \shape #'((-0.25 . -1)(-0.25 . -1)(0 . -1)(0 . -1)) Tie
  \editionMod jisB 52 1/2 fugue.twentyfour.Voice.D \shape #'(((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) ((0 . -0.25)(0 . -0.25)(0 . -0.25)(0 . -0.25))) Tie
  \editionMod jisB 55 1/4 fugue.twentyfour.Voice.A \once\tieUp
  \editionMod jisB 55 1/4 fugue.twentyfour.Voice.A \shape #'((0 . 1.25)(0 . 1)(0.5 . 1)(0.5 . 1.25)) Tie
  \editionMod jisB 55 3/4 fugue.twentyfour.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie
  \editionMod jisB 56 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 56 1/2 fugue.twentyfour.Voice.A \shape #'(((0 . 0.25)(0 . 0.25)(0 . 0.25)(0 . 0.25)) ((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)))Tie
  \editionMod jisB 60 3/8 fugue.twentyfour.Voice.B \shape #'((0 . -0.5)(0 . -0.5)(0 . -0.5)(0 . -0.5)) Tie
  \editionMod jisB 63 1/2 fugue.twentyfour.Voice.B \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
  \editionMod jisB 64 3/4 fugue.twentyfour.Voice.A \once \override Beam.positions = #'(7 . 5.75)
  \editionMod jisB 67 7/8 fugue.twentyfour.Voice.A \shape #'((0 . 0.25)(0 . 0.25)(0.75 . 0.25)(0.75 . 0.25)) Tie
  \editionMod jisB 71 5/8 fugue.twentyfour.Voice.B \shape #'((-0.75 . -0.25)(-0.75 . -0.25)(0 . -0.25)(0 . -0.25)) Tie
  \editionMod jisB 74 7/16 fugue.twentyfour.Voice.C \shape #'((0 . 0.5)(0 . 0.5)(0.75 . 0.5)(0.75 . 0.5)) Tie
  \editionMod jisB 74 1/2 fugue.twentyfour.Voice.A \shape #'((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0)) Tie