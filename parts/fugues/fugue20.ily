\language "english"

global = {
  \key a \minor
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c' {
  \global
  \barNumberCheck #1
  \voiceOne
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    r8 e16 ds e8 fs g g16 fs g8 a | % m. 4
    b16 a g a b8 c ds, b r e | % m. 5
    fs16 g e fs g a fs g a8 g fs b | % m. 6
    e,8 fs16 gs a b c d e8 a, gs4 | % m. 7
    a8 a g f e c' b a | % m. 8
    gs8 e' d c b16 c d b c b a c | % m. 9
  \barNumberCheck #10
    d16 e f d e4~ e8 a, b16 c d8~ | % m. 10
    d8 c b a g e' d c | % m. 11
    b4 r8 a~ a g16 fs g a b g | % m. 12
    c4 r8 b a16 g a b c8 fs, | % m. 13
    b16 a c b a g fs g e8 e'16 f e8 d | % m. 14
    c8 c16 d c8 b a16 b c b a8 g | % m. 15
    fs'8 a r e d16 c e d c b d c | % m. 16
    b8 c d16 b a g e'32 fs e16 fs g fs8. g16 | % m. 17
    g2~ g8 g16 a g8 f | % m. 18
    e16 d c d e f g8~ g16 f e f g a bf g | % m. 19
  \barNumberCheck #20
    a8. bf16 g8. a16 f e f g a8 a, | % m. 20
    d16 g f e e8. d16 d4. e8 | % m. 21
    f2.~ f16 e d c | % m. 22
    b8 c4 b8 c4. bf8 | % m. 23
    a2~ a8 gs a b | % m. 24
    e,4~ e16 fs gs a b c b c d4~ | % m. 25
    d8 c4 b8~ b a16 gs a4~ | % m. 26
    a4 gs a8 a16 gs a8 b | % m. 27
    c8 c16 b c8 d e16 d c d e8 f | % m. 28
    gs,8 e r a b16 c a b c d b c | % m. 29
  \barNumberCheck #30
    d8 c b e a, a'4 g8~ | % m. 30
    g8 c16 b a g fs e ds8 b cs ds | % m. 31
    e16 d c b c4 b8 e16 ds e8 fs | % m. 32
    g8 g16 fs g8 a b,2~ | % m. 33
    b4. e16 d c b a b c8 b16 a | % m. 34
    g4 c~ c8 b16 a b8 cs | % m. 35
    d2~ d8 c16 b c8 d | % m. 36
    e8 a, a'4~ a16 gs a gs a8 b | % m. 37
    e,4. d16 c b8 e16 d c b a gs | % m. 38
    a8 r gs r a4 r | % m. 39
  \barNumberCheck #40
  \teeny
    R1 | % m. 40
    R1 | % m. 41
    R1 | % m. 42
  \normalsize
    r8 c16 b c8 d e e16 d e8 f | % m. 43
    g16 f e f g8 a b, g r c | % m. 44
    d16 e c d e f d e f8 e d g | % m. 45
    c,16 b d c b a g f e8 f16 g a b c d | % m. 46
    b8 a16 g c2 b4 | % m. 47
    c8 e16 f e8 d c cs d e | % m. 48
    a,8 d16 e d8 c b16 c d c b8 a | % m. 49
  \barNumberCheck #50
    g4 r r2 | % m. 50
  \teeny
    R1 | % m. 51
    \once \override MultiMeasureRest.staff-position = #4 R1 | % m. 52
  \normalsize
    r2 r8 d'16 e d8 c | % m. 53
    b8 b16 c b8 a g16 a b a g8 fs | % m. 54
    e'8 g r d c16 b d c b a c b | % m. 55
    a8 b c g d'16 e d e e8. d32 e | % m. 56
    f2~ f8 e16 f e8 d | % m. 57
    c8 c16 d c8 b a16 b c b a8 g | % m. 58
    f'8 a r e d16 c e d c b d c | % m. 59
  \barNumberCheck #60
    b4. a8~ a16 b gs a b4~ | % m. 60
    b16 c a b c4~ c16 d b c d c b a | % m. 61
    gs16 b c d e f g8~ g16 a g f g4~ | % m. 62
    g16 f e f g4~ g16 bf a g f e d cs | % m. 63
    d16 e d e e8. d16 d2~ | % m. 64
    d4 r r2 | % m. 65
    R1 | % m. 66
    r2 r8 e16 f e8 d | % m. 67
    c8 c16 d c8 bf a16 bf c bf a8 g | % m. 68
    f'8 a r e d16 cs e d cs b d c | % m. 69
  \barNumberCheck #70
    b8 cs d a e'2~ | % m. 70
    e16 cs d f g4~ g16 e f a bf4~ | % m. 71
    bf16 g a c d,8 e16 g c,4~ c16 f, g bf~ | % m. 72
    bf16 bf a g g8. f16 f4 c'4~ | % m. 73
    c1~ | % m. 74
    \once \override NoteColumn.force-hshift = 0 c8 a ef'4~ ef8 d c16 bf d c | % m. 75
    bf16 c d c bf a g f g a bf a g f e d | % m. 76
    e'2 r8 e16 d e8 f | % m. 77
    g8 g16 f g8 a bf16 a g a bf g a e | % m. 78
    f16 e d e f d e cs d c bf c d bf c a | % m. 79
  \barNumberCheck #80
    <b e gs>4 \fermata r4 a'2~ | % m. 80
    a8 e16 d e8 fs gs gs16 fs gs8 a | % m. 81
    b16 a gs a b8 c <b, ds>4 r8 e | % m. 82
    c8 b16 a c b a gs a4 r4 | % m. 83
    r2 r8 d16 cs d8 e | % m. 84
    f8 f16 e f8 g a16 g f g a8 bf | % m. 85
    cs,8 a r d ~ d16 c b c d e fs gs | % m. 86
    a1\fermata |
  \bar "|."
}

