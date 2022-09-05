\version "2.20.0"
\language "english"

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

global = {
  \key b \minor
  \time 4/4
  \tempo "Andante"
}

vOne = \relative  cs'' {
  \global
  \voiceOne
  \repeat volta 2 {
    r2 cs4 fs ~ | % 2
    fs4 e d2 ~ | % 3
    d4 cs8 b as4 b8
    cs8 | % 4
    fs,4 b2 a4 | % 5
    g2 fs | % 6
    b4 e a, d ~ | % 7
    d4 cs d16 cs b
    a16 d4 ~ | % 8
    d4 cs b e ~ | % 9
    e4 d cs fs ~ |
    \barNumberCheck #10
    fs4 es fs gs | % 11
    cs,4 fs2 es4 | % 12
    fs4 r e a ~ | % 13
    a4 g fs b ~ | % 14
    b4 as b4. a16 g | % 15
    fs4. g8 d4 cs | % 16
    b8 g'4 fs8 ~ fs b16
    as16 b4 | % 17
    as8 b e, d <as cs>2
    \prall
  }
  \break
  \repeat volta 2 {
    | % 18
    a'2 ~ a8 fs b a | % 19
    g4 fs g2 ~ | \barNumberCheck #20
    g8 e a g fs4
    e4 | % 21
    fs2 ~ fs8 fs gs a | % 22
    b4 a2 g8 fs | % 23
    es8 cs fs e d2 ~ | % 24
    d4 cs8 b a b
    cs4 ~ | % 25
    cs4 b2 a4 ~ | % 26
    a4 gs8 fs es d'
    cs8 b | % 27
    a4 gs fs r | % 28
    ds'4 e8 fs b, c'
    b8 a | % 29
    g4 fs e bf' ~ |
    \barNumberCheck #30
    bf4 a8 g fs cs
    d8 e | % 31
    a,8 d4 cs8 fs, b4
    a8 | % 32
    d,8 g4 fs8 gs4 as8
    b8 | % 33
    cs2 ~ cs8 b cs d | % 34
    e2 ~ e8 d e fs | % 35
    g2. fs4 ~ | % 36
    fs8 a g fs g4
    gs4 ~ | % 37
    gs8 b a gs a4
    as4 ~ | % 38
    as8 c b as b4.
    a8 | % 39
    g2 fs | \barNumberCheck #40
    e2 d ~ | % 41
    d4 cs8 b as g'
    fs8 e | % 42
    d4 cs b2 ~ | % 43
    b8 b4 as8 e'2 ~ | % 44
    e8 e4 ds8 g2 ~ | % 45
    g8 fs4 es8 b' e,16
    ds16 e8 g | % 46
    d4 cs ds8 e as,
    b8 | % 47
    << { f'4\rest r8 as,8 b2%{ \fermata%}  } \\ \voiceThree { g2 fs } >> %d4 \rest d8 \rest as <fs b>2 \fermata
  }
}

vTwo = \relative f' {
  \global
  \voiceTwo
  \repeat volta 2 {
    fs4 b2 a4 gs
    cs2 b8 a g2 ~ g8
    fs8 e4 ~ e d
    cs4 fs ~ fs e2 d4 ~
    d4 g2 fs4 e2
    fs4 r e a2 g4
    fs4 b2 a4 gs cs2
    b4 ~ b a gs2
    a4 d2 cs4 b e2
    d4 cs fs4.
    b,8 e4 ~ e8 d16
    cs16 d8 b b4
    as4 b cs d4. e8 ~
    e8 d cs b s2
  }
  \repeat volta 2 {
    r8 cs fs e ds2
    e4 ds e8 b e
    d8 cs2 d4 cs
    d8 a b cs d2 ~
    d8 cs fs e
    d8 cs b4 ~ b a ~
    a8 a gs fs
    es8 fs gs2 fs8 e
    d2 cs b ~ b8
    es8 fs gs cs, fs4
    es8 fs4 c' ~ c
    b8 a g ds'
    e8 fs b, e4 ds8
    e4 r cs d8 e
    a,8 bf a g
    fs4 e d cs b
    a4 b e ~ e8
    g8 fs e d4 g ~
    g8 b a g fs4
    b4 ~ b8 d cs
    b8 cs e d cs
    d4 b ~ b8 d
    cs8 b e4 cs ~ cs8
    e8 d cs fs4
    d4 ~ d8 e fs4 ~ fs
    e2 d4 ~ d cs2
    b8 a g2 ~ g8 as
    b8 cs fs, b4
    as8 b e,4 ds8 g2 ~
    g8 g4 fs8 b2 ~
    b8 b4 as8 d2 ~ d8
    c8 b4 ~ b as
    a8 g4 fs8 ~ fs e
    cs4 ds2 %\fermata
  }
}

vThree = \relative b, {
  \global
  \repeat volta 2 {
    b8 cs d e fs
    gs8 a b cs
    b8 as fs b a
    g8 fs e cs
    d8 e fs fs, gs as
    b8 cs d e
    fs8 gs a fs b
    b,8 cs a d cs
    b8 a g fs' e
    d8 cs a' b
    fs8 g e a a,
    d8 e fs g a,
    b8 cs d e fs
    g8 a b, cs d
    e8 fs gs a b
    cs8 b cs a
    d8 cs d b es,
    cs'8 d a b
    gs8 cs cs, fs e
    fs8 gs a b
    cs8 d e, fs g
    a8 b cs d e
    fs,8 e fs d
    g8 fs g e as
    fs8 b e, fs e
    fs8 fs, b4 a g2 \trill
    fs1
  }
  \repeat volta 2 {
    fs'8 g a fs
    b8 a g fs e g,
    a8 b e, fs g
    e8 a g fs e d
    fs8 g a d, e'
    d8 cs b a gs
    fs8 es fs' gs a b
    cs8 d b cs
    fs,,8 gs a b cs d
    b8 cs ds es
    cs8 fs gs a fs
    b8 a gs fs
    es8 cs fs e d
    cs8 d b cs b a
    b8 cs b cs cs,
    fs8 cs' ds e fs
    a8 g fs e
    fs8 g a b a
    b8 b, e b'
    cs8 d e g, fs
    e8 d e fs g
    a8 g a a, b
    d8 fs fs, g b
    d4 ~ d8 d cs b
    as8 fs gs as b
    fs'8 e d cs a
    b8 cs d a' g
    fs8 e cs d
    e8 as, fs' gs as
    b8 b, cs d
    e8 fs e d cs
    cs'8 d e fs
    g8 fs e d d,
    e8 fs g fs
    e8 ds e d cs
    b8 as fs' b
    a8 gs fs gs as
    b8 b, cs d
    e8 fs g e fs
    e8 d e fs e
    fs8 fs, g4 fs e
    d4 \once\override Beam.auto-knee-gap = #2 cs8 b'' as a
    gs8 g fs b
    e,8 e' d cs b
    c8 cs d es,
    fs8 g e fs e fs
    fs,8 b2 ~ b1
  }
  \mark\markup{\normalsize \musicglyph #"scripts.ufermata" }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

preludeTwentyfour = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { } <<
      \new Voice \vOne
      \new Voice \vTwo
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver"  \clef bass } <<
      \new Voice \vThree
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.twentyfour
      %\override NonMusicalPaperColumn #'line-break-permission = ##t
      %\consists #(custom-line-breaks-engraver '(4 5 4 4))
    }
  }
}
%\preludeTwentyfour
