\version "2.20.0"
\language "english"

global = {
  \key g \major
  \time 6/8
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    g8 a16 g fs g a8 b16 a g a | % m. 1
    b8 a g d c'4 | % m. 2
    b8 a g fs e'4 | % m. 3
    d8 e16 d c b a8 c16 b a g | % m. 4
    fs8 g a g a b | % m. 5
    a8 b16 cs d b cs b cs d e cs | % m. 6
    d16 cs d e fs d e d e fs g e | % m. 7
    fs8 g16 fs e d g4.~ | % m. 8
    g16 fs e g d g cs, g' b, g' a, g' | % m. 9
  \barNumberCheck #10
    fs8 d e fs g a~ | % m. 10
    a8 d, g~ g fs e | % m. 11
    d8 c b a4 r8 | % m. 12
    r8 r d~ d c a'~ | % m. 13
    a8 g4~ g8 a16 g fs e | % m. 14
    d2.~ | % m. 15
    d8 d c b a g | % m. 16
    c16 d e4~ e16 d c b a c | % m. 17
    b16 c d4~ d16 c b a g b | % m. 18
    a16 b c4~ c16 b a g fs a | % m. 19
  \barNumberCheck #20
    g16 a b4~ b8 e, a~ | % m. 20
    a16 g a8 b c16 d c b a g | % m. 21
    fs8. \prall e32 fs g8~ g16 b a g fs e | % m. 22
  %\pageBreak
    d8 r r r4. | % m. 23
    a'8 g16 a b a g8 fs16 g a g | % m. 24
    fs8 g a
  \oneVoice
      d e,4 \trill | % m. 25
    fs8 g a b cs,4 \trill | % m. 26
    d8 d16 e fs g a8 fs16 g a b | % m. 27
    \voiceOne
      c4 b8 \once \shiftOff a4. | % m. 28
    g16 g' fs e d fs e fs e d c e | % m. 29
  \barNumberCheck #30
    d16 e d c b d c d c b a c | % m. 30
    b16 a g b fs b e, b' d, b' cs, b' | % m. 31
    a16 g fs a e a d, a' cs, a' b, a' | % m. 32
    g16 fs e g d g cs, g' b, g' a, g' | % m. 33
    fs16 d' c b a g fs e d c b a | % m. 34
    g16 a b g c g d' g, e' g, f' g, | % m. 35
    e'16 c' b d a d gs, d' fs, d' e, d' | % m. 36
    c16 a b cs ds e fs g a b c ds, | % m. 37
    e8 fs16 e ds e fs8 g16 fs e fs | % m. 38
    g8 fs e b a'4 | % m. 39
  \barNumberCheck #40
    g8 fs e ds c'4 | % m. 40
    b8 c16 b a g fs8 a16 g fs e | % m. 41
    ds8 a' g fs e ds | % m. 42
    e8 d c d c b | % m. 43
    c16 c' b a g b a b a g fs a | % m. 44
    g16 a g fs e g fs g fs e ds fs | % m. 45
    e8 fs16 g a8~ a g16 a b8~ | % m. 46
    b8 a g fs16 g a8 ds, | % m. 47
    e4 b8 a4.~ | % m. 48
    a4 a8 g4.~ | % m. 49
  \barNumberCheck #50
    g4 g8 fs4.~ | % m. 50
    fs16 b cs b as b cs8 d16 cs b cs | % m. 51
    d8 cs b as g'4 | % m. 52
    fs8 g16 fs e d cs8 e16 d cs b | % m. 53
    as16 b cs as d as e' as, fs' as, g' as, | % m. 54
    fs'16 as, b fs' e32 d cs d e16 gs, as e' d32 cs b cs | % m. 55
    d2.~ | % m. 56
    d2.~ | % m. 57
    d16 fs,32 gs a16 e b' e,
  \oneVoice
      cs' e, d' fs, e' g, | % m. 58
    fs16 g32 a b16 fs cs' fs, d' fs, e' g, fs' a, | % m. 59
  \barNumberCheck #60
    g16 fs g b e g, fs b a cs d8~ | % m. 60
    d8 cs4 d8 e16 d cs d | % m. 61
    e8 fs16 e d e fs8 g16 fs e d | % m. 62
    cs8 b'4~ b16 a b a g fs | % m. 63
    e2.~ \trill | % m. 64
    e16 a32 g fs16 a e a d, a' cs, a' b, a' | % m. 65
    g16 fs e g d g cs, g' b, g' a, g' | % m. 66
    fs16 e d fs c fs b, fs' a, fs' g, fs' | % m. 67
    e16 d cs e b e a, e' g, e' fs, e' | % m. 68
    d16 fs, e g d' cs d4.~ \trill | % m. 69
  \barNumberCheck #70
  \voiceOne
    d2.~ | % m. 70
    d8 c4~ c8 b4~ | % m. 71
    b8 a4~ a16 g a g fs g | % m. 72
    fs16 d32 e fs16 d g d a' d, b' d, c' d, | % m. 73
    b'16 g' f e d c b a g f e d | % m. 74
    c16 e' d c b a gs fs e d c b | % m. 75
    a16 b cs a d a e' a, fs' a, g' a, | % m. 76
    fs'8 b g e a fs | % m. 77
    g4.~ g16 a a8. \prall g32 a | % m. 78
    b8 c16 b a b c8 d16 c b c | % m. 79
  \barNumberCheck #80
    d8 c b a g'4 | % m. 80
    fs8 e d cs bf'4 | % m. 81
    a16 g fs e d8 r16 g8 c,16 g' fs | % m. 82
    g16 fs32 e d16 g c, g' b,8 g' a, | % m. 83
    b16 d32 c b16 d a d g,8 c4~ | % m. 84
    c32 g a b c16 g d' g, e'32 b c d e16 c fs c | % m. 85
    <<
      {  g'4~ g16 fs g4. | }
      \\
      {
        \once \override NoteColumn.X-offset = #1.5
        f16\rest
        \once \override NoteColumn.X-offset = #-1.75 \stemDown
          d[ e \once\tieUp c] ~ <c a>8  d4. |
      }
    >> | % m. 86
  \bar "|."
  %\fermata
}

mezzo = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    s2. | % m. 1
    s2. | % m. 2
    s2. | % m. 3
    \once \teeny
    R2. | % m. 4
    d8 e16 d cs d e8 fs16 e d e | % m. 5
    fs8 e d a g'4 | % m. 6
    fs8 e d cs b'4 | % m. 7
    a8 b16 a g fs e8 g16 fs e d | % m. 8
    cs8 g' fs e d cs | % m. 9
  \barNumberCheck #10
    d16 e fs d g d a' d, b' d, c' d, | % m. 10
    b'4. c~ | % m. 11
    c8 fs, g~ g8 fs16 g a fs | % m. 12
    g16 fs g a b g a g a b c a | % m. 13
    b8 c16 b a g c4.~ | % m. 14
    c16 b a c g c fs, c' e, c' d, c' | % m. 15
    b8 f e d c b | % m. 16
    r8 r g' fs4.~ | % m. 17
    fs4 fs8 e4.~ | % m. 18
    e4 e8 d4. | % m. 19
  \barNumberCheck #20
    d8 c16 d e d c8 b16 c d c | % m. 20
    b8 c d g a,4 | % m. 21
    b8 c d e fs,4 | % m. 22
    g8 g16 a b cs d8 b16 cs d e | % m. 23
    fs8 e ds e d cs | % m. 24
    d8
  \staffTwo \voiceOne
      cs16 b a c b c b a g b | % m. 25
    a16 b a g fs a g a g fs e g | % m. 26
    fs16 g fs e d e fs g a b c d | % m. 27
    fs,8
  \staffOne \voiceTwo
      a' g~ \once \shiftOnn g g fs | % m. 28
    g8 r r r4. | % m. 29
  \barNumberCheck #30
    R2. | % m. 30
    r8 r d cs r r | % m. 31
    r8 r cs b r r | % m. 32
    r8 r b a r r | % m. 33
  \teeny
    \once \override MultiMeasureRest.staff-position = #-8
    R2. | % m. 34
    \once \override MultiMeasureRest.staff-position = #-14
    R2. | % m. 35
    \once \override MultiMeasureRest.staff-position = #-8
    R2. | % m. 36
    R2. | % m. 37
    R2. | % m. 38
    R2. | % m. 39
  \normalsize
  \barNumberCheck #40
    e'16 ds e fs g e fs e fs g a fs | % m. 40
    g8 a16 g fs e a4.~ | % m. 41
    a16 g fs a e a ds, a' cs, a' b, a' | % m. 42
    g8 fs16 g a g fs8 e16 fs g fs %\pageBreak | % m. 43
    e8 fs g c ds,4 | % m. 44
    e8 fs g a b,4 | % m. 45
    c16 b a b c d e ds e fs g a | % m. 46
    b4.~ b8 c fs, | % m. 47
    e16 fs g4~ g16 fs e d cs e | % m. 48
    d16 e fs4~ fs16 e d cs b d | % m. 49
  \barNumberCheck #50
    cs16 d e4~ e16 d cs b as cs | % m. 50
    b8 r r r4. | % m. 51
  \teeny
    \once\override MultiMeasureRest.staff-position = #-8 R2. | % m. 52
    R2. | % m. 53
    R2. | % m. 54
    R2. | % m. 55
  \normalsize
    b16 cs d b e b fs' b, gs' b, a' b, | % m. 56
    gs'8 e fs gs a b | % m. 57
    e,8.
  \staffTwo \voiceOne
      d16 cs b a b a g fs e | % m. 58
    d8 r r r4. | % m. 59
  \barNumberCheck #60
    r4. d8 e16 d cs d | % m. 60
    e8 fs16 e d e fs8 e d | % m. 61
    cs8 b'4 a8 b16 a g fs | % m. 62
    e8 g16 fs e d cs4 d8~ | % m. 63
    d16 g32 fs e16 g d g cs, g' b, g' a, g' | % m. 64
    fs16 g a4~ a16 g fs e d fs | % m. 65
    e16 fs g4~ g16 fs e d cs e | % m. 66
    d16 e fs4~ fs16 b, cs d e fs | % m. 67
    g16 a g fs e d cs8 r r | % m. 68
    R2. | % m. 69
  \staffOne \voiceTwo
    r4. r16 g'' f e d f | % m. 70
    e16 f e d c e d e d c b d | % m. 71
    c16 d c b a c b4. | % m. 72
    a8 r r \small r4. | % m. 73
  \teeny
    R2. | % m. 74
    \once \override MultiMeasureRest.staff-position = #-8
    R2. | % m. 75
    \once \override MultiMeasureRest.staff-position = #-14
    R2. | % m. 76
  \normalsize
    d8 c16 d e d c8 b16 c d c | % m. 77
    b8 c d e fs,4 | % m. 78
    g8 a'16 g fs g a8 b16 a g a | % m. 79
    b8 a g~ g d' cs | % m. 80
    d8 g, fs e cs'4 | % m. 81
    c4~ c16 b32 a b8 a4 | % m. 82
    b8 b a g4 fs8 | % m. 83
    g8 g f e4 ef8 | % m. 84
    d8 e <f b> <g c > g a | % m. 85
    b4 s8 b4. | % m. 86
   \bar "|."
}

