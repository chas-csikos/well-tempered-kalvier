\version "2.20.0"
\language "english"

global = {
  \key a \major
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

right = \relative a' {
  \global
  a16 b  cs16 a fs'8 fs fs16  ds16 e8 r16 e fs g16 |
  a16 g fs a d,16 cs b a' gs fs16 e gs cs, b16 a g' |
  fs16 e d fs b,16 fs' e d cs  b16 a b cs ds16 e fs |
  \voiceOne
  gs16 a b gs e  fs16 gs e fs gs  a16 fs b,8 b' ~ |
  b8 e, r a ~ a ds,  r8 gs |
  a16 gs fs a ds,  a'16 gs fs e4 r8 g |
  g8 fs r fs fs e r  e8 |
  e8 d r d d cs  a'4 |
  gs4 g fs b |
  \barNumberCheck #10
  e,4 a2 gs4 ~ |
  gs16 fs es gs fs2  es4 |
  fs16 gs a fs d8  d8 d16 bs cs8
  \oneVoice
    r16  cs16 d e |
  fs16 e ds fs b,16 a gs fs' es  ds16 cs b' a gs16 fs es |
  fs16 es fs gs  gs8. fs16
  \voiceOne
    fs4 r8 a |
  a8 gs r gs gs fs r8 b |
  b8 a r a a gs r  e8 |
  e8[ a,] d[ d]  d8 cs r16 e d cs |
  b16 cs d b e,8 e'8 ~ e a, r d ~ |
  d8 gs, r cs d16 cs b16 cs d cs d e16 |
  \barNumberCheck #20
  a,16 b cs a \oneVoice fs'8 fs8 fs16 ds e8 r16  e16 fs g |
  a16 g fs a d,16 cs b a' gs fs16 e gs cs, b16 a g' |
  fs16 e d fs  b,16 fs' e d cs  b16 a cs fs, e d16 fs |
  b,16 cs d e fs gs16 a b cs d e16 fs gs a b16 gs |
  \voiceOne a4 ~ a8. gs16 a2\fermata
  \bar "|."
}

left = \relative a, {
    \voiceTwo
  a4 a'  gs4 g |
  fs b e,  a4 |
  d, e a,8 a' gs8 fs |
  \oneVoice
  e16 fs gs e
  cs'8 cs cs16 as b8 r16
  b16 cs d e d
  cs16 e a, gs
  fs16 e' ds cs b
  ds16 gs, fs e
  d'16 cs b a
  cs16 fs, cs' b a
  gs16 fs e fs
  gs16 a b cs d
  e16 fs d b
  cs16 d b cs d
  e16 cs a b
  cs16 a b cs d
  b16 gs a b
  gs16 a4 ~ a16 cs a
  fs16 cs'4 r16 e8. ~ e8
  a,8 r d ~ d gs, r
  cs8 d b r e,
  a[ gs8] a[ fs] gs[ b] cs8[ cs,]
  fs fs,

  fs'4 \voiceTwo es
  e4
  ds4 gs cs, fs d8
  b8 cs4 fs \oneVoice r4
  r16
  cs'16 b a gs
  fs16 e as b,4 r r16 ds'
  cs16 b a gs
  fs16 ds' e,4 r r16 e' d
  cs16 b a gs
  b16 a,16 b cs a fs'8
  fs8 fs16 ds e8 r16
  e16 fs g a g
  fs16 a d, cs
  b16 a' gs fs e
  gs16 cs, b a
  g'16 fs e d fs
  b,16 fs' e d
  cs16 b a cs
  \voiceTwo
  d16 e d cs
  b16 a gs b
  cs8 e ~ e a, r d
  ~ d8 gs, r cs ~
  cs8 b16 a gs4 a8 r r4 |
  r2 r16 fs' e
  d16 cs b a gs
  \oneVoice
  fs16 e d8
  e8 e' a,2_\fermata \bar "|."
  \bar "|."
  \mark\markup{\fontsize #-2 \musicglyph #"scripts.ufermata"}
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

middle = \relative {
  \global
  \voiceOne
  r2 r4 r8  e'8 ~ e a, r d ~ d
  gs,8 r cs ~ cs b16
  a16 gs8. \prall gs16 a8 r r4
  \staffOne \voiceTwo
  r4 e''
  ds4 d cs fs b,
  e4 ~ e ds e8[ b] e8[ e]
  e d r
  d8 d cs r cs
  cs8 b r4 a,16 b16 cs a fs'8 fs
  fs16 ds e8 r16 e
  fs16 g a g
  fs16 a d, cs b
  a'16 gs fs e
  gs16 cs, b a g'
  fs16 e d fs
  b,16 fs' e d cs4 r16 e'16 d cs b
  a16 gs b \staffTwo\voiceOne cs, \staffOne\voiceTwo
  d'16 cs b a4 r16
  cs16 b a gs8. \staffTwo \voiceOne
  gs,16 cs4 ~ |
  cs8 fs, r b ~ b es, r a ~ |
  a8 gs16 fs es8 b' a16 \staffOne \voiceTwo d' cs b a gs fs e |
  ds4 r8 e' ~
  e16 e ds cs b
  a16 gs fs e4 r8
  fs'8 ~ fs16 fs e
  d16 cs b a
  gs16 fs4 r8 b
  b8 e, a4 gs4

  g4 fs b e, a2
  gs4 a \staffTwo \voiceOne
  a,4
  gs4 g fs b e, a
  d,4 ~ d16 d cs b a
  b16 cs a d e
  fs16 d gs a gs fs
  e16 d' cs b a r r8 r4

  \staffOne \voiceTwo r16 gs''
  fs16 e d cs
  b8 cs2 \bar "|."
}

preludeNineteen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { \global } <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \left
      \new Voice \middle
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.nineteen
    }
  }
}
%\preludeNineteen
