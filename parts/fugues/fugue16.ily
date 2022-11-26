\version "2.20.0"
\language "english"

global = {
  \key g \minor
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c'' {
  \global
  \voiceOne
  \barNumberCheck #1
    \once \teeny R1 | % m. 1
  \oneVoice
    r2 r8 g bf d, | % m. 2
    cs4 d r8 e16 f g8 f16 e | % m. 3
  \voiceOne
    f8 g16 a bf8 a16 g a8 bf16 c d8 c16 bf | % m. 4
    c4 bf a8 d16 c bf8 c16 d | % m. 5
    ef8 c a fs' g4 r | % m. 6
    r8 e,8 a f d4 cs8 e~ | % m. 7
    e8 d g4~ g16 fs g a bf4~ | % m. 8
    bf4 a~ a16 d, e fs g4~ | % m. 9
  \barNumberCheck #10
    g8 fs16 g a8 g16 fs g4. c8 | % m. 10
    f,8 g16 a bf2 a4 | % m. 11
    bf4 r r2 | % m. 12
    R1 | % m. 13
    R1 | % m. 14
    r8 c d f, e4 f | % m. 15
    r8 g16 a bf8 a16 g a8 bf16 c d8 c16 bf | % m. 16
    c8 d16 c bf8 c16 d ef8 f16 ef d8 ef16 f | % m. 17
    g8 ef c a' bf r r4 | % m. 18
    r8 g16 af bf8 af16 g af8 af16 g f8 g16 af | % m. 19
  \barNumberCheck #20
    d,8 g4 f16 ef d4. c16 b | % m. 20
    c4 b8 d g,[ g'] af[ c,] | % m. 21
    b4 c r8 d16 ef f8 ef16 d | % m. 22
    ef16 d ef f g8 r r d16 c bf8 c16 d | % m. 23
    ef16 d c bf a8 fs' g r r16 d c bf | % m. 24
    a4~ a16 bf c d g,4~ g16 bf af g | % m. 25
    f4~ f16 g af bf ef,4~ ef16 g f ef | % m. 26
    d4~ d16 d  e fs g4~ g16 bf a g | % m. 27
    fs8 d' ef g, fs4 g | % m. 28
    r8 a16 bf c8 bf16 a d8 r r4 | % m. 29
  \barNumberCheck #30
    r2 r8 d16 ef f8 ef16 d | % m. 30
    ef4~ ef16 d c bf a4 r8 ef'16 d | % m. 31
    c8 d16 ef d8 e16 fs g8 fs16 g a4~ | % m. 32
    a8 d, g f ef d c bf | % m. 33
    a2 g \fermata | % m. 34
  \bar "|."
}

alto = \relative c' {
  \global
  \voiceTwo
  \barNumberCheck #1
    r8 d ef
  \staffTwo \voiceOne
      g, fs4 g | % m. 1
    r8 a16 bf c8 bf16 a bf4 g | % m. 2
    r8 a16 g f8 g16 a bf8[ g] e[
  \staffOne \voiceTwo
      cs'] | % m. 3
    d4. e8 f e f g | % m. 4
    a8 g16 fs g8 cs, d a'4 g16 fs | % m. 5
    g4 fs8 a d4 r | % m. 6
  \teeny
    \once \override MultiMeasureRest.staff-position = #-10
    R1 | % m. 7
  \override MultiMeasureRest.staff-position = #-8
    R1 | % m. 8
    R1 | % m. 9
    R1 | % m. 10
  \tiny
  \revert MultiMeasureRest.staff-position
    R1 | % m. 11
  \normalsize
  \barNumberCheck #12
    r8 f, g bf, a4 bf | % m. 12
    r8 c16 d ef8 d16 c d e d e f8 e16 d | % m. 13
    g4. f16 e f4 e8 bf'~ | % m. 14
    bf8 a4 g16 a bf8 a16 g a4~ | % m. 15
    a8 g16 f e8 c~ c d16 ef f8. g16 | % m. 16
    a4 g r8 c d f, | % m. 17
    ef4 f r8 f16 g af8 g16 f | % m. 18
    g8 r r4 r8 f'16 ef d8 ef16 f | % m. 19
  \barNumberCheck #20
    b,8 ef16 d c8 d16 ef f,8 g16 f ef8 f16 g | % m. 20
    af8[ f] d[ b'] c4 r8 ef, | % m. 21
    d8 ef16 f g8 a16 b c8 b16 c d8 g,~ | % m. 22
    g8 c16 d ef8 g, fs4 g~ | % m. 23
    g8 a16 bf c8 bf16 a bf d, e fs g4~ | % m. 24
    g16 g f ef d4~ d16 bf c d ef4~ | % m. 25
    ef16 ef d c bf4~ bf16 g a b c4~ | % m. 26
    c16 c bf a g4~ g16 g a bf c8 cs | % m. 27
    d4 r r8 d'16 c bf8 c16 d | % m. 28
    ef8 d c ef a, r r4 | % m. 29
  \barNumberCheck #30
    r8 fs16 g a8 g16 fs g2~ | % m. 30
    g2 r8 d' ef g, | % m. 31
    fs4 g r8 a16 bf c8 bf16 a | % m. 32
    bf4. <g b>8 <a c> r <d, g> r | % m. 33
    <ef g>4 <d fs> <d g>2 %{ \fermata%}  | % m. 34
  \bar "|."
}

tenor = \relative c {
  \global
  \barNumberCheck #1
  \voiceThree
  \teeny
  \override MultiMeasureRest.staff-position = #-2
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
  \voiceOne
  \revert MultiMeasureRest.staff-position
    R1 | % m. 4
    R1 | % m. 5
  \normalsize
    f2\rest r8 g bf d, | % m. 6
    cs4 d r8 e16 f g8 f16 e | % m. 7
    f8 g16 a bf8 a16 g a8 bf16 c d8 c16 bf | % m. 8
    c2. bf8 ef | % m. 9
  \barNumberCheck #10
    a,16 bf a bf c8 bf16 a bf8 c16 d ef4~ | % m. 10
    ef4 d c2 | % m. 11
    d4 r r8 f,16 ef d8 ef16 f | % m. 12
    g8[ ef] c[ a'] bf2~ | % m. 13
    bf8 c16 bf a8 bf16 c d8[ bf] g[ e'] | % m. 14
    f8. ef16 d4 c4. d16 c | % m. 15
    bf2 a4 r16 bf c d | % m. 16
    ef8 f16 ef d8 g,~ g[ f] bf[ af] | % m. 17
    g4 a8 c f, r r4 | % m. 18
  \teeny
  \override MultiMeasureRest.staff-position = #4
    R1 | % m. 19
    R1 | % m. 20
    R1 | % m. 21
  \override MultiMeasureRest.staff-position = #6
    R1 | % m. 22
  \once\override MultiMeasureRest.staff-position = #8
    R1 | % m. 23
  \revert MultiMeasureRest.staff-position
    R1 | % m. 24
    R1 | % m. 25
    R1 | % m. 26
 \once \override MultiMeasureRest.staff-position = #4
    R1 | % m. 27
  \normalsize
  \barNumberCheck #28
    r2 r8 d' ef g, | % m. 28
    fs4 g r8 a16 bf c8 bf16 a | % m. 29
    bf2~ bf8 b16 a g8 a16 b | % m. 30
    c4 r r2 | % m. 31
    \once \override MultiMeasureRest.staff-position = #4
    \once\small
    R1 | % m. 32
    r8 d ef g, fs4 g | % m. 33
  \barNumberCheck #34
    r8 a16 bf c8 bf16 a b2 %{ \fermata%}  | % m. 34
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
  \voiceFour
  \teeny
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
  \voiceTwo
  \normalsize
    r8 d ef g, fs4 g | % m. 5
    r8 a16 bf c8 bf16 a bf4 g | % m. 6
    r8 a16 g f8 g16 a bf8[ g] e[ cs'] | % m. 7
    d1 | % m. 8
    e8 a16 g fs8 g16 a bf,8 c16 d ef8 d16 c | % m. 9
  \barNumberCheck #10
    d2 g,4. a8 | % m. 10
    bf8 f' g d ef d16 ef f8 f, | % m. 11
    bf4 r r2 | % m. 12
    r2 r8 bf d f, | % m. 13
    e4 f r8 g16 a bf8 a16 g | % m. 14
    a4 bf r8 c16 bf a8 bf16 c | % m. 15
    d8[ bf] g[ e'] f2~ | % m. 16
    f8 f g bf, a4 bf | % m. 17
    r8 c16 d ef8 d16 c d8 c16 bf c8 d | % m. 18
    ef8 d16 c d8 e f f,16 g af8 g16 f | % m. 19
  \barNumberCheck #20
    g8 g' af c, b4 c | % m. 20
    r8 d16 ef f8 ef16 d ef8[ e] f[ fs] | % m. 21
    g16 af g f ef8 f16 g af8[ f] d[ b'] | % m. 22
    c4~ c16 d c bf a d, c d ef d c bf | % m. 23
    a8[ c] d[ d,] g g'16 a bf8 a16 g | % m. 24
    d'8 d,16 ef f8 ef16 d ef,8 ef'16 f g8 f16 ef | % m. 25
    bf'8 bf,16 c d8 c16 bf c,8 c'16 d ef8 d16 c | % m. 26
    g'8 g,16 a bf8 a16 g ef'2 | % m. 27
    d4 r r2 | % m. 28
    r8 d ef g, fs4 a | % m. 29
  \barNumberCheck #30
    d,8 d'16 c bf8 c16 d ef2~ | % m. 30
    ef8 ef16 d c8 d16 ef fs,8 a16 g fs8 g16 a | % m. 31
    d,8 d'16 c bf8 c16 d ef8[ c] a[ fs'] | % m. 32
    g8 f ef d c[ bf] a[ g] | % m. 33
    c8[ a] d[ d,] g2 \fermata | % m. 34
  \bar "|."
}

fugueSixteen = \score {
  \new PianoStaff \with {
    edition-id = fugue.sixteen
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
  \layout{
     \context {
       \Score
        \editionID ##f fugue.sixteen
        %\consists #(custom-line-breaks-engraver '(3 3 3 3 3 2  3 3 2 3 3 3 ))
    }
  }
}
%\fugueSixteen
