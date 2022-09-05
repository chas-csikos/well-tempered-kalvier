\version "2.20.0"
\language "english"

global = {
  \key f \major
  \time 3/8
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

vOne = \relative c'' {
  \global
  \oneVoice
  \partial 8 r8
  \barNumberCheck #1
    R4. | % m. 1
    R4. | % m. 2
    R4. | % m. 3
    r8 r f, | % m. 4
  \barNumberCheck #5
    a8 g f | % m. 5
    g8 b,16 c d e | % m. 6
    f8 g16 f e d | % m. 7
    e16 d c d e f | % m. 8
    g8 f e | % m. 9
  \barNumberCheck #10
    f16 e d e f g | % m. 10
  \voiceOne
    a16 c bf a g f | % m. 11
    e4. \prall | % m. 12
    f8 a4 | % m. 13
    g8 c4 | % m. 14
    b8 e4 | % m. 15
    d4.~ | % m. 16
    d16 d c8 c | % m. 17
    d8 c bf | % m. 18
    c8 e,16 f g a | % m. 19
  \barNumberCheck #20
    bf8 c16 bf a g | % m. 20
    a16 g f g a bf | % m. 21
    c16 bf a bf c d | % m. 22
    e16 g f e d c | % m. 23
    b4. \prall | % m. 24
    c16 d e f g a | % m. 25
    bf,16 c d e f g | % m. 26
    a16 c bf a g f | % m. 27
    f8 e4 \prall | % m. 28
    f8 r r | % m. 29
  \barNumberCheck #30
    g4.~ | % m. 30
    g16 g f e d c | % m. 31
    f4.~ | % m. 32
    f16 f e d cs b | % m. 33
    e4.~ | % m. 34
    e8 a, d | % m. 35
    cs4 a'8 | % m. 36
    bf8 a g | % m. 37
    a8 cs,16 d e f | % m. 38
    g8 a16 g f e | % m. 39
  \barNumberCheck #40
    f16 a g f e d | % m. 40
    cs4.~ | % m. 41
    cs16 d32 c bf16 a g f | % m. 42
    bf8 a g | % m. 43
    a4.~ | % m. 44
    a16 bf e,8. \prall d16 | % m. 45
    d16 e f g a bf | % m. 46
    c16 bf c d ef d | % m. 47
    fs,16 \prall e d e fs g | % m. 48
    a4.~ | % m. 49
  \barNumberCheck #50
    a16 g a bf c d | % m. 50
  \oneVoice
    ef8 d c | % m. 51
    d8 fs,16 g a bf | % m. 52
    c16 bf d c bf a | % m. 53
    bf16 fs g a bf cs | % m. 54
    d16 g bf,8 \prall a16 g | % m. 55
  \voiceOne
    g8 bf4~ | % m. 56
    bf16 g c bf a g | % m. 57
    a4.~ | % m. 58
    a16 f bf a g f | % m. 59
  \barNumberCheck #60
    e8 f g | % m. 60
    a8 bf c | % m. 61
    d8 e f | % m. 62
    g4.~ | % m. 63
    g16 c, f ef d c | % m. 64
    d16 c ef d c bf | % m. 65
  \oneVoice
    c8 e,16 f g a | % m. 66
    bf16 a c bf a g | % m. 67
    a16 g bf a c bf | % m. 68
    d16 c e d f e | % m. 69
  \barNumberCheck #70
  \voiceOne
    g16 a, bf g a8~ | % m. 70
    a16 bf g8. f16 | % m. 71
  \set Score.measureLength = #(ly:make-moment 2 8)
    f4 \fermata | % m. 72
  \bar "|."
}

vTwo = \relative c' {
  \global
  \voiceOne
  \partial 8 c8
  \barNumberCheck #1
    d8 c bf | % m. 1
    c8 e,16 f g a | % m. 2
    bf8 c16 bf a g | % m. 3
    a16 g f g a bf | % m. 4
    c16 bf a bf c d | % m. 5
    e16 g f e d c | % m. 6
    b4. \prall | % m. 7
    c8 bf a | % m. 8
    bf16 a g a bf c | % m. 9
  \barNumberCheck #10
    a4 \staffOne \voiceTwo d8 | % m. 10
    e8 g c, | % m. 11
    c4.~ | % m. 12
    c4 f8 | % m. 13
    e4 a8 | % m. 14
    g4 c8~ | % m. 15
    c16 c b a g f | % m. 16
    e8. bf'16 a g | % m. 17
    f16 e d e f g | % m. 18
    a8 r r | % m. 19
  \barNumberCheck #20
    R4. | % m. 20
    r8 r f | % m. 21
    a8 g f | % m. 22
    g8 b,16 c d e | % m. 23
    f8 g16 f e d | % m. 24
    e16 d c d e c | % m. 25
    f4 r8 | % m. 26
    r8 r c' | % m. 27
    d8 c bf | % m. 28
    c8 e,16 f g a | % m. 29
  \barNumberCheck #30
    bf8 c16 bf a g | % m. 30
    a4.~ | % m. 31
    a8 bf16 a g f | % m. 32
    g4.~ | % m. 33
    g8 a16 g f e | % m. 34
    f16 e f g a g | % m. 35
    a16 bf a g f e | % m. 36
    d16 cs d f e d | % m. 37
    cs8 r a' | % m. 38
    bf8 a g | % m. 39
  \barNumberCheck #40
    a8 cs,16 d e f | % m. 40
    g8 a16 g f e | % m. 41
    f4 r8 | % m. 42
    cs4.~ | % m. 43
    cs16 a b cs d e | % m. 44
    f16 e cs4 | % m. 45
    d4 r8 | % m. 46
    R4. | % m. 47
    r8 r d | % m. 48
    ef8 d c | % m. 49
  \barNumberCheck #50
    d8 %50
  \staffTwo \voiceOne
      fs,16 g a bf | % m. 50
    c16 bf d c bf a | % m. 51
    bf16 d c bf a g | % m. 52
    fs8 r r | % m. 53
    g16 a bf c d a | % m. 54
    bf8 g fs | % m. 55
    g16 %56
  \staffOne \voiceTwo
      d' g f e d | % m. 56
    e4. | % m. 57
    r16 c f ef d c | % m. 58
    d4. | % m. 59
  \barNumberCheck #60
    c8 d e | % m. 60
    f8 g a | % m. 61
    bf4.~ | % m. 62
    bf16 g c bf a g | % m. 63
    a4.~ | % m. 64
    a8 %65
  \staffTwo \voiceOne
      d,, g~ | % m. 65
    g16 f bf a g f | % m. 66
    g8 bf,16 c d e | % m. 67
    f4.~ | % m. 68
    f4 bf8~ | % m. 69
  \barNumberCheck #70
    bf8 %70
  \staffOne \voiceTwo
      e f~ | % m. 70
    f8 e4 | % m. 71
  \set Score.measureLength = #(ly:make-moment 2 8)
    f4 | %\fermata % m. 72
  \bar "|."
}

