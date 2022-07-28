\version "2.20.0"
\language "english"

global = {
  \key a \major
  \time 9/8
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    a8 r r r gs cs a d b | % m. 1
    e8 cs fs e a d,~ d cs ds | % m. 2
    gs8 e a gs4 fs8 b, e d~ | % m. 3
    d8 cs ds e b e~ e fs4 | % m. 4
    gs4 a8 gs4 fs8 gs a4~ | % m. 5
    a8 gs b e,4 ds8 e4.~ | % m. 6
    e8 d cs d4 cs8 b4.~ | % m. 7
    b8 a cs fs,4.~ fs16 gs gs8.\prallprall fs32 gs | % m. 8
    a8 r r r gs cs a d b | % m. 9
    e8 cs fs e a d,~ d cs ds | % m. 10
    e4.~ e8 d g cs, fs d | % m. 11
    b4.~ b8 a d gs, cs b | % m. 12
    a4.~ a8 gs fs d'4.~ | % m. 13
    d8 cs fs~ fs8 e d cs4.~ | % m. 14
    cs8 b as b4 cs8 fs, b as | % m. 15
    b8 d4~ d8 cs fs~ fs e a~ | % m. 16
    a8 gs16 fs gs8~ gs fs e~ e ds fs | % m. 17
    b,4.~ b4 a8~ a gs4~ | % m. 18
    gs8 fs a ds, b' gs cs fs,4 | % m. 19
  \barNumberCheck #20
    e8 e' b cs fs cs d4.~ | % m. 20
    d8 b e cs fs d gs e a | % m. 21
    fs4 b8 e, a4~ a8 gs4 | % m. 22
    a8 s s s4. s | % m. 23
    s1*9/8 | % m. 24
  \staffTwo\voiceOne
    e,8 r r \once\showStaffSwitch\staffOne\voiceTwo r cs fs e a fs | % m. 25
    b8 gs cs a d cs fs ds4 | % m. 26
  \voiceOne
    e16 fs gs e gs a b8 r r r4. | % m. 27
    s1*9/8 | % m. 28
    r8 b16 a gs fs e fs gs e d cs d cs d fs e d | % m. 29
  \barNumberCheck #30
    cs8 a d cs a' d, b e cs | % m. 30
    d8 r r r e, a fs b cs~ | % m. 31
    cs8 d g~ g fs e a, d cs | % m. 32
    d8 fs16 e d cs b8 e4~ e8 d4~ | % m. 33
    d8 cs4 r16 b as b cs d e d e fs g e | % m. 34
    as16 fs b a g fs e d cs b as b g' fs e d cs b | % m. 35
    b8 d4~ d8 b e cs fs ds | % m. 36
    b4.~ b8 gs cs a4.~ | % m. 37
    a8 b4~ b8 a es fs4. | % m. 38
    fs8 ds gs es16 cs ds es fs gs a fs gs a b cs | % m. 39
  \barNumberCheck #40
    d16 b cs ds es fs d e d cs b a gs b a gs fs es | % m. 40
    b'4.~ b16 a b gs a8~ a16 b gs8. fs16 | % m. 41
    fs8 cs fs e4 a8 fs b gs | % m. 42
    cs8 a d~ d cs b e, a4~ | % m. 43
    a8 gs b e, a4 gs8 cs a | % m. 44
    d4. cs8 fs4~ fs8 e d~ | % m. 45
    d8 cs4~ cs8 b a~ a gs b | % m. 46
    e4.~ e4 d8~ d cs4~ | % m. 47
    cs8 b d gs, e' cs fs b,4 | % m. 48
    a8 e'16 d cs b a b cs a g fs g fs g b a g | % m. 49
  \barNumberCheck #50
    fs8 d a' gs e' a, fs' b, gs' | % m. 50
    a8 e4~ e8 d fs b,4.~ | % m. 51
    b8 a g fs4. b8 e, a | % m. 52
    d,4.~ d8 cs a'~ a a gs | % m. 53
  \set Score.measureLength = #(ly:make-moment 6 8)
    a2. \fermata | % m. 54
  \bar "|."
}

