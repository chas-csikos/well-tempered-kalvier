\version "2.20.0"
\language "english"

global = {
  \key fs \minor
  \time 6/4
}

soprano = \relative c' {
  \global
  \barNumberCheck #1
  \voiceOne
    R1. | % m. 1
    R1. | % m. 2
    R1. | % m. 3
  \teeny
    R1. | % m. 4
    R1. | % m. 5
    R1. | % m. 6
    R1. | % m. 7
    R1. | % m. 8
    R1. | % m. 9
    R1. | % m. 10
    R1. | % m. 11
    R1. | % m. 12
    R1. | % m. 13
  \normalsize
    R1. | % m. 14
  \barNumberCheck #15
    r4 fs gs a2.~ | % m. 15
    a4 gs8 as b4~ b as8 gs as bs | % m. 16
    cs4. b8 a cs b a gs2 | % m. 17
    fs8 a b cs d4~ d8 b cs ds e4~ | % m. 18
    e8 d d cs cs bs bs4 cs2~ | % m. 19
  \barNumberCheck #20
    cs4 bs2 cs8 ds e fs g4~ | % m. 20
    g4 cs, fs8 e d cs d2 | % m. 21
    cs4 ds es fs2.~ | % m. 22
    fs2 e4~ e d2~ | % m. 23
    d4 cs2~ cs4 b2~ | % m. 24
    b8 gs a cs fs ds e2.~ | % m. 25
    e4 ds8 es fs4~ fs es8 ds es fss | % m. 26
    gs4. fs8 e gs fs e ds2 | % m. 27
    cs8 d fs gs a4~ a8 fs gs as b4~ | % m. 28
    b8 a a gs gs fs fs a16 gs fs8 e e ds | % m. 29
  \barNumberCheck #30
    ds8 e e d d cs cs2~ cs8 ds | % m. 30
    es8 fs gs4 cs, fs2 es4 | % m. 31
    fs8 e d cs cs b b fs' b, a a gs | % m. 32
    gs4. b8 a gs fs es fs a b cs | % m. 33
    d2.~ d8 gs, cs b b a | % m. 34
    a2.~ a8 cs b a a gs | % m. 35
    gs2.~ gs8 b a g g fs | % m. 36
    fs8 es fs4 gs a2.~ | % m. 37
    a4 gs8 as b4~ b as8 gs as bs | % m. 38
    cs4. b8 a cs b a gs2 | % m. 39
  \barNumberCheck #40
    fs1.| % m. 40
  \bar "|."
}

alto = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    R1. | % m. 1
    R1. | % m. 2
    R1. | % m. 3
    r4 cs ds e2.~ | % m. 4
    e4 ds8 es fs4~ fs es8 ds es fss | % m. 5
    gs4.  fs8 e gs fs e ds2 -\parenthesize \prall | % m. 6
    cs8 e fs gs a4~ a8 fs gs as b4~ | % m. 7
    b8 b b a a gs gs fs fs e e ds | % m. 8
    ds8 e e d d cs cs2~ cs8 ds | % m. 9
  \barNumberCheck #10
    es8 fs gs4 cs, fs2 es4 | % m. 10
    fs2. e4 fs8 gs a4 | % m. 11
    gs2. fs | % m. 12
    e4. fs8 g4~ g fs8 e d cs | % m. 13
    d4. e8 fs4~ fs e8 d cs b | % m. 14
    cs4 ds es fs2.~ | % m. 15
    fs4 gs fs es fs8 es fs4 | % m. 16
    gs2 fs4~ fs8 e d4 cs~ | % m. 17
    cs4. gs'8 a b e,4. a8 b cs | % m. 18
    fs,2.~ fs8 fs fs e e ds | % m. 19
  \barNumberCheck #20
    ds8 gs gs fs fs e e4 cs' b | % m. 20
    as2.~ as4 b8 a gs4~ | % m. 21
    gs4 a8 b a gs fs4. gs8 a fs | % m. 22
    gs8 a b2 cs fs,4 | % m. 23
    b4. e,8 fs gs a2 d,4 | % m. 24
    cs2 a'4 gs8 cs cs b b as | % m. 25
    as8 b b a a gs gs2~ gs8 as | % m. 26
    bs8 cs ds4 gs, cs2 bs4 | % m. 27
    cs4. b8 cs ds e4. cs8 ds es | % m. 28
    fs4 fs, es fs8 cs fs gs a fs | % m. 29
  \barNumberCheck #30
    b4. fs8 gs a es cs fs4 cs~ | % m. 30
    cs8 ds es4 fs8 e d cs b2 | % m. 31
    a8 cs fs2~ fs2.~ | % m. 32
    fs8 fs e2 d4. fs8 gs as | % m. 33
    b8 a gs fs es fs es fs gs2~ | % m. 34
    gs8 gs fs e e ds ds2.~ | % m. 35
    ds8 fs e d d cs cs2.~ | % m. 36
    cs4 b2 r8 gs' fs e e ds | % m. 37
    ds8 e e d d cs cs2~ cs8 ds | % m. 38
    es4 fs8 es fs4~ fs2 es4 | % m. 39
  \barNumberCheck #40
    cs1. | % m. 40
  \bar "|."
}

