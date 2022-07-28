\version "2.20.0"
\language "english"

global = {
  \key bf \major
  \time 3/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c' {
  \global
  \barNumberCheck #1
  \oneVoice
    r8 f g f bf d, | % m. 1
    c8 a'16 g bf a g f c'8 ef, | % m. 2
    d8 bf'16 c a bf c d ef d c ef | % m. 3
  \voiceOne
    d16 c bf c a bf c d ef d c ef | % m. 4
    d8. c16 bf a bf c d8 f~ | % m. 5
    f8 bf, a bf e g~ | % m. 6
    g8 a,16 bf c8 c c c | % m. 7
    c16 bf a bf c8 c c c | % m. 8
    c4 r r16 d bf d | % m. 9
  \barNumberCheck #10
    ef8 r r4 r16 ef c ef | % m. 10
    f8 r r a,16 bf c bf a c | % m. 11
    bf4 r8 a16 bf c bf a c | % m. 12
    bf8 bf d bf f' a, | % m. 13
  \oneVoice
    g8 e'16 d f e d c g'8 bf, | % m. 14
    a8 f'16 g e f g a bf a g bf | % m. 15
    a16 g f g e f g a bf a g bf | % m. 16
    a16 bf a g fs g a bf c bf a c | % m. 17
    bf16 a g a fs g a bf c bf a c | % m. 18
    bf16 a g f ef f g a bf a g bf | % m. 19
  \barNumberCheck #20
    a16 g f ef d ef f g a g f a | % m. 20
    g16 f ef d c d ef f g fs e g | % m. 21
  \voiceOne
    fs16 e d c bf a bf c d8 g~ | % m. 22
    g8 c, bf c fs a~ | % m. 23
    a8 bf,16 c d8 d d d | % m. 24
    d16 c bf c d8 d d d | % m. 25
    d8 r r4 r16 ef c ef | % m. 26
    d8 r r4 r16 f d f | % m. 27
    g8 r r b,16 c d c b d | % m. 28
    c8 r r b16 c d c b d | % m. 29
  \barNumberCheck #30
    c8 ef d ef c a' | % m. 30
    bf8 d, c d bf g' | % m. 31
    a8 c, bf c a fs' | % m. 32
    g16 f e d
  \oneVoice
      cs d e f g f e g | % m. 33
    f16 ef d c b c d ef f ef d f | % m. 34
    ef16 c b a g f g c ef4~ | % m. 35
    ef8 af, g af d f~ | % m. 36
    f8 bf, c bf ef g, | % m. 37
    f8 d'16 c ef d c bf f'8 af, | % m. 38
    g8 ef'16 f d ef f g af g f af | % m. 39
  \barNumberCheck #40
    g16 f ef f d ef f g af g f af | % m. 40
  \voiceOne
    g8. f16 ef d ef f g8 bf~ | % m. 41
    bf8 ef, d ef a c~ | % m. 42
    c8 d,16 ef f8 f f f | % m. 43
    f16 ef d ef f8 f f f | % m. 44
    f8 r r a,16 bf c bf a c | % m. 45
    bf8 r r a16 bf c bf a c | % m. 46
    bf8 g' d4 c | % m. 47
  \barNumberCheck #48
    bf2. \fermata | % m. 48
  \bar "|."
}