mezzo = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    R1*9/8 | % m. 1
    e8 r r r cs fs e a fs | % m. 2
    b8 gs cs b e a,~ a gs b | % m. 3
    e,8 a fs gs4. cs8 a d | % m. 4
    b8 e d~ d cs4 b8 e fs | % m. 5
    b,8 e d~ d cs16 b cs a gs8 cs a | % m. 6
    fs8 b a~ a gs a d,4.~ | % m. 7
    d8 cs e a,4. d4.~ | % m. 8
    d8 cs fs b, e gs~ gs fs gs~ | % m. 9
  \barNumberCheck #10
    gs8 a b cs4. b4 a8~ | % m. 10
    a8 gs cs fs, b4~ b8 a4 | % m. 11
    gs4.~ gs8 fs4~ fs8 es gs~ | % m. 12
    gs8 fs e d4 cs8~ cs \staffTwo\once\voiceOne b \staffOne b' | % m. 13
    es,8 fs4 gs8 as b e,4. | % m. 14
    d4 g8 fs e4 d cs8 | % m. 15
    d8 fs b gs4 cs8 b e cs | % m. 16
    b4.~ b8 a cs fs,4.~ | % m. 17
    fs8 e gs cs,4. fs8 b, e | % m. 18
    cs4. b4 e8~ e4 ds8 | % m. 19
  \barNumberCheck #20
    e8 r r r a e fs b fs | % m. 20
    gs4 r8 e a fs b gs cs | % m. 21
    a8 d4~ d8 cs fs b,8. fs'16 e d | % m. 22
    cs16 d e cs b a
  \oneVoice
      gs a b gs fs e fs e fs a gs fs | % m. 23
    gs16 b a gs a b cs b cs d e fs gs b a gs fs a | % m. 24
  \voiceTwo
    gs16 a b fs e d
  \voiceOne
      cs8 r r r cs a | % m. 25
    d8 b e cs fs e a fs4\trill | % m. 26
  \voiceTwo
    e8 r r r ds, gs e a fs | % m. 27
    b8 gs cs b e a,~ a fs b | % m. 28
    gs8 r r r4. r | % m. 29
  \barNumberCheck #30
  \teeny
    R1*9/8 | % m. 30
    r8
  \normalsize
      \staffTwo\once\stemUp a, \staffOne d~ d cs fs d g e | % m. 31
    a8 fs b a d g,~ g fs e | % m. 32
    fs8 r r r16 d' cs b as gs fs cs' b a g fs | % m. 33
    e16 b' as gs fs e d8 e4 fs8 b4 | % m. 34
    cs8 fs,4 g8 e fs b, as4 | % m. 35
    r8 fs' b gs4.~ gs8 cs a~ | % m. 36
    a8 gs ds e4.~ e8 cs fs | % m. 37
    ds8 gs es cs4.~ cs8 a d | % m. 38
    b4.~ b8 \staffTwo \voiceOne a b es, r r | % m. 39
  \barNumberCheck #40
    \staffOne \voiceTwo R1*9/8 | % m. 40
    r8 gs' ds es cs fs~ fs es4 | % m. 41
    fs8 r r r gs, cs a d b | % m. 42
    e8 cs fs e a d,~ d cs ds | % m. 43
    e8 b d~ d cs ds e4 fs8~ | % m. 44
    fs8 b e,~ e d cs b gs' b | % m. 45
    e,4.~ e8 d fs b,4.~ | % m. 46
    b8 a cs fs4. b8 e, a | % m. 47
    fs4. e4 a8~ a a gs | % m. 48
    a8 r r r4. r | % m. 49
  \barNumberCheck #50
    R1*9/8 | % m. 50
    r8 cs4~ cs8 b a~ a gs e | % m. 51
    cs8 d e~ e a, d~ d cs4~ | % m. 52
    cs8 b d gs, e' cs fs b,4 | % m. 53
  \set Score.measureLength = #(ly:make-moment 6 8)
    cs2. | % m. 54
  \bar "|."
}

