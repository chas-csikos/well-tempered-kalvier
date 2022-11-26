\version "2.20.0"
\language "english"

global = {
  \key ef \major
  \time 4/4
}

staffOne = \change Staff = right
staffTwo = \change Staff = left

vOne = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    bf16 g f g ef af g af c8 bf r a16 f | % m. 1
    ef'8 d c4 \trill bf16 f'd bf af f' d af | % m. 2
    g8 af' g f ef16 c d ef f4~ | % m. 3
    f16 ef f g af f bf, af' g8 ef16 g c4~ | % m. 4
    c8 d,16 f bf4~ bf8 c,16 ef af8 g | % m. 5
    f4 g8 d ef4. f8 | % m. 6
    g4. a8 bf2~ | % m. 7
    bf16 bf g ef df bf' g df c8 ef af4~ | % m. 8
    af16 af f d c af' f c bf8 d g4~ | % m. 9
  \barNumberCheck #10
    g4~ g16 c, d ef f4. ef8~ | % m. 10
    ef16 d c d bf ef d ef g8 f r d16 bf | % m. 11
    af'8 g f4 ef16 bf' g ef df bf' g df | % m. 12
  \oneVoice
    c8 af' r af, d16 af' f d c af' f c | % m. 13
    b8 g' r g, c16 g' e c bf g' e bf | % m. 14
    a16 g' c, g af f' d af g f' d b g ef' c g | % m. 15
    fs16 ef' c a f d' b f e d' b g ef c' g ef | % m. 16
    d16 c' af f d b' a b %17
  \voiceOne
      c8 f ef d | % m. 17
    c16 a b c d4~ d16 c d ef f d g, f' | % m. 18
    ef16 g ef d c c' af f d f d c bf bf' g ef | % m. 19
  \barNumberCheck #20
    c ef c bf af af' f d b4 c~ | % m. 20
    c8 b c16 b c d ef8[ d] e[ fs] | % m. 21
    g16 d c d bf e d e  g8 f r4 | % m. 22
    f16 c bf c af d c d f8 ef r4 | % m. 23
    r16 bf ef c df4 r16 c f d ef4 | % m. 24
    r16 d g ef%{- \markup{\small \parenthesize \small "*"}%} f4 r16 ef g bf af f bf, g' | % m. 25 %ossia
    f8 af g f ef16 c d ef f4~ | % m. 26
    f16 ef f g af f bf, af' g bf g ef df4 | % m. 27
    c16 c' af f ef4 d16 f d bf af4~ | % m. 28
    af16 g f g ef af g af c8 bf r a16 f | % m. 29
  \barNumberCheck #30
    ef'8 d c4 \trill bf8 f' d bf | % m. 30
    bf'2~ bf8 ef, c af | % m. 31
    af'2~ af8 d, bf g | % m. 32
    g'4~ g16 c, d ef f ef d c bf af bf c | % m. 33
    f,4 r8 f ef'd r4 | % m. 34
    f8 ef4 d8 ef16 g ef c af4~ | % m. 35
    af16 f' d bf g8 ef' g,4 f | % m. 36
    ef1 \fermata | % m. 37
  \bar "|."
}