tenor = \relative c {
  \global
  \barNumberCheck #1
  \voiceOne
    r4 fs gs a2.~ | % m. 1
    a4 gs8 as b4~ b as8 gs as bs | % m. 2
    cs4. b8 a cs b a gs2 \prall | % m. 3
    fs2. r8 cs' cs b b as | % m. 4
    as8 b b a a gs gs2~ gs8 as | % m. 5
    bs8 cs ds4 gs, cs2 bs4 | % m. 6
    cs4. b8 cs ds e4. cs8 ds es | % m. 7
    fs4 cs b cs a fs | % m. 8
    b2. es,8 cs fs4 cs'~ | % m. 9
  \barNumberCheck #10
    cs8 ds es4 fs8 e d cs b2~ | % m. 10
    b8 a b cs d4~ d8 cs ds es fs4~ | % m. 11
    fs8 fs e ds cs b as4 bs8 cs ds4~ | % m. 12
    ds8 ds cs4 b as8 b cs2~ | % m. 13
    cs8 cs b4 a gs8 a b2~ | % m. 14
    b8 d cs b b a a b cs2 | % m. 15
    b2. cs2.~ | % m. 16
    cs8 ds es4 fs8 e d cs b a gs b | % m. 17
    a4 r r r2. | % m. 18
  \teeny
    R1. | % m. 19
  \barNumberCheck #20
    R1. | % m. 20
    R1. | % m. 21
  \override MultiMeasureRest.staff-position = #6
    R1. | % m. 22
  \once \override MultiMeasureRest.staff-position = #8
    R1. | % m. 23
    R1. | % m. 24
  \revert MultiMeasureRest.staff-position
    R1. | % m. 25
    R1. | % m. 26
  \once \override MultiMeasureRest.staff-position = #4
    R1. | % m. 27
    R1. | % m. 28
  \normalsize
    r4 fs gs a2.~ | % m. 29
  \barNumberCheck #30
    a4 gs8 as b4~ b as8 gs as bs | % m. 30
    cs4. b8 a cs b a gs2  | % m. 31
    fs4 a2~ a4 fs b~ | % m. 32
    b2 cs8 b a2 r4 | % m. 33
    r8 fs b4. a8 gs4. gs8 cs4~ | % m. 34
    cs8 e ds cs cs b b2.~ | % m. 35
    b8 d cs b b a a2.~ | % m. 36
    a4. a8 gs fs es b' a gs gs fs | % m. 37
    fs8 gs gs fs fs es es4 fs8 es fs4 | % m. 38
    gs4 cs2 r8 fs, cs' b b as | % m. 39
  \barNumberCheck #40
    as1. | % m. 40
  \bar "|."
}

bass = \relative c {
  \global
  \voiceTwo
  \barNumberCheck #1
    R1. | % m. 1
    R1. | % m. 2
    R1. | % m. 3
    R1. | % m. 4
    R1. | % m. 5
    R1. | % m. 6
    R1. | % m. 7
    r4 fs, gs a2.~ | % m. 8
    a4 gs8 as b4~ b as8 gs as bs | % m. 9
  \barNumberCheck #10
    cs4. b8 a cs b a gs2 -\parenthesize \prall | % m. 10
    fs4. e8 fs gs a2~ a8 b | % m. 11
    cs8 bs cs ds e4~ e8 fs e ds cs bs | % m. 12
    cs4. cs8 d e fs4. fs,8 gs as | % m. 13
    b4. b8 cs d e4. e,8 fs gs | % m. 14
    a8 b a gs gs fs fs fs' fs e e ds | % m. 15
    ds8 e e d d cs cs2~ cs8 ds | % m. 16
    es8 fs gs4cs, fs2 es4 | % m. 17
    fs4. es8 fs gs a4. fs8 gs as | % m. 18
  \oneVoice
    b8 b, b a a gs gs a' a gs gs fs | % m. 19
  \barNumberCheck #20
    fs4 gs gs, cs4. cs8 d e | % m. 20
    fs8 g fs e d cs b d gs, fs fs es | % m. 21
    es8 es' fs gs gs a a d d cs cs b | % m. 22
    b8 a gs d' cs b as b b a a gs | % m. 23
    gs8 fs e b' a gs fs gs gs fs fs es | % m. 24
    es4 fs fs, cs'8 ds e fs g e | % m. 25
    fs8 fs, b cs d b cs cs, cs' bs cs e | % m. 26
  \voiceTwo
    ds8 cs bs gs cs e a fs gs fs gs gs, | % m. 27
    cs4 r r r2. | % m. 28
    R1. | % m. 29
  \barNumberCheck #30
    R1. | % m. 30
    R1. | % m. 31
    r4 fs e ds2.~ | % m. 32
    ds4 e8 d cs4~ cs d8 e d cs | % m. 33
    b4. cs8 d b cs ds es2 | % m. 34
    fs2.~ fs8 a gs fs fs e | % m. 35
    e2.~ e8 gs fs e e d | % m. 36
    d2. cs~ | % m. 37
    cs2.~ cs~ | % m. 38
    cs8 b a gs fs a d b cs4 cs, | % m. 39
  \barNumberCheck #40
    fs1. | % m. 40
  \bar "|."
  \mark\markup{ \fontsize #-2 \musicglyph #"scripts.ufermata" }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

fugueFourteen = \score {
  \new PianoStaff \with {
    edition-id = fugue.fourteen
  } <<
    \new Staff = "Up" \with { } <<
      \new Voice \soprano
      \new Voice = "alto" \alto
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \tenor
      \new Voice \bass
    >>
  >>
  \layout{}
}
%\fugueFourteen
