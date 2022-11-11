\version "2.20.0"
\language "english"

global = {
  \key  c \minor
  \time 4/4
  \set  Score.tempoHideNote = ##t
}

staffOne = \change Staff = right
staffTwo = \change Staff = left

%soparno
vOne = \relative c''' {
  \global
  \barNumberCheck #1
    \voiceOne
    \teeny
    \override MultiMeasureRest.staff-position = #2
      R1*2 | %1-2
    \override MultiMeasureRest.staff-position = #0
    \normalsize
    \voiceOne
    r8 g16 fs g8 c, ef g16 fs g8 a | %3
    d, g16 fs g8 a c,16 d ef4 d16 c | %4
  \barNumberCheck #5
    bf8 ef16 d ef8 g, af f'16 ef f8 a, | %5
    bf g'16 f g8 b, c d16 ef f4 ~ | %6
    f8 ef16 d c bf af g f8 af' g f | %7
    ef d ef f b, c d b | %8
    c g'16 fs g8 d ef4 r8 e | %9
  \barNumberCheck #10
    f f16 e f8 c d4 r8 d | %10
    ef ef16 d ef8 bf c ef16 d ef8 f | %11
    bf, ef16 d \oneVoice ef8 f af,16 bf c4 bf16 af | %12
    g ef f g af bf c d ef d c d ef f g a | %13
    bf f, g af bf c d e f ef d ef f g a b | %14
  \barNumberCheck #15
    \voiceOne c8 b16 a g f ef d c8 ef d c | %15
    bf a bf c fs,! g a! fs | %16
    g d'16 c d8 r r e16 d e8 r | %17
    r fs16 e fs8 r r g,16 f g8 r | %18
    r a16 g a8 r r b16 a b8 r | %19
  \barNumberCheck #20
    r c16 b c8 g af c16 b c8 d | %20
    g, c16 b c8 d f,16 g af4 g16 f | %21
    ef8 c'16 b c8 g af4 r8 a | %21
    bf bf16 a bf8 f g4 r8 g ~ | %21
    g af16 bf c b c af f2 ~ | %21
  \barNumberCheck #25
    f8 d'16 c d8 f, ef ef'16 d ef8 g, | %25
    f f'16 ef f8 af, g16 f' ef d c b a g | %26
    c8 f ef d r af g f | %27
    g f16 ef f8 d af' g r a  | %28
    b c f,16 ef d c c8 c'16 b c8 g | %29
  \barNumberCheck #30
    af c16 b c8 <af b d> g c16 b c8 d | %30
    f,16 g af4 g16 f e2 | %31
  \bar "|."
}

%alto
vTwo = \relative c'' {
  \global
  \voiceTwo
  \barNumberCheck #1
    r8 c16 b c8 g af c16 b c8 d | %1
    g, c16 b c8 d f,16 g af4 g16 f | %2
    ef c' b a g f ef d c8 ef' d c | %3
    bf a bf c fs, g a fs | %4
  \barNumberCheck #5
    g4 r16 c, d ef f g af8 ~ af16 d, ef f | %5
    g a bf8 ~ bf16 ef, f g af g f ef d8 c'16 b | %6
    c4 r r8 f ef d | %7
    r af g f g f16 ef f8 d | %8
    g4 r8 b c c16 b c8 g | %9
  \barNumberCheck #10
    af4 r8 a bf bf16 a bf8 f | %10
    g4 r8 g af af g f | %11
    r \once\showStaffSwitch  \staffTwo \voiceOne af, bf c c\rest af16 g af8 f | %12
    bf c bf af bf g f ef | %13
    f df' c bf c af g f | %14
  \barNumberCheck #15
    g \staffOne \voiceTwo g'16 fs g8 c, ef g16 fs g8 a | %15
    d, g16 fs g8 a c,16 d ef4 d16 c | %16
    bf8 r r16 d e fs g a bf8 ~ bf16 e, f g | %17
    a bf c8 ~ c16 fs, g a bf8 ef,16 d ef8 g, | %18
    af f'16 ef f8 a, bf g'16 f g8 b, | %19
  \barNumberCheck #20
    c16 f ef d c \staffTwo \voiceOne bf af g f8 \staffOne \voiceTwo af' g f | %20
    ef d ef f b, c d b | %21
    c4 r8 e f f16 e f8 c | %22
    d4 r8 d ef ef16 d ef8 bf | %23
    c2 ~ c8 d16 ef f ef f d | %24
  \barNumberCheck #25
    b4 r8 b c r8 r ef | %25
    d r r f ~ f r r f | %26
    ef af g f ef d ef f | %27
    b, c d b b c r c | %28
    f16 d ef c ~ c8 b c4 r8 e | %29
  \barNumberCheck #30
    f4 r8 f f ef16 d ef8 <f af> | %30
    <b, d>8 r <b d> r <g c>2 | %31
  \bar "|."
}

%tenor
vThree = \relative c {
  \global
  \override Beam.auto-knee-gap = #4
  \barNumberCheck #1
    R1*6 | %1-6
  \barNumberCheck #7
    r8 c'16 b c8 g af c16 b c8 d | %7
    g, c16 b c8 d f,16 g af4 g16 f | %8
    ef c' b a g f ef d c d ef d c bf af g | %9
  \barNumberCheck #10
    \once\override Beam.auto-knee-gap = #1
    f bf' af g f ef d c bf c d c bf af g f | %10
    \once\override Beam.auto-knee-gap = #1
    ef af' g f ef df c bf \once\override Beam.auto-knee-gap = #1 af8 c' bf af | %11
    g f g af d, ef f d | %12
    ef af g f g ef d c | %13
    d bf' af g af f ef d | %14
  \barNumberCheck #15
    ef r r4 r8 c bf a | %15
    r ef' d c d c16 bf c8 d | %16
    g, bf'16 a bf8 d, ef c'16 bf c8 e, | %17
    f d'16 c d8 fs, g4 r16 g, a b | %18
    c d ef8 ~ ef16 a, bf c d ef f8 ~ f16 b, c d | %19
  \barNumberCheck #20
    ef8 r r e \voiceTwo f f, ef d \oneVoice | %20
    r af' g f g f16 ef f8 g | %21
    c16 d ef d c bf af g \once\override Beam.auto-knee-gap = #1.5 f bf' af g f ef d c | %22
    bf c d bf bf af  g f \once\override Beam.auto-knee-gap = #1.5 ef af' g f ef d c bf | %23
    af bf c bf af g f ef \once\override Beam.auto-knee-gap = #1.5 d g' f ef d c b a | %24
  \barNumberCheck #25
    g4 r r16 g a b c d ef f | %25
    g f af g f ef d c b8 c16 b c8 g | %26
    af c16 b c8 d g, c16 b c8 d | %27
    f,16 g af4 g16 f ef4 r8 ef' | %28
    d[ c] g'[ g,] \voiceOne c2 ~  |
    c1 ~ |
    c1 ~ |
  \bar "|."
}

vFour = \relative c, {
  \voiceTwo
  s1*28
  s2 \once \tieDashed c2 ~  | %29
  c1 ~ |
  c1 |
}

fugueTwo = \score {
  \new PianoStaff \with { } <<
    \new Staff = "right" <<
      \new Voice \vOne
      \new Voice \vTwo
    >>
    \new Staff = "left" \with { \clef bass } <<
      \new Voice \vThree
      \new Voice \vFour
    >>
  >>
  \layout {
      \context {
        \Score
        \editionID ##f fugue.two
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        % \consists #(custom-line-breaks-engraver '(3 3 3 3 2 2 2 2 2 3 3 3))
      }
    }
}
%fugueTwo
