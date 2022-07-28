\version "2.20.0"
\language "english"

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

global = {
  \key b \major
  \time 4/4
}

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    R1 | % m. 1
    R1 | % m. 2
  \teeny
    R1 | % m. 3
    R1 | % m. 4
  \normalsize
    r8 b as b cs4 fs,8 gs16 as | % m. 5
    b8 cs16 ds e8 ds cs2~ | % m. 6
    cs8 b16 as b8 cs16 b as gs fs e ds8 b' | % m. 7
    as8 b16 cs ds es fs8~ fs es16 ds es4 | % m. 8
    fs8 cs16 b cs8 ds bs4 cs8 ds | % m. 9
  \barNumberCheck #10
    e16 ds e fs e ds cs b as4 b8 cs | % m. 10
    ds8 ds e fs gs16 a gs fs e ds cs b | % m. 11
    as8 b16 cs ds8 cs b4~ b16 cs ds8 | % m. 12
    e16 fs gs8~ gs fs16 e ds4 r16 ds cs b | % m. 13
    as4 b8 cs ds2~ | % m. 14
    ds8 gs, as b cs as b cs | % m. 15
    ds2 cs~ | % m. 16
    cs8 b16 cs ds es fs8~ fs16 es fs gs es8. fs16 | % m. 17
    fs8 fs gs fs e4 b'8 as16 gs | % m. 18
    fs8 e16 ds cs8 ds e2 | % m. 19
  \barNumberCheck #20
    ds4 r8 fs~ fs16 es fs gs as gs as b | % m. 20
    es,4 fs~ fs8 e16 ds cs b cs ds | % m. 21
    e16 fs gs8~ gs16 gs fs e ds4~ ds16 cs8 b16~ | % m. 22
    b8 as16 b cs ds e8~ e ds16 e fs gs a8~ | % m. 23
    a16 gs a gs fs e ds cs bs8 cs ds4~ | % m. 24
    ds8 cs16 bs cs4~ cs16 e ds cs bs4 | % m. 25
    cs8 gs16 fs gs8 a es4 fs8 gs | % m. 26
    a16 gs a b a gs fs e ds4 e8 fs | % m. 27
    gs8 gs as b cs2~ | % m. 28
    cs8 b r4 r2 | % m. 29
  \barNumberCheck #30
    \once \teeny R1 | % m. 30
    r8 fs' ds e fs4 b,8 ds16 es | % m. 31
    fs8 gs16 as b8 as gs2 | % m. 32
    fs4~ fs8 e16 ds cs ds e8~ e16 gs fs e | % m. 33
    ds1 \fermata | % m. 34
  \bar "|."
}

alto = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    s1 | % m. 1
    s1 | % m. 2
    r8 fs ds e fs4 b,8 ds16 es | % m. 3
    fs8 gs16 as b8 as gs2 \trill | % m. 4
    fs4 r8 gs16 fs e ds cs b as8 fs' | % m. 5
    ds8 e16 fs gs as b8~ b as16 gs as b as gs | % m. 6
    fs4. e8~ e ds16 cs ds e fs gs | % m. 7
    cs,4 r8 ds'16 cs b8 gs r16 ds' cs b | % m. 8
    as4 r16 gs fs e ds4 e8 fs | % m. 9
    gs2~ gs8 cs, ds e | % m. 10
    fs8 b cs ds e r r4 | % m. 11
    r4 r8 fs, ds e16 fs gs as b8~ | % m. 12
    b8 as16 gs as4~ as8 gs16 fss gs8 as | % m. 13
    fss4 gs8 as b16 as b cs b as gs fs | % m. 14
    es4 fs8 gs as cs, ds e | % m. 15
    fs8 fs es fs gs4 cs,8 ds16 es | % m. 16
    fs8 gs16 as b8 as gs4~ gs16 as b8 | % m. 17
    as4 bs8 ds~ ds cs r4 | % m. 18
    r16 ds, e fs gs fs e ds cs4 cs'~ | % m. 19
    cs8[ b] ds[ cs] b4 fs'8 es16 ds | % m. 20
    cs8 b16 as gs8 as b2~ | % m. 21
    b4 as8 cs~ cs16 cs b as gs8 fs | % m. 22
    e4~ e8. fs16 gs as b8~ b cs16 ds | % m. 23
    e8 r r4 \small r2 | % m. 24
  %\voiceThree
  \teeny
    \once \override MultiMeasureRest.staff-position = #-2
    R1 | % m. 25
  \override MultiMeasureRest.staff-position = #-10
    R1 | % m. 26
    R1 | % m. 27
    \once \override MultiMeasureRest.staff-position = #-4
    R1 | % m. 28
  \normalsize
  \revert MultiMeasureRest.staff-position
  %\voiceTwo
    r8 b as b cs4 fs,8 gs16 as | % m. 29
  \barNumberCheck #30
    b8 cs16 ds e8 ds cs2~ | % m. 30
    cs8 b16 as b8 cs16 b as gs fs e ds8 b' | % m. 31
    as8 b16 cs ds es fs8~ fs e16 ds e4~ | % m. 32
    e8 ds16 cs b2 as4 | % m. 33
    b1 | % m. 34 \fermata
  \bar "|."
}