bass = \relative c' {
  \global
  \oneVoice
  \barNumberCheck #1
    R2. | % m. 1
    R2. | % m. 2
    R2. | % m. 3
    R2. | % m. 4
    R2. | % m. 5
    R2. | % m. 6
    R2. | % m. 7
    R2. | % m. 8
    R2. | % m. 9
  \barNumberCheck #10
    R2. | % m. 10
    g8 a16 g fs g a8 b16 a g a | % m. 11
    b8 a g d c'4 | % m. 12
    b8 a g fs e'4| % m. 13
    d8 e16 d c b a8 c16 b a g | % m. 14
    fs4 e8 d16 e d c b a | % m. 15
    g16 a b g c g d' g, e' g, f' g, | % m. 16
    e'16 d c e b e a, e' g, e' fs, e' | % m. 17
    d16 c b d a d g, d' fs, d' e, d' | % m. 18
    c16 b a c g c fs, c' e, c' d, c' | % m. 19
  \barNumberCheck #20
    b8 a g a g fs | % m. 20
    g16 g' f e d f e f e d c e | % m. 21
    d16 e d c b d c d c b a c | % m. 22
    b16 c b a g a b cs d e fs g | % m. 23
    fs8 b b, e a a, | % m. 24
  \voiceTwo
    d8 e fs~ fs g cs, | % m. 25
    d8 r r r4. | % m. 26
    R2. | % m. 27
    d8 c16 d e d \oneVoice c8 b16 c d c | % m. 28
    b8 c d g a,4 | % m. 29
  \barNumberCheck #30
    b8 c d e fs,4 | % m. 30
    g16 a b4~ b16 a g fs e g | % m. 31
    fs16 g a4~ a16 g fs e d fs | % m. 32
    e16 fs g4~ g16 fs e d cs e | % m. 33
    d16 e fs d g d a' d, b' d, c' d, | % m. 34
    b'16 g' f e d c b a g f e d | % m. 35
    c16 d e fs gs a b c d e fs gs | % m. 36
    a16 g fs a e a ds, a' cs, a' b, a' | % m. 37
    g8 c b a b b, | % m. 38
    e16 fs g e a e b' e, cs' e, ds' e, | % m. 39
  \barNumberCheck #40
    e'8 r r r4. | % m. 40
    R2. | % m. 41
    R2. | % m. 42
    R2. | % m. 43
    R2. | % m. 44
    R2. | % m. 45
    R2. | % m. 46
    r16 b,32 cs ds16 b e b fs' b, g' b, a' b, | % m. 47
    g'16 fs e g d g cs, g' b, g' a, g' | % m. 48
    fs16 e d fs cs fs b, fs' a, fs' g, fs' | % m. 49
  \barNumberCheck #50
    e16 d cs e b e as, e' gs, e' fs, e' | % m. 50
    d16 fs e d cs b as cs b as gs fs | % m. 51
    b8 cs16 b as b cs8 d16 cs b cs | % m. 52
    d8 cs b as g'4 | % m. 53
    fs16 gs as fs b fs cs' fs, d' fs, e' fs, | % m. 54
    d'16 fs, g d' cs32 b as b cs16 e, fs cs' b32 as gs as | % m. 55
    b8 r r r r b, | % m. 56
    e16 fs gs e a e b' e, cs' e, d' e, | % m. 57
    cs'8
  \voiceTwo
      r r r r cs, | % m. 58
  \mergeDifferentlyDottedOn
    d8. e16 d cs b cs b a g fs | % m. 59
  \barNumberCheck #60
    e8 d' cs d4 b8 | % m. 60
    g8 a4 d8 cs b | % m. 61
    a2.~ | % m. 62
    a2.~ | % m. 63
    a4.~ a4 r8 | % m. 64
    r8 r16 e' d cs b4 r8 | % m. 65
    r8 r16 d cs b a4 r8 | % m. 66
    r8 r16 c b a g8 r r | % m. 67
    r4 r8 r16 a b cs d e | % m. 68
    fs16 g a8 a, d c16 d e d | % m. 69
  \barNumberCheck #70
  \oneVoice
    c8 b16 c d c b8 c d | % m. 70
    g8 a,4 b8 c d | % m. 71
    e8 fs,4 g8 fs16 g a b | % m. 72
    \once \override Beam.auto-knee-gap = #2
    c,8 c''16 b a g fs e d c b a | % m. 73
    g16 a b g c g d' g, e' g, f' g, | % m. 74
    e'16 e,32 fs gs16 e a e b' e, c' e, d' e, | % m. 75
    cs'16 a' g fs e d cs b a g fs e | % m. 76
    d2.~ | % m. 77
    d16 d' c d e d c8 b16 c d c | % m. 78
    b8 a16 b c b a8 g16 a b a | % m. 79
  \barNumberCheck #80
    g16 g'32 fs e16 g d g cs, a' b, a' a, a' | % m. 80
    d,16 c bf d a d g, e' fs, e' e, e' | % m. 81
    fs,8 d g e c d | % m. 82
    <<
      {
        s2. |
        d'8 g, b c32 b c d e16 c fs c |
        g'2.~ |
        g2.
      }
      \\
      {
        \stemUp g,4.~ g16 g32 a b16 g c g~ |
        \stemDown g8 g4~ g4.~ |
        g2.~ |
        g2.
      }
    >>
  \bar "|." | % m. 83-86
  \mark\markup{\fontsize #-2 \musicglyph #"scripts.ufermata"}
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

fugueFifteen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { } <<
      \new Voice \soprano
      \new Voice \mezzo
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \bass
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f fugue.fifteen
    }

  }
}
%\fugueFifteen