alto = \relative c' {
  \global
  \barNumberCheck #1
  \voiceOne
    r8 a16 gs a8 b c c16 b c8 d | % m. 1
    e16 d c d e8 f gs, e r a | % m. 2
    b16 c a b c d b c d8 c b e | % m. 3
    a,4 g8
  %\staffTwo \voiceOne
      fs e c' b a | % m. 4
    g16 fs e fs g8 a b16 a g a b8
  \staffOne \voiceTwo
      c~ | % m. 5
    c8 b16 a b8 e~ e d16 cs d4~ | % m. 6
    d8 c16 b c4~ c16 a' g f e d c b | % m. 7
    c16 b c4 d8 e16 d e4 f8~ | % m. 8
    f16 fs e fs gs8 a b4 r8 a | % m. 9
  \barNumberCheck #10
    g4~ g16 f e g fs4 gs | % m. 10
    a8 a g fs e c' b a | % m. 11
    g16 fs e fs g8 fs~ fs e16 ds e4~ | % m. 12
    e8 a16 ds, e2~ e8 ds | % m. 13
    e4. ds8 e r r4 | % m. 14
    r8 e fs g a r r4 | % m. 15
    r8 d, e fs g r r4 | % m. 16
    r2 r8 d'16 e d8 c | % m. 17
    b8 b16 c b8 a g4 a8 b | % m. 18
    c4 r8 d cs8. d16 e4~ | % m. 19
  \barNumberCheck #20
    e16 cs d8~ d16 b cs8 d4 r8 f, | % m. 20
    g16 cs d e cs4 d8 a16 bf a8 g | % m. 21
    f8 a b c d16 c b a g8 f~ | % m. 22
    f8 e d4 r16 a' g f e8 g~ | % m. 23
    g8 f16 g f8 e d d16 e d8 c | % m. 24
    b16 c d c b8 a gs' b r f | % m. 25
    e16 d f e d c e d c8 d e16 c b a | % m. 26
    f'16 d e f b,8. a16 a8 r r4 | % m. 27
    R1 | % m. 28
  \teeny
    R1 | % m. 29
  \barNumberCheck #30
    R1 | % m. 30
  \normalsize
    r2 r8 e'16 ds e8 fs | % m. 31
    g8 g16 fs g8 a b16 a g a b8 c | % m. 32
    ds,8 b r e fs16 g e fs g a fs g | % m. 33
    a8 g fs b e,4. ds8 | % m. 34
    e8 c'16 b a g fs e d8 g16 f e d cs b | % m. 35
    a8 d'16 c b a gs fs e4 a | % m. 36
    r8 a16 gs a8 b c c16 b c8 d | % m. 37
    e16 d c d e8 f gs, e r a | % m. 38
    b16 c a b c d b c d8 c b e | % m. 39
  \barNumberCheck #40
    a,4~ a16 f' d b g4~ g16 e' c a | % m. 40
    f8 g16 a g f e f e2~ | % m. 41
    e16 d e f g a b c d, e d e f4~ | % m. 42
    f16 a g f e8 a g2~ | % m. 43
    g8 c b a g g f e | % m. 44
    d16 g a b c2 b8 bf | % m. 45
    a8 r r4 r r8 d,~ | % m. 46
    d16 e c d e f d e f8 e d g | % m. 47
    e16 f e d c b a gs a8 a'16 bf a8 g | % m. 48
    f8 f16 g f8 e d16 e f e d8 c | % m. 49
  \barNumberCheck #50
    b'8 d r a g16 f a g f e g f | % m. 50
    e8 f g d a'16 b a b b8.\downprall a32 b | % m. 51
    c16 d c d d8.\downprall c32 d e16 d c b a g fs e | % m. 52
    fs8 d e fs g fs g a | % m. 53
    d,4. ds8 e e16 ds e8 r | % m. 54
    r8 g a b c g4 fs16 g | % m. 55
    a8 r r4 r2 | % m. 56
    r16 e' d c b a gs a b2~ | % m. 57
    b8 e,16 f e8 d c c16 d c8 bf | % m. 58
    a16 b cs b a8 g fs' b r e, | % m. 59
  \barNumberCheck #60
    d16 c e d c b d c b8 c d16 c e d | % m. 60
    c8 d e16 d f e d8 e f4~ | % m. 61
    f8 e r r16 bf' a4~ a16 cs e d | % m. 62
    e4~ e16 a, cs d e cs d8 r a16 g | % m. 63
    f8 bf a g~ g f16 e f g a f | % m. 64
    d4 r r2 | % m. 65
    R1 | % m. 66
    \once\tiny R1 | % m. 67
    r8 a'16 b a8 g f f16 g f8 e | % m. 68
    d16 e f e d8 cs bf' d r a | % m. 69
  \barNumberCheck #70
    g16 f a g f e g f e8 f g4 | % m. 70
    f4 e8 a~ a16 cs d8 g, c~ | % m. 71
    c16 e f8 bf,4~ bf16 g a c d,4 | % m. 72
    e8 f4 e8 f c'16 d c8 bf | % m. 73
    a8 a16 bf a8 g fs16 g a g fs8 ef | % m. 74
    \once \override NoteColumn.force-hshift = #1.3 d '8 fs r c bf16 a c bf a g bf a | % m. 75
    g8 r r4 r2 | % m. 76
    r8 a16 g a8 b cs cs16 b
  \voiceFour
      cs8 d | % m. 77
    e16 d cs d
  \voiceTwo
      e8 f g, e r a | % m. 78
    a8 d a g f d f f | % m. 79
    e4 %{ \fermata%}  r r8 a16 gs a8 b | % m. 80
    c8 c16 b c8 d e16 d c d e8 f | % m. 81
    gs,8 e r %82
  \voiceThree
      \shiftOff a s4 b8\rest \shiftOn \once \override NoteColumn.force-hshift = #1 b | % m. 82
    a4 \stemDown a8 d, \stemUp cs4 s | %m. 83
    s1 | % m. 84
  \voiceTwo
    b'8\rest a16 g a8 b cs cs16 b cs8 d | % m. 85
    e16 d cs d e8 f gs,4 r8
      << \voiceThree \stemDown \tieDown { d'8 ~ }
      \\ \voiceTwo {s8} >> | % m. 86
    <<
      \voiceThree { \once \override NoteColumn.force-hshift = #0.8 d8 e16 f <e cs>8 <d b> <cs a>2\fermata }
      \\
      \voiceTwo {r8 cs16 d r8 r16 gs, a2}
    >> | % m. 87
  \bar "|."
}

tenor = \relative c {
  \global
  \barNumberCheck #1
  \voiceOne
  \override MultiMeasureRest.staff-position = #-4
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
    R1 | % m. 5
  \revert MultiMeasureRest.staff-position
    R1 | % m. 6
    R1 | % m. 7
  \teeny
    R1 | % m. 8
    R1 | % m. 9
    R1 | % m. 10
  \normalsize
  \barNumberCheck #11
    r8 e16 ds e8 fs g g16 fs g8 a | % m. 11
    b16 a g a b8 c ds, b r e | % m. 12
    fs16 g e fs g a fs g a8 g fs b | % m. 13
    e,4 b'8 a gs e fs gs | % m. 14
    a8 r r4 r8 a b cs | % m. 15
    d8 r r4 r8 b a4 | % m. 16
    \shape #'( (0 . 0.5) (0 . 0.5) (0.5 . 0.5) (0.5 . 0.5) ) Tie
    g2 ~ g8 a4 d,8~ | % m. 17
    d8
  \clef treble
      g'16 a g8 f e e16 f e8 d | % m. 18
    c16 d e d c8 bf a' cs r g | % m. 19
  \barNumberCheck #20
    f16 e g f e d f e d8 e f16 e d c | % m. 20
  \clef bass
    bf8 a16 g a4~ a8 a b cs | % m. 21
    d8 r r4 \teeny r2 | % m. 22
    \once \override MultiMeasureRest.staff-position = #4 R1 | % m. 23
    \normalsize
    r2 r8 b16 c b8 a | % m. 24
    gs4. e8 d f16 e d8 c | % m. 25
    b8 c d b e4. f8~ | % m. 26
    f8 d e d c r r4 | % m. 27
    r8 a'16 gs a8 b c c16 b c8 d | % m. 28
    e16 d c d e8 f gs, e r a | % m. 29
    b16 c a b c d b c d8 c b e | % m. 30
    a,2~ a8 g16 fs g8 a | % m. 31
    b8 e4 ds8 e r r4 | % m. 32
    \override MultiMeasureRest.staff-position = #6
    \teeny
    R1 | % m. 33
    R1 | % m. 34
    R1 | % m. 35
    \normalsize
    \revert MultiMeasureRest.staff-position
    e2\rest r8 a,16 gs a8 b | % m. 36
    c8 c16 b c8 d e16 d c d e8 f | % m. 37
    gs,8 e r a b16 c a b c d b c | % m. 38
    d8 c b e a,4. g8~ | % m. 39
    g8 f16 e f4~ f8 e16 d e4~ | % m. 40
    e4 d~ d16 \once\override NoteColumn.X-offset = #1.25 c d e f g a b | % m. 41
    c2 ~ c4 ~ c16 e d c | % m. 42
    b8 e16 d c b a b c2~ | % m. 43
    c8 g4 d'8~ d e d c | % m. 44
    g4 r r r8 g | % m. 45
    a16 b g a b c a b c8 b a d | % m. 46
    g,4. c8 d16 f, g a b c d b | % m. 47
    g4 r \once \small r2 | % m. 48
    r8 a16 bf a8 g f f16 g f8 e | % m. 49
    d16 e f e d8 c b' d r a | % m. 50
    g16 f a g f e g f e8 f g d | % m. 51
    a'16 b a b b8. %{-\parenthesize \trill%} a32 b c2~ | % m. 52
    c8 fs, g a b d, e fs | % m. 53
    g4. a8 b2~ | % m. 54
    b8 e, fs g a d, e d16 e | % m. 55
    fs16 g e fs g a fs g a8 b16 c b c a b | % m. 56
    c8 d16 e d8 c b gs a b | % m. 57
    c8 e, fs gs a4 r8 e | % m. 58
    f8 g a bf a gs16 fs e8 a | % m. 59
    f8 e4 f16 ds e2~ | % m. 60
    e1~ | % m. 61
    e8 r r4 r8 e16 f e8 d | % m. 62
    cs8 cs16 d cs8 bf a4 r8 f''16 e | % m. 63
    d4. cs8 d a r4 | % m. 64
    r8 a16 gs a8 b c c16 b c8 d | % m. 65
    e16 d c d e8 f gs, e r a | % m. 66
    b16 c a b c d b cs d8 c b e | % m. 67
    a,4 r r8 a16 bf c8 bf | % m. 68
    a8
  \clef treble
      d16 e f g a8~ a g4 f8~ | % m. 69
    f8 e \once\tieDown d4~ d16 cs e d cs b d cs | % m. 70
    \once\tieDown d4~ d16 b cs e \once\tieDown f4~ f16 d e g | % m. 71
    \once\tieDown a4~ a16 f g bf e,8 f bf,4 | % m. 72
  \clef bass
    c2~ c8 c, d e | % m. 73
    f8 e f g a16 g fs g a bf c8 | % m. 74
    fs,8 a g fs g f ef d~ | % m. 75
    d8 g16 a g8 f e e16 f e8 d | % m. 76
    cs16 d e d cs8 b a' cs
  \staffOne \voiceTwo
      r a' | % m. 77
     \once \override Beam.positions = #'(-4 . -5) bf8.
  \staffTwo \voiceOne
      a16 g f e d cs4 r8 cs | % m. 78
    d8 f d a bf f bf d | % m. 79
    b4 %{ \fermata%}  r c r | % m. 80
    c4 r b r | % m. 81
    r8 b16 c d e
  \staffOne \voiceTwo
      fs gs <fs a>4 r8 e | % m. 82
    e8 f e4 e r8 e | % m 83
    a,8 a'16 bf a8 g f f16 g f8 e | % m 84
    d \staffTwo \voiceOne a16 b cs8 d e4 r8 d | % m 85
    g4 r8 f16 e d4 r8 d16 e | % m 86
    << \new Voice {\voiceOne \once \override NoteColumn.force-hshift = #0 f8 e16 d e8 f e2 }
    \\ \new Voice {
      \voiceThree \stemDown \once \override Rest.extra-offset = #'(1.75 . 0) d8\rest
      cs16 b cs8 d e2-\tweak font-size #-2 _\fermata } >> | % m 87
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
  \voiceTwo
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
    R1 | % m. 5
    R1 | % m. 6
    R1 | % m. 7
    r8 a16 gs a8 b c c16 b c8 d | % m. 8
    e16 d c d e8 f gs, e r a | % m. 9
  \barNumberCheck #10
    b16 c a b cs d b cs d8 c b e | % m. 10
    a,8 b cs ds e e16 ds e8 fs | % m. 11
    g4 r8 a b b,16 a g8 e | % m. 12
    a4 b c8 b a b16 a | % m. 13
    g8 a b4 e8 d c b | % m. 14
    a8 b' a g fs g fs e | % m. 15
    d8 e d c b g'4 fs8 | % m. 16
    g16 e d c b8 e c[ a] d[ d,] | % m. 17
    g8 r r4 r2 | % m. 18
  \override MultiMeasureRest.staff-position = #-10
  \small
    R1 | % m. 19
  \barNumberCheck #20
    R1 | % m. 20
  \normalsize
  \revert MultiMeasureRest.staff-position
    r8 a'16 bf a8 g f f16 g f8 e | % m. 21
    d16 e f e d8 c b' d r a | % m. 22
    g16 f a g f e g f e8 f g16 e d c | % m. 23
    f16 e d c d e f d b4 c8 d~ | % m. 24
    d8 e d c b d16 c b8 a | % m. 25
    gs8 a b gs a b c f | % m. 26
    d8 b e e, a a' c, e | % m. 27
    a,8 f' e d c a' g f | % m. 28
    e8 a16 g f e d c b8 c'16 b a g f e | % m. 29
  \barNumberCheck #30
    d8 r e r f e d e | % m. 30
    c8 b c a b4. a8 | % m. 31
    g8 e'16 ds e8 fs g g16 fs g8 a | % m. 32
    b16 a g a b8 c ds, b r e | % m. 33
    fs16 g e fs g a fs g a8 g fs b | % m. 34
    e,8 e16 ds e8 fs \once\tieUp g2 ~ | % m. 35
    g8 fs16 e fs8 gs a r r4 | % m. 36
    r8 a g f e4 r | % m. 37
    r8 a,16 b c8 d~ d c16 d e8 f~ | % m. 38
    f8 e16 d e8 c f e16 d e f e d | % m. 39
  \barNumberCheck #40
    cs8 a d c b g c b | % m. 40
    a8 b16 c b8 g c4 r8 b | % m. 41
    a4 r8 g f16 g' f e d c b a | % m. 42
    g8 g' a f c' c,16 b c8 d | % m. 43
    e8 e16 d e8 fs g16 f e f g8 a | % m. 44
    b,8 g r c d16 e c d e f d e | % m. 45
    f8 e d g c, d16 e f4~ | % m. 46
    f4 e8 a d, e16 f g8 g, | % m. 47
    c4 r8 e a,16 bf' a g f e d cs | % m. 48
    d2~ d4. e8 | % m. 49
  \barNumberCheck #50
    f2~ f16 g f e d4~ | % m. 50
    d8 c4 b8 c d g,4~ | % m. 51
    g8 a' g f e d c e | % m. 52
    d8 d16 e d8 c b b16 c b8 a | % m. 53
    g16 a b a g8 fs e' g r d | % m. 54
    c16 b d c b a c b a8 b c g | % m. 55
    d'4 e fs g | % m. 56
    a4 b8 a gs e fs gs | % m. 57
    a8 c, d e f4 r8 cs | % m. 58
    d8 e f cs d4 a~ | % m. 59
  \barNumberCheck #60
    a8 gs a4 e2~ | % m. 60
    e1~ | % m. 61
    e8 e'16 f e8 d cs cs16 d cs8 b | % m. 62
    a16 b cs b a8 g f4 r8 f' | % m. 63
    bf8 g a4 d,8 d16 cs d8 e | % m. 64
    f8 f16 e fs8 gs a16 gs fs gs a8 b | % m. 65
    c,8 a r d e16 f d e f g e fs | % m. 66
    g8 f e a d, a'~ a16 gs a gs | % m. 67
    a4~ a16 g f e f4~ f16 e d cs | % m. 68
    d8 r r4 r2 | % m. 69
  \barNumberCheck #70
  \override MultiMeasureRest.staff-position = #-12
  \teeny
    R1 | % m. 70
    R1 | % m. 71
    R1 | % m. 72
  \normalsize
  \revert MultiMeasureRest.staff-position
    r8 c16 d c8 bf a a16 bf a8 g | % m. 73
    f16 g a g f8 ef d' fs r c | % m. 74
    bf16 a c bf a g bf a g4. fs8 | % m. 75
    g1~ | % m. 76
    g2~ g8 e'16 d g f e d | % m. 77
    cs8 r r4 r8 e' cs a | % m. 78
    d,8 r r4 d8 r r4 | % m. 79
  \barNumberCheck #80
    d4 \fermata r <ds a'> r | % m. 80
    <e a>4 r <e d'> r | % m. 81
    r2 <fs a>4 << {\voiceOne r8 b } \\ {\voiceTwo r8 gs } >> | % m. 82
    <<
      \new Voice { \voiceOne
        c8[ d] c[ b] a a16 bf a8 g | % m. 83
        f8 f16 g f8 e d16 e f e d8 cs | % m. 84
        \voiceFour
        \override Beam.layer = #2
        \override Stem.layer = #4
        \once \override Beam.whiteout-style = #'outline
        \once \override Beam.whiteout = #1.5
        d8[ f] e[ d] g4 b,8\rest f' | % m. 85
        e4 b8\rest d b'2 | % m. 86
        \once \override NoteColumn.force-hshift = #0 a1 | %m 87
    }
    \\
      \new Voice {\voiceTwo
        a8 d, e4 a,2 ~ | % m. 83
        a1 ~ | % m. 84
        a1 ~ | % m. 85
        a1 ~ | % m. 86
        a1-\tweak font-size #-2 _\fermata | % m. 87
    }
    >>
  \bar "|."
  \mark\markup{\fontsize #-2 \musicglyph #"scripts.ufermata"}
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

fugueTwenty = \score {
  \new PianoStaff \with {
    edition-id = fugue.twenty
  } <<
    \new Staff = "Up" \with { } <<
      \new Voice \soprano
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \alto
      \new Voice \tenor
      \new Voice \bass
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f fugue.twenty
    }
  }
}
%\fugueTwenty