bass = \relative c' {
  \global
  \barNumberCheck #1
  \oneVoice
    R1*9/8 | % m. 1
    R1*9/8 | % m. 2
    R1*9/8 | % m. 3
    a8 r r r gs cs a d b | % m. 4
    e8 cs fs e a d, ~ d cs ds | % m. 5
    e,8 r r r cs fs e a fs | % m. 6
    b8 gs cs b e a,~ a gs b | % m. 7
    cs,4.~ cs8 a d b e e, | % m. 8
    a8 a'4~ a8 gs e fs b, e | % m. 9
  \barNumberCheck #10
    cs8 fs d a' fs b e, a fs | % m. 10
    cs'4 b8 as b e, fs4.~ | % m. 11
    fs8 es gs a,4 b8 cs4 cs,8 | % m. 12
    fs8 r r r es' a fs b gs | % m. 13
    cs8 a d cs fs b,~ b gs as | % m. 14
    b8 b, e d g e fs4 fs,8 | % m. 15
    b8 r r r e a gs cs a | % m. 16
    ds8 b e a,4.~ a8 b fs | % m. 17
    gs4.~ gs8 cs,8 fs ds e4 | % m. 18
    a,4.~ a8 gs cs a b4 | % m. 19
  \barNumberCheck #20
    e,8 r r r4. r | % m. 20
    R1*9/8 | % m. 21
    R1*9/8 | % m. 22
    a8 r r r gs cs a d b | % m. 23
    e8 cs fs e a d,~ d cs ds | % m. 24
    e8 fs gs a r r r a, d | % m. 25
    b8 e cs fs d a' fs b16 a gs fs | % m. 26
    gs16 a b gs fs e ds e fs ds cs b cs b cs e ds cs | % m. 27
    ds16 fs e ds e fs gs fs gs a b cs ds fs e ds cs b | % m. 28
    e8 e, a gs e' a, fs' b,
  \staffOne\voiceTwo
      gs' | % m. 29
  \barNumberCheck #30
    a16 fs e d
  \staffTwo\oneVoice
      cs b a b cs a g fs g fs g b a g | % m. 30
    fs16 g a fs e d a'8. fs16 g a b a g b a g | % m. 31
    fs16 e d fs e d cs a b cs d e fs g a fs g a | % m. 32
    d,8 r r r cs fs d g e | % m. 33
    as8 fs b gs cs as d b e~ | % m. 34
    e8 d cs b g d e fs fs, | % m. 35
    b16 fs' b a gs fs e fs e d cs b a b a gs fs e | % m. 36
    ds16 b' e ds cs b cs gs' cs b a gs fs gs fs e ds cs | % m. 37
    b16 cs b a gs fs es cs' fs e d cs d e d cs b a | % m. 38
    gs16 a gs fs es ds \voiceTwo cs8 a' d cs fs ds | % m. 39
  \barNumberCheck #40
    \oneVoice
    gs8 es a fs b gs cs a d~ | % m. 40
    d16 e d cs b a gs8 es fs b, cs cs, | % m. 41
    fs8 a fs cs'4 a8 d b e | % m. 42
    cs8 fs d a' a, b cs fs b, | % m. 43
    e4 r8 r cs fs e a fs | % m. 44
    b8 gs cs a d fs, gs e gs | % m. 45
    a8 a, cs d,4 d'8~ d e b | % m. 46
    cs4.~ cs8 fs, b gs a4 | % m. 47
    d,8 d'4~ d8 cs fs d e e, | % m. 48
    a8 a d cs a' d, b' e, cs' | % m. 49
  \barNumberCheck #50
    d16 cs b a gs fs e fs gs e d cs d cs d fs e d | % m. 50
    cs16 b a b cs a d cs d e cs d e d e fs d e | % m. 51
    fs16 gs fs e d cs d e d cs b a gs b a gs fs e | % m. 52
    fs16 a gs fs e d cs cs' d e fs gs a d, e8 e, | % m. 53
  \set Score.measureLength = #(ly:make-moment 6 8)
    a2._\fermata | % m. 54
  \bar "|."
}


fugueNineteen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { } <<
      \new Voice \soprano
      \new Voice \mezzo
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \bass
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f fugue.nineteen
    }
  }
}
%\fugueNineteen
