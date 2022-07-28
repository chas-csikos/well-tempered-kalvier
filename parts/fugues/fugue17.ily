\version "2.20.0"
\language "english"

global = {
  \key af \major
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    R1 | % m. 1
  \teeny
    R1 | % m. 2
    R1 | % m. 3
    \once \tiny R1 | % m. 4
  \normalsize
    r4 af8 ef' c[ af] f'[ df] | % m. 5
    ef2 ~ ef4 af4 | % m. 6
    af4 g f2~ | % m. 7
    f16 bf, c d ef4~ ef8 af df, bf' | % m. 8
    df,4 c bf2 | % m. 9
  \barNumberCheck #10
    af2~ af16 af bf c df4~ | % m. 10
    df16 bf c ef af g af bf c bf af g f g af c | % m. 11
    bf16 af g f ef f g bf af g f ef d ef f af | % m. 12
    g16 f e g f e f g c,8 f~ f g16 e | % m. 13
    f16 e f g af2 g4~ | % m. 14
    g4 f2 e4 | % m. 15
    f4~ f16 ef df c bf af g af bf df c bf | % m. 16
    a16 c df ef f ef df c bf df gf f ef df c bf | % m. 17
    a4 bf16 c df8~ df c16 df ef4~ | % m. 18
    ef16 c df f bf8 f gf ef af[ ef] | % m. 19
  \barNumberCheck #20
    f8 df16 f gf8 df ef c f[ c] | % m. 20
    df2. c8 f | % m. 21
    d8 bf ef2 d4 | % m. 22
    ef4 r r2 | % m. 23
    r4 af,8 ef' c[ af] gf'[ ef] | % m. 24
    f4 f8 g ef4 ef8 f | % m. 25
    df4 df8 bf' c, df16 bf c8 af' | % m. 26
    bf,4 r16 ef f g af4~ af16 g f af | % m. 27
    g2.~ g16 c, f8~ | % m. 28
    f16 ef df f ef2 df4~ | % m. 29
  \barNumberCheck #30
    df16 c bf df c8 f df[ bf] gf'[ ef] | % m. 30
    f4 af8 f g4 bf8 g | % m. 31
    af8 f df4~ df8 ef c[ f] | % m. 32
    c4 bf~ bf8 af16 g af8 ef' | % m. 33
    c8[ af] f'[ df] ef g, af4~ | % m. 34
    af4 g af2 \fermata | % m. 35
  \bar "|."
}

alto = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    s1 | % m. 1
    s1 | % m. 2
    s1 | % m. 3
    s1 | % m. 4
  \voiceTwo
    R1 | % m. 5
    r4 ef,8 af g[ ef] c'[ af] | % m. 6
    bf4~ bf16 ef, f g af bf c bf af g f af | % m. 7
    g2 f | % m. 8
    r16 ef f g af2 g4 | % m. 9
  \barNumberCheck #10
    af8 g16 f ef df c df ef8 r r af, | % m. 10
    af'8 r r4 r2 | % m. 11
    \once \teeny R1 | % m. 12
    r4 f8 c' af[ f] df'[ bf] | % m. 13
    c8 d16 e f8 c df[ bf] ef[ bf] | % m. 14
    c8[ af] df[ af] bf16 c df c bf af g bf | % m. 15
    af4 r r2 | % m. 16
    R1 | % m. 17
    r4 f8 bf gf[ ef] c'[ a] | % m. 18
    bf4 r16 f gf af bf af gf f ef f gf bf | % m. 19
  \barNumberCheck #20
    af16 gf f ef df ef f af gf f ef df c df ef gf | % m. 20
    f4 f8 bf g[ ef]~ ef[ af] | % m. 21
    f8 d r g af16 bf c bf af g f af | % m. 22
    g16 af bf g ef8 bf' g[ ef] df'[ bf] | % m. 23
    c4 r r c8 ef~ | % m. 24
    ef8[ af,] bf[ df] ~ df[ g,] a[ c] ~ | % m. 25
    c8 f, bf2 af4~ | % m. 26
    af16 g af bf c4~ c16 df ef c df4~ | % m. 27
    df16 c bf df c4~ c16 bf af g af8. af16 | % m. 28
    g8 r ef af f[ df] bf'[ g] | % m. 29
  \barNumberCheck #30
    af4 r r r8 <ef' c> | % m. 30
    ef8 df d\rest <f d> f8 ef d\rest <g e> | % m. 31
    <f c>8 b,\rest g\rest bf g[ <bf g>] s[ s] | % m. 32
    af4. g8 <f c>4 r8 <bf ef,> | % m. 33
    <af ef>8 r r <bf f> <bf ef,> r r f | % m. 34
    bf,16 c df f ef df c df c2 | % m. 35 % \fermata
  \bar "|."
}