tenor = \relative c' {
  \global
  \barNumberCheck #1
  \voiceOne
    r8 b as b cs4 fs,8 gs16 as | % m. 1
    b8 cs16 ds e8 ds cs2 \trill | % m. 2
    b4. cs16 b as gs fs e ds8 b' | % m. 3
    as8 b16 cs ds es fs8~ fs e16 ds e b e8~ | % m. 4
    e8 ds cs b~ b as16 gs as8 ds | % m. 5
    gs,4 r8 gs'16 fs e8 cs r fs16 e | % m. 6
    ds8 cs b gs fs4 r | % m. 7
  \teeny
  \override MultiMeasureRest.staff-position = 4
    R1 | % m. 8
    R1 | % m. 9
    \once \override MultiMeasureRest.staff-position = 10
    R1 | % m. 10
  \revert MultiMeasureRest.staff-position
  \normalsize
  \barNumberCheck #11
    \once\small r2 r8 b as b | % m. 11
    cs4 fs,8 gs16 as b8 cs16 ds e8 ds | % m. 12
    cs2 b8 r r4 | % m. 13
    r8 ds16 e ds cs b as gs4 r | % m. 14
    r8 cs16 ds cs b as gs fs e fs gs fs e ds cs | % m. 15
    b8 r r4 r8 b' as gs | % m. 16
    fs4~ fs16 gs fs es ds cs ds b cs4~ | % m. 17
    cs8 fs16 e fs gs as bs cs8 b16 as gs fs gs as | % m. 18
    b2~ b16 b as gs fs e ds cs | % m. 19
  \barNumberCheck #20
    b16 cs ds e fs gs as fs gs cs, ds es fs b, b'8~ | % m. 20
    b16 as b cs ds cs b as gs2~ | % m. 21
    gs8 fs16 e fs4~ fs r | % m. 22
    \once \override MultiMeasureRest.staff-position = #6 \once\tiny R1 | % m. 23
    r8 e' ds e fs4 bs,8 cs16 ds | % m. 24
    e8
  \staffOne \voiceTwo
      fs16 gs a8 gs fs4~ fs16 a gs fs | % m. 25
    e4 r16 cs
  \staffTwo \voiceOne
      b a gs4 a8 b | % m. 26
    cs2~ cs8 fs, gs a | % m. 27
    b8 b cs %28
  \staffOne \voiceTwo
      ds e16 b' as gs fs e ds %28
  \staffTwo \voiceOne
      cs | % m. 28
    ds8 r r4 r16 ds cs b as gs fs e | % m. 29
  \barNumberCheck #30
    fs16 ds e fs gs as b8~ b4 as8. gs16 | % m. 30
    fs4. e8~ e ds16 cs ds8 gs | % m. 31
    cs,4 r r2 | % m. 32
    r2 r8 cs'16 ds cs b as gs | % m. 33
    fs1 | % m. 34 \fermata
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
  \voiceTwo
  \tiny
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
    R1 | % m. 5
    R1 | % m. 6
  \normalsize
    r8 fs ds e fs4 b,8 ds16 es | % m. 7
    fs8 gs16 as b8 as gs2-\parenthesize \trill | % m. 8
    fs4 r r8 gs16 a gs fs e ds | % m. 9
  \barNumberCheck #10
    cs8 cs' ds e fs fs,16 gs fs e ds cs | % m. 10
    b16 as b cs b a gs fs e8 r r4 | % m. 11
    r8 e' ds e16 fs gs4. fs8 | % m. 12
    e4 fs b8 b,16 as b8 cs | % m. 13
    ds4 r8 cs b gs as b | % m. 14
    cs4 r8 b as2~ | % m. 15
    as16 as b cs b as gs fs es8 es' fs es | % m. 16
    ds4. cs8 b[ gs] cs[ cs,] | % m. 17
    fs8 r r4 r2 | % m. 18
    R1 | % m. 19
  \barNumberCheck #20
    R1 | % m. 20
    r2 r8 b as b | % m. 21
    cs4 fs,8 gs16 as b8 cs16 ds e8 ds | % m. 22
    cs2 b8 b'16 cs b a gs fs | % m. 23
    e4 a ds,16 cs' bs as gs fs e ds | % m. 24
    cs16 b a gs fs e ds cs ds8 e16 fs gs8 gs | % m. 25
    cs,4 r r8 cs'16 d cs b a gs | % m. 26
    fs8 fs' gs a b b,16 cs b a gs fs | % m. 27
    e16 b' e fs e ds cs b as8 fs gs as | % m. 28
    b16 cs ds e fs gs as b e,2 | % m. 29
  \barNumberCheck #30
    ds4 cs8 gs'16 fs e ds cs ds e gs fs e | % m. 30
    ds4 gs, fs2~ | % m. 31
    fs4 r16 gs as b cs ds e fs gs as b gs | % m. 32
    as16 gs fs e ds cs ds e fs2 | % m. 33
    b,1 \fermata | % m. 34
  \bar "|."
}

fugueTwentythree = \score {
  \new PianoStaff \with {
    edition-id = fugue.twentythree
  } <<
    \new Staff = "Up" \with { } <<
      \new Voice \soprano
      \new Voice \alto

    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \tenor
      \new Voice \bass
    >>
  >>
  \layout{}
}
%\fugueTwentythree