vThree = \relative c {
  \global
  \voiceTwo
  \partial 8 r8
  \barNumberCheck #1
    R4. | % m. 1
    R4. | % m. 2
    R4. | % m. 3
    R4. | % m. 4
    R4. | % m. 5
    R4. | % m. 6
    R4. | % m. 7
    R4. | % m. 8
    r8 r c | % m. 9
  \barNumberCheck #10
    d8 c bf | % m. 10
  \oneVoice
    c8 e,16 f g a | % m. 11
    bf8 c16 bf a g | % m. 12
    a16 g f g a bf | % m. 13
    c16 b a b c d | % m. 14
    e16 g f e d c | % m. 15
    b4. \prall | % m. 16
    c8 d16 e f8 | % m. 17
    bf4. | % m. 18
    a16 c bf a g f | % m. 19
  \barNumberCheck #20
    e4. \trill | % m. 20
    f4 r8 | % m. 21
    R4. | % m. 22
    R4. | % m. 23
    R4. | % m. 24
    r8 r c' | % m. 25
    d8 c bf | % m. 26
    c8 e,16 f g a | % m. 27
    bf8 c16 bf a g | % m. 28
    a16 c bf a g f | % m. 29
  \barNumberCheck #30
    e4. \trill | % m. 30
    f8 g a | % m. 31
    d,4 r8 | % m. 32
    e8 f g | % m. 33
    cs,4 cs'8 | % m. 34
    d8 c bf | % m. 35
    a4.~ | % m. 36
    a4.~ | % m. 37
    a4.~ | % m. 38
    a4.~ | % m. 39
  \barNumberCheck #40
    a4 a8 | % m. 40
    bf8 a g | % m. 41
    a8 cs,16 d e f | % m. 42
    g8 a16 g f e | % m. 43
    f8. g16 f e | % m. 44
    d16 g a8 a, | % m. 45
    d,4 d'8 | % m. 46
    ef8 d c | % m. 47
    d fs,16 g a bf | % m. 48
    c16 bf d c bf a | % m. 49
  \barNumberCheck #50
  \voiceTwo
    bf8 r r | % m. 50
    fs'8 r r | % m. 51
    g8 r r | % m. 52
    ef8 r r | % m. 53
    d8 r r | % m. 54
    r16 c \noBeam d8 d | % m. 55
    g,8 a bf | % m. 56
  \oneVoice
    c8 d e | % m. 57
    f8 g a | % m. 58
    bf4.~ | % m. 59
  \barNumberCheck #60
    bf16 g c bf a g | % m. 60
    f16 c f ef d c | % m. 61
    bf16 c bf a g f | % m. 62
    e4 r8 | % m. 63
    f8 g a | % m. 64
  \voiceTwo
    bf4 r8 | % m. 65
    a4 r8 | % m. 66
    g4 r8 | % m. 67
    f8 g a | % m. 68
    bf8 c d | % m. 69
  \barNumberCheck #70
    e8 c f | % m. 70
  \oneVoice
    bf,8 c c, | % m. 71
  \set Score.measureLength = #(ly:make-moment 2 8)
    f4_\fermata | % m. 72
  \bar "|."
}

fugueEleven =  \score {
  \new PianoStaff \with {
    edition-id = fugue.eleven
  }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff ="Up" \with { } <<
      \new Voice \vOne %soprano
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vTwo %tenor
      \new Voice \vThree %bass
    >>
  >>
  \layout { }
}
%\fugueEleven