tenor = \relative c' {
  \global
  \barNumberCheck #1
  \voiceOne
    r4 af8 ef' c af
  \staffOne \voiceTwo
      f' df | % m. 1
    ef4~ ef16 df c df ef f g ef af bf c bf | % m. 2
    af16 g f af g2 f4~ | % m. 3
    f16 ef d f ef4. df16 c df f bf af | % m. 4
    g16 f
  \staffTwo \voiceOne
      ef df c bf c df ef4 af, | % m. 5
    g4 af16 bf c8 bf8. bf16 af8 c | % m. 6
    f,8 r r4 r2 | % m. 7
  \teeny
    \once \override MultiMeasureRest.staff-position = #4
    R1 | % m. 8
    R1 | % m. 9
  \normalsize
  \barNumberCheck #10
    r4 af8 ef' c[ af] f'[ df] | % m. 10
    ef4 ef2 df4~ | % m. 11
    df4 c2 bf4~ | % m. 12
    bf4 af8 g~ g16 bf af g f e f g | % m. 13
    af16 bf af g f8 r r2 | % m. 14
  \teeny
  \override MultiMeasureRest.staff-position = #4
    R1 | % m. 15
  \override MultiMeasureRest.staff-position = #6
    R1 | % m. 16
  \revert MultiMeasureRest.staff-position
  \normalsize
    r4 bf8 f' df[ bf] gf'[ ef] | % m. 17
    f4 bf,2 a16 bf c a | % m. 18
    f8 bf16 c df2 c4~ | % m. 19
  \barNumberCheck #20
    c4 bf2 a4 | % m. 20
    bf16 ef df c bf af g f ef df' c bf af  g f g | % m. 21
    af16 c bf af g f ef df c8[ af'] bf[ bf,] | % m. 22
    ef4~ ef16 f g af bf c df c bf af g bf | % m. 23
    af16 ef f g af bf c df ef f gf f ef df c ef | % m. 24
    df16 ef f ef df c bf df c df ef df c bf a c | % m. 25
    bf16 c df c bf af g bf af bf af g f ef f df | % m. 26
    ef16 df c bf af8 r r2 | % m. 27
    r4 g'8 c af[ f] d'[ b] | % m. 28
    c16 ef, f g af bf c bf af g f g af g f ef | % m. 29
  \barNumberCheck #30
    f16 ef df f ef8 r r4 r8
  \staffOne \voiceFour
      s | % m. 30
    af'4 r8 s bf4 r8 s | % m. 31
    s8 r a,4\rest s8 s <af' c>[ <af f>] | % m. 32
    \once \override NoteColumn.force-hshift = #0.3
    ef4 df s s8 s | % m. 33
    s8 s s s s d,\rest  \staffTwo \voiceOne r bf' | % m. 34
    bf4 ef, ef2 | % m. 35 %\fermata
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
  \voiceTwo
    R1 | % m. 1
  \oneVoice
    r4 ef8 af g[ ef] c'[ af] | % m. 2
    bf8[ ef,] bf'[ g] af ef af f | % m. 3
    g4~ g16 c, df ef f g af f bf c df c | % m. 4
  \voiceTwo
    bf16 af g bf af4~ af16 af, bf c df ef f ef | % m. 5
    df16 c bf df c8. d16 ef f g8~ g16 g f ef | % m. 6
    d16 bf c d ef4~ ef8 af d, bf' | % m. 7
    ef,4~ ef16 ef f g af bf c bf af g f af | % m. 8
    g8 ef r16 af, bf c df ef f ef df c bf df | % m. 9
  \barNumberCheck #10
    c4~ c16 df ef c f4~ f16 ef f df | % m. 10
    af'16 g af bf c8 g af f bf f | % m. 11
    g8 ef af ef f d g d | % m. 12
    e8[ c] d[ e] f4 bf, | % m. 13
    f'4 r16 f, g af bf af g f ef f g bf | % m. 14
  \oneVoice
    af16 g f ef df ef f af g8[ bf] c[ c,] | % m. 15
    f16 c' d e f4~ f8[ bf] e,[ c'] | % m. 16
  \voiceTwo
    ef,8 a df,4 gf r8 gf16 f | % m. 17
    ef16 gf f ef df c bf df ef f gf ef f4 | % m. 18
    bf,4 r r2 | % m. 19
  \barNumberCheck #20
  \teeny
    R1 | % m. 20
    R1 | % m. 21
    R1 | % m. 22
    R1 | % m. 23
    R1 | % m. 24
    R1 | % m. 25
    R1 | % m. 26
  \normalsize
    r4 af8 ef' c[ af] f'[ df] | % m. 27
    ef4 e16 bf' af g f2 | % m. 28
    c2 df | % m. 29
  \barNumberCheck #30
    af4~ af16 f g af bf c df ef df c bf af | % m. 30
  \oneVoice
    df16 c df f ef d c bf ef d ef g f e d c | % m. 31
    f16 g af f bf af g f ef df c bf af bf c df | % m. 32
    ef16 df c df ef8 ef, f4 r16 ef f g | % m. 33
    af16 bf c ef df c bf af g f ef df
  \voiceTwo
      c ef df f | % m. 34
    ef2 af2 \fermata
  \bar "|."
}

fugueSeventeen = \score {
  \new PianoStaff \with {
    edition-id = fugue.seventeen
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
%\fugueSeventeen