vTwo = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    R1 | % m. 1
    R1 | % m. 2
    ef16 d c d bf ef d ef g8 f r d16 bf | % m. 3
    af'8 g f4 \trill ef16 bf' g f ef c' a f | % m. 4
    d16 a' f ef df bf' g ef c g' ef c d bf' ef, c' | % m. 5
    d8[ df] c[ bf] af16 g af bf c4~ | % m. 6
    c16 bf c d ef c f, ef' d8 f d bf | % m. 7
    ef8 r r4 r8 ef c af | % m. 8
    d8 r r4 r8 d bf g | % m. 9
  \barNumberCheck #10
    c8 bf af4~ af16 c bf af g4 | % m. 10
    f4 bf~ bf8 af16 g af8 f | % m. 11
    d8 ef'4 d8 ef r
  \staffTwo \voiceOne
      ef,4~ | % m. 12
    ef16 ef c af g ef' c g f8 af d4~ | % m. 13
    d16 d b g f d' b f e8 g c4~ | % m. 14
    c4 b8 c d r r4 | % m. 15
  \once \override MultiMeasureRest.staff-position = #6
    R1 | % m. 16
    r2 c16 bf af bf g c b c | % m. 17
    \staffOne \voiceTwo
    ef8 d r b16 g f'8 ef d4 \trill | % m. 18
    c16 b c ef af4~ af8 bf,16 d g4~ | % m. 19
  \barNumberCheck #20
    g8 af,16 c f4~ f16 g af4 g8 | % m. 20
    f16 ef f g a4~ a16 g a bf c a d, c' | % m. 21
    bf4 bf~ bf16 df c bf af g f g | % m. 22
    af4 af~ af16 c bf af g f ef f | % m. 23
    g4 r16 bf g ef \staffTwo\voiceOne af,8 \staffOne\voiceTwo r r16 c' a f | % m. 24
    \staffTwo\voiceOne bf,8 \staffOne\voiceTwo  r r16 d' b g \staffTwo\voiceOne c,8 \staffOne\voiceTwo  r r4 | % m. 25
    r8 f' ef af, bf af16 g af d bf f | % m. 26
    d8 ef4 d8 ef r r16 bf' g ef | % m. 27
    \staffTwo\voiceOne af,8 \staffOne\voiceTwo  r r16 c' a f \staffTwo\voiceOne bf,8 \staffOne\voiceTwo  r r16 f' d bf | % m. 28
  \staffTwo \voiceOne
    ef,8 df' c bf af16 g af bf c4~ | % m. 29
  \barNumberCheck #30
    c16 bf c d ef c f, ef' d8 r r4 | % m. 30
  \staffOne  \voiceTwo
    r16 bf' ef g df bf df g c,8 r r4 | % m. 31
    r16 af d f c af c f bf,8 r r4 | % m. 32
    r8 bf af2 g8 ef~ | % m. 33
    ef16 d c d bf ef d ef gf8 f r d16 bf | % m. 34
    af'8 g f4 ef r8 f | % m. 35
    <<
      {
        \mergeDifferentlyDottedOn
        \voiceThree
        s1 |
        a,16\rest df8. c cf16 bf2\fermata |
      }
      \\
      {
        bf4. f'8~ f16 d ef bf~ bf c d \staffTwo \voiceOne af~ |
        af16 \staffOne \voiceTwo df \staffTwo \voiceOne bf g~ g af f8 g2_\fermata |
      }
    >> | % mm. 36 and 37
  \bar "|."
}

vThree = \relative c' {
  \global
  \oneVoice
  \barNumberCheck #1
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
    R1 | % m. 5
    bf16 g f g ef af g af c8 bf r a16 f | % m. 6
    ef'8 d c4 \trill bf16 f' d bf af f' d af | % m. 7
    g8 ef' r ef, af16 ef' c af g ef' c g | % m. 8
    f8 d' r d, g16 d' bf g f df' bf g | % m. 9
  \barNumberCheck #10
    e16 c' g e f c' af f d bf' f d ef bf' g ef | % m. 10
    bf8 af' g f ef16 c d ef f4~ | % m. 11
  \voiceTwo
    f16 ef f g af f bf, af' g8 bf g ef | % m. 12
    af8 r r4 r8 af f d | % m. 13
    g8 r r4 r8 g e c | % m. 14
    f8[ ef] d[ c] b[ g] c[ bf] | % m. 15
    a8[ a'] b[ g] c[ g] af[ ef] | % m. 16
    f8 ef16 f g8 g, c r r4 | % m. 17
    R1 | % m. 18
  \oneVoice
    R1 | % m. 19
  \barNumberCheck #20
    r2 g'16 ef d ef c f ef f | % m. 20
    af8 g r fs16 d c'8 bf a4 \trill | % m. 21
    g16 bf af bf g af f g e c' af f c f c af | % m. 22
    f16 af' g af f g ef f d bf' g ef bf ef bf g | % m. 23
    ef8[ ef'] f g af f g a | % m. 24
    bf8[ g] a b c c, d ef~ | % m. 25
    ef16 d c d bf ef d ef g8 f r d16 bf | % m. 26
    af'8 g f4 ef8 ef, f g | % m. 27
  \voiceTwo
    af8[ f] g[ a] bf bf c d | % m. 28
    ef2.~ ef16 d ef f | % m. 29
  \barNumberCheck #30
    g8. f16 ef8 f bf,16 f' d bf af f' d af | % m. 30
  \oneVoice
    g8 g' r ef, af16 ef' c af g ef' c g | % m. 31
    f8 f' r d, g16 d' bf g f d' bf f | % m. 32
    e16 c' g e f c' af f d bf' f d ef bf' g ef | % m. 33
    bf'8 f' d bf a' af r16 af f d | % m. 34
    bf8[ ef] bf'[ b] c4~ c16 c af f | % m. 35
    d8 bf r16 ef c af bf2 | % m. 36
  \voiceTwo
    ef,1_\fermata \bar "|." | % m. 37
}

fugueSeven = \score {
  \new PianoStaff \with { } <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff ="right" \with { } <<
      \new Voice \vOne %soprano
      \new Voice \vTwo %alto
    >>
    \new Staff = "left" \with { \clef bass } <<
      \new Voice \vThree %tenor
    >>
  >>
  \layout { 
    \context {
      \Score
      \editionID ##f fugue.seven
    }
  }
}
%\fugueSeven
