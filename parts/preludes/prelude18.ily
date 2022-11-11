\version "2.20.0"
\language "english"

global = {
  \key gs \minor
  \time 6/8
}
staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

right = \relative gs' {
  \global
  \oneVoice
  gs16 as b gs as cs e8 ds cs |
  <<
    { b8 gs'4 \once \override Dots.extra-offset = #'(-1.25 . 0) fss4. |
      gs16 as b ds, e gs }
    \\
    { b,4 as8 ~ as s4 |
    ds8 s16 s8. }
    \\
    { s8  ds8
        \shape #'( (0 . -0.5) (0 . -0.5) (-0.75 . -0.5) (-0.75 . -0.5) ) Tie cs ~
        \once \override NoteColumn.force-hshift = #0.8 cs b as |
    }
  >>
  \oneVoice
  fs'16 gs as cs, ds fs | % 4
  e16 fs gs b, cs e as, b cs fs, cs' e | % 5
  \voiceOne
  ds16 e fs ds e gs b, as b as b cs ~ | % 6
  cs8 b4 ~ b16 b as b cs as | % 7
  fs4. ~ fs16 es fs es fs gs | % 8
  cs,16 ds e cs ds fs a8 gs fs | % 9
  e4 cs'8 as4. ~ |
  \barNumberCheck #10
  as16 gs fss as gs es css8 ds es | % 11
  fs4. es | % 12
  ds8. ds16 es fs gs8. css,16 es gs | % 13
  fs8. fs16 gs b es,4.\prall | % 14
  ds16 es fs ds es gs \oneVoice b8 as gs | % 15
  fs4 ~ fs16 gs as b cs as b cs | % 16
  \voiceOne
  ds16 cs b ds cs as fss8 gs as | % 17
  b8. as16 bs cs ds4. | % 18
  cs16 ds e cs ds fs a8 gs fs | % 19
  e4. ~ e8 fs e |
  \barNumberCheck #20
  ds4. ~ ds8 e ds | % 21
  cs4. ~ cs8 ds cs | % 22
  b16 as gs b cs e as, gs fs as b ds | % 23
  gs,16 ds' cs b as gs fss gs as fss gs b | % 24
  e8 e e e e e | % 25
  e4. ~ e16 ds cs as' e cs | % 26
  ds16 cs b ds cs as b as gs b as fss | % 27
  << { gs2. ~ | gs2. ~ } \\ { s2. | s4. r16 e ds cs bs cs } >> | % 28-29
  << { gs'2.\fermata } \\ { ds } >> \bar "|."
}

left = \relative a {
  \global
  \voiceTwo
  gs4. fss
  gs16 as  b gs as cs e8 ds cs |
  b4. as |
  gs4 e8 fs gs as |
  b8 r r \oneVoice r4. |
  b,16 cs ds b cs e gs8  fs e |
  ds16 e fs ds es gs \voiceTwo b8  a gs |
  fs4. ~ fs16 fs e ds cs bs |
  cs4. fss,16 cs'' b as gs fss |
  \oneVoice gs4. ~ gs16 gs fs es ds css |
  ds16 es fs as, b ds cs ds es gs, as cs |
  b16 cs ds fs, gs b css,8 css' as |
  ds16 es fs ds es gs \voiceTwo b8 as gs |
  fs16 gs as fs gs b css, ds es as, css es |
  \voiceTwo
  ds4. cs |
  b4. \oneVoice as16 cs  b as gs fss |
  gs16 fs e gs fs ds bs8 cs ds |
  e16 fs gs e fs a ds, e fs gs as bs |
  cs16 ds e cs e gs fs gs as fs as cs |
  b,16 cs ds b ds fs e fs gs e gs  b |
  as,16 b cs as  cs e ds es fss ds fss as |
  gs16 as b ds, e  gs fs gs as cs,  ds fs |
  e16 fs gs b, cs e ds es fss as, b ds |
  cs16 ds e b cs e a, cs e gs, cs e |
  fss,4. ~ fss8. fss'16 gs as |
  b,4 e8 cs ds ds, |
  gs16 as  bs gs bs ds fs8  e ds |
  \voiceTwo cs2. |
  gs2._\fermata \bar "|."
}

middle = \relative a {
  \voiceOne
  b8 ds
  cs8 ~ cs b as |
  s4. s8  ds4 ~ |
  ds8  gs cs, ~ cs fs b, ~ |
  b8 e4 ~  e8 ds cs |
  \staffTwo \voiceOne b16 cs ds b cs \staffOne \voiceTwo e gs8 fs e |
  ds16 e fs ds e gs cs,4. ~ |
  \slurUp
  cs8 b16( a) cs( b) d8 cs \staffTwo \voiceOne b ~ |
  b8 a16 gs a fs bs8 cs ds |
  gs,16 as b gs as \staffOne \voiceTwo cs e8 ds cs |
  b4. as ~ as8 ds gs, ~ gs cs fs, ~ |
  fs8 b4 ~ b16 b as4 ~ |
  as16 as \staffOne \voiceTwo ds4 css4. |
  ds8 r r
  \staffTwo \voiceOne
    r4. |
  ds16 cs b ds cs as fss8 gs as ~ |
  as8 gs \staffOne \voiceTwo e' ~ e ds cs |
  b16 ds gs4 fs16 gs a fs cs' bs |
  cs4. bs8 cs ds ~ |
  ds8 cs b as4. ~ |
  as8 b as gs4. ~ |
  gs8 as gs fss4. |
  gs8 r r r4. |
  r4. r8 r gs ~ |
  gs8 gs gs cs cs cs |
  cs16 b as cs b gs as4. ~ |
  as8 gs4 r4. |
  r8 fs ds cs16 bs cs ds e fs |
  e16 ds cs e cs \staffTwo \voiceOne as fss8 gs as |
  bs2.
}

preludeEighteen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { \global } <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \left
      \new Voice \middle
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.eighteen
    }
  }
}
%\preludeEighteen
