\version "2.20.0"
\language "english"

global = {
  \key af \major
  \time 3/4
}
staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

vOne = \relative af' {
  \global
  \oneVoice
  r8 af16 g  af8 c ef, af |
  r8 bf16 af bf8 df ef,  bf'8 |
  \voiceOne
  c4 af' r8 ef |
  df4 g r8 g |
  af4 ef r8 ef |
  ef8 af16 g af8 f c8 ef |
  df4 af' r8 df, |
  df8 bf'16 af bf8 g df8 bf' |
  c,4 \oneVoice r16 ef f g  af16 f d f |
  \barNumberCheck #10
  bf,4 ~ bf16 d ef f16 g ef c  ef16 |
  af,16 bf g bf af c16 d ef f d  bf16 d |
  g,16 af f af g bf16 c d ef c16 af c |
  f,16 ef' d ef  af,16 ef' d ef f,16 ef' d ef |
  g,16 ef' d ef  bf16 ef d ef g,16 ef' d ef |
  af,16 ef' df ef  c16 ef bf ef af,16 ef' g, ef' |
  f,16 ef' g, ef'  af,16 d ef f g,16 bf af c |
  bf16 ef d c  bf16 af bf c \voiceOne f,8. ef16 |
  ef4 ef' r8 bf |
  af4 d r8 d |
  \barNumberCheck #20
  ef8 ef,16 d \oneVoice ef8 g  bf,8 ef |
  r8 f16 ef f8 af bf,  f'8 | % 22
  g8 bf16 af bf8 ef  g,8 bf | % 23
  ef,8 g16 f g8 bf ef,8 g | % 24
  c,8 r r gf''16 f ef  f16 df ef | % 25
  c16 df bf c af bf16 gf af f gf ef16 f | % 26
  df8 df'16 c df8  f8 bf, df | % 27
  g,8 c16 bf c8 ef af,8 c | % 28
  f,8 bf16 af bf8 df g,8 bf | % 29
  ef,8 af16 g af8 c  f,8 af | \barNumberCheck #30
  df,8 bf'16 af bf8 df g,8 bf | % 31
  ef,8 c'16 bf c8  ef8 af, c | % 32
  f,8 df'16 c df8  f8 bf, df | % 33
  g,8 bf ef, g af4 ~ | % 34
  af16 g af bf \voiceOne bf4.
  \prall af8 | % 35
  af8 ef'16 df \oneVoice ef8 c
  g8 bf | % 36
  \voiceOne af4 \prall \oneVoice ef' ~ ef16 gf,
  f16 ef | % 37
  df8 df'16 c df8 bf
  f8 af | % 38
  \oneVoice g4 \prall \oneVoice df' ~ df16 f,  ef16 df | % 39
   c16 c' bf c af c16 g c f, c' ef,16 c' |
   \barNumberCheck #40
  df,16 df' c df bf  df16 af df g, df'  f,16 df' | % 41
  ef,8 af16 \prall g af8 c f,8 af | % 42
  df8 g,16 \prall f g8 bf  ef,8 g | % 43
  \voiceOne c8 af af4 g | % 44
  af2. \fermata
  \bar "|."
}

vTwo = \relative a {
  \global
  \voiceOne
  <c ef>4 r r |
  <bf ef>4 r r |
  \staffOne \voiceTwo
  r4 <c' ef>4 r8 c |
  bf4 r r8 <bf df>8 |
  <af ef'>4 r r8 bf8 |
  af4 r r |
  bf r r8 af8 |
  g4 r r8 <g df'>  |
  af4 s2 |
  s1*3 |
  s4*9 |
  \barNumberCheck #17
  s2 d,4 |
  ef <g bf>4 r8 g |
  f4 r r8  <f af>8 |
  <ef g bf>
  s8*17 s1*3 s s4*9
  s4 g2 |
  af4 s2 |
  f4 s2 |
  s2. |
  ef4 s2
  s2. |
  s2.*3 |
  r8 <df f> <bf ef>2 |
  <c ef>2.
  \bar "|."
}

vThree = \relative af {
  \global
  \voiceTwo
  af4 r r |
  g4 r r |
  \oneVoice
  r8 af16 g af8 c ef, af |
  r8 bf16 af bf8 df ef, bf'
  r8 c16 bf c8 ef af, c |
  f,4 f' r |
  r8 bf,16 af bf8 df g, bf |
  ef,4 ef' r |
  r8 af,16 g af8 c f, af |
  d,8 g16 f g8 bf
  ef,8 g |
  c,8 f16 ef
  f8 af d, f |
  bf,8  ef16 d ef8 g c,  ef |
  af,8 f'16 ef  f8 af d, f |
  bf,8  g'16 f g8 bf ef, g |
  c,8 af'16 g af8 c f, af |
  d,8[ f] bf,[ d] ef[ c] |
  g8[ f]  g[ af] bf4 |
  r8 ef16 d  ef8 g bf, ef |
  r8  f16 ef f8 af bf, f' |
  g4 r8 ef16 f g f g ef |
  bf'8 bf, r bf16 c d c d bf |
  ef8 ef, r df''16 c bf c af bf |
  g16 af f g ef f df ef c df bf c |
  \once\override Beam.auto-knee-gap = #2
  af8 ef''16 df ef8 af c,  ef |
  af,8 c16 bf c8 ef af, c |
  f,4 ~  f16 af bf c df bf g bf |
  ef,4 ~ ef16 g af bf c af f af |
  df,16  ef c ef df f g af bf g
  ef16 g |
  c,16 df bf df c ef f g af f df f |
  bf,16 af' g af df, af' g af  bf, af' g af |
  c,16 af' g af  ef af g af c, af' g af |
  df,16  af' gf af f  af ef af df, af' c, af' |
  bf,16 df c ef df f ef df c ef df f |
  ef8 f16  df ef8 df ef ef, |
  af4 af' r |
  r8 f16 ef f8 af df, f |
  bf,4 af' r |
  r8 ef16 df ef8 g c, ef |
  af,16  af' g af f af  ef af df, af'  c, af' |
  bf,16 bf'  af bf g bf f bf ef, bf' df, bf' |
  c,8 c' r f,16  g af g af f |
  bf8 bf, r ef16 f g f g ef  |
  af8[ df,] ef df ef ef, |
  af2._\fermata
  \bar "|."
}

preludeSeventeen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { } <<
      \new Voice \vOne
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vTwo
      \new Voice \vThree
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.seventeen
    }
  }
}
%\preludeSeventeen
