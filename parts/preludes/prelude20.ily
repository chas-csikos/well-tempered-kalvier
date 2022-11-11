\version "2.20.0"
\language "english"

global = {
  \key a \minor
  \time 9/8
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

right = \relative a' {
  \global
  \oneVoice
  a16 b  c8 e c a e a c8 e | % 1
  b16 c d8 f d b8 gs b d f | % 2
  d16 e f8 gs f d8 b d f gs | % 3
  a8 g16 f e d \once\stemUp c8 \voiceOne r r \oneVoice r4. | % 4
  <b e g>4. e16 ds e ds16 e ds e b a16 g fs e ~ | % 5
  <e a c>4. ~ c'16 b c b c b c16 g' fs e16 ds e | % 6
  <fs, a c ds>4. ~ ds'16 e fs e16 fs e fs e16 ds fs b, a | % 7
  g4. ~ g8 e g b e as,8 | % 9
  \voiceOne
  <b e g>4. ~ g'16 fs g fs g16 fs g f e  d16 cs b |
  \barNumberCheck #10
  <a d f>4. ~ f'16 e f e f16 e f e d c16 b a | % 11
  <g c e>4. ~ e'16 d e d e16 d
  \oneVoice
    c g' f e16 d c | % 12
  b16 e d c b a16 g c b a g f16 e a g f
  e16 d | % 13
  e16 f g8 c g e c8 e g c | % 14
  f,16 g a8 c a f c8 f a c | % 15
  b16 c d8 f d b8 g b d f | % 16
  \voiceOne
  \shape #'( (0 . 0.25) (0 . 2) (0.25 . 2) (0.25 . 0.25)) Tie
  e2. ~ e4. | % 17
  ef4. d a'8 r r | % 18
  \shape #'( (0 . 0) (0 . 2) (0 . 2) (0 . 0)) Tie
  bf,2. ~ bf4. | % 19
  bf4. a e'8 r r | \barNumberCheck #20
  \oneVoice
  f,4. ~ f16 e f a
  d16 a f' e d
  c16 b a | % 21
  gs'4. ~ gs16 a b
  a16 gs fs e
  f16 e d c b | % 22
  a16 b c8 e c
  a8 e e'16 d c
  b16 a gs | % 23
  a16 b c8 a' e
  c8 a a'16 g f
  e16 d c | % 24
  f16 e d c b
  a16 d c b a
  gs16 fs b a gs
  fs16 e d | % 25
  e16 a g f e
  d16 c f e d c
  b16 a d c b
  a16 gs | % 26
  a16 b cs d e
  f16 g8 e cs bf'16 cs,
  a'16 cs, g' cs, | % 27
  f16 a b cs d e16
  <<
    {
      \voiceOne s4. a16 gs a gs a gs |
      \set Score.measureLength = #(ly:make-moment 3/4)
      <a e>2.
    }
    \\
    {
      \voiceTwo f8 d b ~ b4. |
      \set Score.measureLength = #(ly:make-moment 3/4)
      <cs>2.
    }
  >> | % 28
  %<cs e a>2.
  \bar "|."
}

left = \relative a, {
  a4. a'16
  gs16 a gs a
  gs16 a8 e c a4. a'16
  gs16 a gs a
  gs16 a8 f d a4. a'16
  gs16 a gs a
  gs16 a8 f d a4. \staffOne r8
  a''8 \staffTwo e c a ds
  e,16 fs g8 b g
  e8 b e g b fs16
  g16 a8 c a fs
  ds8 fs a c a16
  b16 c8 ds c a
  fs8 a c ds e
  e,16 fs g a
  b8 r r r4. \staffOne \voiceTwo e16 fs
  g8 b g e b
  cs8 e a d,16 e
  f8 a f d a
  b8 d g c,16 d
  e8 g e c \staffTwo \oneVoice g
  a8 c f g,
  b8 d f d b8 g b g
  c4. ~ c16 a g
  f16 e d \voiceOne c d e
  f16 g e a4. ~ a16
  c,16 d e f g
  a16 g f e d c
  d4. ~ d16 e d c
  b16 a g a g
  f16 e d
  \oneVoice
  c8 r r
  e''16 d c b
  c16 g e g f
  e16 d c fs8 fs
  fs8 fs fs fs fs
  fs8 fs g r r bf16
  a16 g fs g d bf
  d16 c bf a g
  cs8 cs cs cs cs cs
  cs8 cs cs d16 e
  f8 a f d a
  d8 f a d,16 e
  f8 gs f d b d
  f8 gs c,4. a'16 gs
  a16 gs a gs
  a8 e c f,4. a'16
  gs16 a gs a gs
  a8 b c d, e
  f8 b, c d gs,
  a8 b c,4. ~ c8 c' d
  e8 d e
  \voiceOne
  % \once\override Dots.extra-offset = #'(-2.375 . -1)
  a,4. ~ a16
  b16 cs d e f
  g8 f e \tieDashed d4. ~ d16 a' \tieSolid
  b16 cs d e f8
  e8 d |
  \set Score.measureLength = #(ly:make-moment 3/4)
  \break
  e2. \bar "|."
}

vThree = \relative c {
  s8*9*12 |
  \voiceTwo
  \mergeDifferentlyDottedOn
  s4. s4. c4. ~|
  c4. ~ c ~ c ~ |
  c4. b16 s s s s8 s4. |
  \staffOne
  r16 d'' c b \voiceTwo c16 g ~ g4. ~ g |
  r16 a bf c bf a r a bf c bf a r a bf c bf a |
  r16 a g fs g16 d ~ d4. ~ d |
  r16 e f g f e r e f g f e r e f g f e
  s8*9*6 |
  \staffTwo \voiceTwo
  % \once\override NoteColumn.force-hshift = #1.375
  a,,2. ~ \tieDashed a4. ~ |
  \tieSolid a4. ~ a16 a' ~ a4 ~ a4. ~ |
  \set Score.measureLength = #(ly:make-moment 3/4)
  a2. |
}

extraVoice = \relative c'' {
  \voiceThree
  \staffOne
  s1*9/8*15 |
  s16*4 c8 ~ c4. ~ c |
  s1*9/8 |
  s16*4 g8 ~ g4. ~ g |
}

preludeTwenty = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { \global } <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \left
      \new Voice \vThree
      \new Voice \extraVoice
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.twenty
      %\override NonMusicalPaperColumn #'line-break-permission = ##t
      % \consists #(custom-line-breaks-engraver '(2 2 2 2 3 3  2 2 2 2 3))
    }
  }
}
%\preludeTwenty