mezzo = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    s2. | % m. 1
    s2. | % m. 2
    s2. | % m. 3
  \once \teeny R2. | % m. 4
    r8 bf d bf f' a, | % m. 5
    g8 e'16 d f e d c g'8 bf, | % m. 6
    a8 f'16 g e f g a bf a g bf | % m. 7
    a16 g f g e f g a bf a g bf | % m. 8
    a8. g16 f ef d ef f8 bf~ | % m. 9
  \barNumberCheck #10
    bf8 ef, d ef a c~ | % m. 10
    c8 d,16 ef f8 f f f | % m. 11
    f16 ef d ef f8 f f f | % m. 12
    f4 r
  \staffTwo \voiceOne
      r16 a, f a | % m. 13
    bf8 r r4 r16 bf g bf | % m. 14
    c8 r r e,16 f g f e g | % m. 15
    f8 r r e16 f g f e g | % m. 16
    f16 a bf c d8 d d d | % m. 17
    d16 c bf c d8 d d d | % m. 18
    d8 r r4 r | % m. 19
  \barNumberCheck #20
  \tiny
    R2. | % m. 20
    R2. | % m. 21
  \normalsize
  \staffOne \voiceTwo
    r8 d ef d g bf, | % m. 22
    a8 fs'16 e g fs e d a'8 c, | % m. 23
    bf8 g'16 a fs g a bf c bf a c | % m. 24
    bf16 a g a fs g a bf c bf a c | % m. 25
    bf16 c d ef d c bf af g8 c~ | % m. 26
    c8 f, ef f b d~ | % m. 27
    d8 ef,16 f g8 g g g | % m. 28
    g16 f ef f g8 g g g | % m. 29
  \barNumberCheck #30
    g8 r r4 r8 ef' | % m. 30
    f8 r r4 r8 d | % m. 31
    ef8 r r4 r8 c | % m. 32
    d8
  \staffTwo \voiceOne
      bf, a bf g cs | % m. 33
    d8 af g af f b | % m. 34
    c8 c ef c g' bf, | % m. 35
    af8 d16 c ef d c bf f'8 af, | % m. 36
    g16 bf c d ef d ef f g8 ef~ | % m. 37
    ef8 af, g af d f~ | % m. 38
    f8 g,16 af bf8 bf bf bf | % m. 39
  \barNumberCheck #40
    bf16 af g af bf8 bf bf bf | % m. 40
    bf8
  \staffOne \voiceTwo
      ef g ef bf' d, | % m. 41
    c8 a'16 g bf a g f c'8 ef, | % m. 42
    d8 bf'16 c a bf c d ef d c ef | % m. 43
    d16 c bf c a bf c d ef d c ef | % m. 44
    d8 \staffTwo \voiceOne f,,16 g a bf \staffOne \voiceTwo c d ef d c ef | % m. 45
    d16 c bf c a bf c d ef d c ef | % m. 46
    d8 bf' bf4 a8 ef | % m. 47
  \barNumberCheck #48
    d2. | % m. 48 \fermata
  \bar "|."

}

bass = \relative c {
  \global
  \barNumberCheck #1
  \oneVoice
    R2. | % m. 1
    R2. | % m. 2
    R2. | % m. 3
    R2. | % m. 4
    R2. | % m. 5
    R2. | % m. 6
    R2. | % m. 7
    R2. | % m. 8
    r8 f g f bf d, | % m. 9
  \barNumberCheck #10
    c8 a'16 g bf a g f c'8 ef, | % m. 10
    d8 bf'16 c a bf c d ef d c ef | % m. 11
    d16 c bf c a bf c d ef d c ef | % m. 12
  \voiceTwo
    d8 d,16 c bf a bf c d8 f~ | % m. 13
    f8 bf, a bf e g~ | % m. 14
    g8 a,16 bf c8 c c c | % m. 15
    c16 bf a bf c8 c c c | % m. 16
    f,8 r r fs'16 g a g fs a | % m. 17
    g8 r r fs16 g a g fs a | % m. 18
    g8 d c d g, ef' | % m. 19
  \barNumberCheck #20
    f8 c bf c f, d' | % m. 20
    ef8 bf a bf ef, c' | % m. 21
  \oneVoice
    d8 r r4 r16 g ef g | % m. 22
    c,8 r r4 r16 a' fs a | % m. 23
    d,8 r r fs,16 g a g fs a | % m. 24
    g8 r r fs16 g a g fs a | % m. 25
    g8 g' bf g c ef, | % m. 26
    d8 b'16 a c b a g d'8 f, | % m. 27
    ef8 c'16 d b c d ef f ef d f | % m. 28
    ef16 d c d b c d ef f ef d f | % m. 29
  \barNumberCheck #30
    ef16 d c bf a bf c d ef d c ef | % m. 30
    d16 c bf a g a bf c d c bf d | % m. 31
    c16 bf a g fs g a bf c bf a c | % m. 32
  \voiceTwo
    bf8 g f g e4 | % m. 33
    d8 f ef f d4 | % m. 34
    c8 r r4 r16 c ef c | % m. 35
    f8 r r4 r16 bf, d bf | % m. 36
    ef8 r r4 r16 ef g ef | % m. 37
    bf'8 r r4 r16 bf d bf | % m. 38
    ef8 r r d,16 ef f ef d f | % m. 39
  \barNumberCheck #40
    ef8 r r d16 ef f ef d f | % m. 40
    ef8
  \oneVoice
      r r4 r16 ef g ef | % m. 41
    f8 r r4 r16 f a f | % m. 42
    bf8 r r a16 bf c bf a c | % m. 43
    bf8 r r a16 bf c bf a c | % m. 44
    bf16 f d ef f8 f f f | % m. 45
    f16 ef d ef f8 f f f | % m. 46
    f16 ef d ef f8 ef f f, | % m. 47
  \barNumberCheck #48
    bf2._\fermata | % m. 48
  \bar "|."
}

fugueTwentyone = \score {
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
      \editionID ##f fugue.twentyone
    }
  }
}
%\fugueTwentyone
