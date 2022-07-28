\version "2.20.0"
\language "english"

global = {
  \key f \minor
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \oneVoice
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
  \teeny
  \voiceOne
  \override MultiMeasureRest.staff-position = #4
    R1 | % m. 4
    R1 | % m. 5
    R1 | % m. 6
    R1 | % m. 7
    R1 | % m. 8
    R1 | % m. 9
  \barNumberCheck #10
    R1 | % m. 10
    R1 | % m. 11
    R1 | % m. 12
  \revert MultiMeasureRest.staff-position
  \normalsize
    r4 c df c | % m. 13
    b4 e f bf, | % m. 14
    a4 af g2~ | % m. 15
    g8 f16 g af2.~ | % m. 16
    af8 g16 af bf2.~ | % m. 17
    bf16 g af c f2.~ | % m. 18
    f8 ef d g~ g16 b, c d ef4 | % m. 19
  \barNumberCheck #20
    r16 c d ef f4 r16 ef f g af4 | % m. 20
    r16 g a b c4~ c8 b16 a b4 | % m. 21
    c8 g c4~ c8 c16 bf a8 a16 g | % m. 22
    f8 g16 a bf4 r8 bf16 af g8 g16 f | % m. 23
    ef8 f16 g af4 r8 af16 g f8 f16 ef | % m. 24
    df4. ef16 df c8 c16 bf af4~ | % m. 25
    af8 bf16 c df4~ df16 c df bf g'4~ | % m. 26
    g16 c, df c f4~ f8 e16 f g4~ | % m. 27
    g8 f4 ef8 d ef16 f g f e d | % m. 28
    c4 r16 bf af g f4 r16 f g af | % m. 29
  \barNumberCheck #30
    bf4.
      \once \override Stem.details.beamed-lengths = #'(2)
        af16
      \once \override Stem.details.beamed-lengths = #'(2)
        g af4 r | % m. 30
  %\pageBreak
    r8 gf'16 f ef df c bf af8 bf16 c df8 r | % m. 31
    r8 ef16 df c bf af gf f8 g16 a bf8 r | % m. 32
    r8 c16 bf af g f ef df4~ df16 f bf af | % m. 33
    g4 af~ af16 g af bf c4 | % m. 34
    r16 af16 bf c df4 r16 c df ef f4 | % m. 35
    r16 ef f g af4~ af8 g16 f g4~ | % m. 36
    g16 c, d ef f4~ f8 ef16 d ef4~ | % m. 37
    ef16 af, bf c df4~ df8 c16 bf c4~ | % m. 38
    c8 f, bf af g4~ g16 g af bf | % m. 39
  \barNumberCheck #40
    c4~ c16 c d ef f4~ f16 bf, ef8~ | % m. 40
    ef16 ef d c d ef c d ef c d ef f ef d c | % m. 41
    bf2~ bf16 af g f ef4~ | % m. 42
    ef16 ef f ef d c' bf af g8 bf ef4~ | % m. 43
    ef16 g f ef d4~ d8 g, c4~ | % m. 44
    c16 ef d c bf4~ bf8 ef, af4~ | % m. 45
    af16 c bf af g4~ g16 f af g f ef d c | % m. 46
    b4 g'' af g | % m. 47
    fs4 b c f, | % m. 48
    e4 ef d2~ | % m. 49
  \barNumberCheck #50
    d8 c16 d ef2.~ | % m. 50
    ef8 d16 ef f2.~ | % m. 51
    f16 d e g bf,2.~ | % m. 52
    bf8 af g4 f16 e f g af4 | % m. 53
    r16 f g af bf4 r16 af bf c df4 | % m. 54
    r16 c d e f4~ f8 e16 d e4 | % m. 55
    f4~ f16 ef df c df4~ df16 bf c df | % m. 56
    e,8 c'~ c16 g af f~ f f e d e4 \prall | % m. 57
  \barNumberCheck #58
    f1 \fermata | % m. 58
  \bar "|."
}

alto = \relative c' {
  \global
  \voiceTwo
  \barNumberCheck #1
    s1 | % m. 1
    s1 | % m. 2
    s1 | % m. 3
  \oneVoice
    r4 f af g | % m. 4
    fs4 b c f, | % m. 5
    e4 ef d2 | % m. 6
    c8 c16 d e8 d16 e f
  \staffTwo \voiceOne
    e, f g af4 | % m. 7
    r16 f g af bf4 r16 af bf %8
  \staffOne \voiceTwo
      c df4 | % m. 8 end
    r16 %9
  \staffOne \voiceTwo
      c d e f4~ f8 e16 d e4 | % m. 9
  \barNumberCheck #10
    f8 f16 g af8 af16 bf c4~ c16 bf af g | % m. 10
    f4 r r8 af,16 bf c4~ | % m. 11
    \once\override NoteColumn.force-hshift = #0.7
    c8 bf16 c df8 df16 ef f2~ | % m. 12
    f8 e16 f g4~ g8 f4 ef8 | % m. 13
    d8 ef16 f g f e d c8 %14
  \once \showStaffSwitch
  \staffTwo \voiceOne
      r r16 bf af g | % m. 14
    f4 r16 f g af bf4. af16 g | % m. 15
    af4 %16
  \once \showStaffSwitch
  \staffOne \voiceTwo
      r r8 f'16 ef d8 d16 c | % m. 16
    bf8 bf16 af g4 r8 g'16 f e8 e16 d | % m. 17
    c8 c16 bf af4 r8 d'16 c b8 b16 a | % m. 18
    g8 g16 a b8 a16 b c4~ c8 bf | % m. 19
  \barNumberCheck #20
    a8 b16 c d c b a g4 r16 f ef d | % m. 20
    c4 r16 c' d ef f4. ef16 d | % m. 21
    ef8 c16 d ef2.~ | % m. 22
    ef8 bf16 c df2.~ | % m. 23
    df8 af16 bf c2.~ | % m. 24
    c8 bf16 af g4~ g4. f16 e | % m. 25
    f4. g16 af bf4~ bf16 af bf g | % m. 26
    af4~ af16 g af f c'8 g c bf | % m. 27
    af8 bf c16 c, d ef f4 r8 g | % m. 28
    af4 r16 bf8. c4 r8
      %\once \override NoteColumn.force-hshift = #1.1
      \once \override Stem.length = #9.5
        c | % m. 29
  \barNumberCheck #30
    df8 c16 bf \once \tieUp \shape #' ((0 . 0.5)(0 . 1)(0 . 1)(0 . 0.5)) Tie c4 ~ c r4 | % m. 30
  \teeny
    R1 | % m. 31
    \once \override MultiMeasureRest.staff-position = #-8
    R1 | % m. 32
    \once \override MultiMeasureRest.staff-position = #-9
    R1 | % m. 33
  \normalsize
    r4 ef, f ef | % m. 34
    d4 g af df, | % m. 35
    c4 cf bf2 | % m. 36
    af4 r16 b' c d g,4. gf8 | % m. 37
    f4~ f16 g af bf ef,4~ ef16 gf f ef | % m. 38
    df2~ df16 bf c df ef4~ | % m. 39
  \barNumberCheck #40
    ef16 ef f g af4~ af16 c bf af g8. g16 | % m. 40
    f2 c8 r r4 | % m. 41
    r16 c d ef f ef d c bf4~ bf8 a16 bf | % m. 42
    c4 bf~ bf8 ef16 f g8 g16 af | % m. 43
    bf4~ bf16 af g f ef d c d ef8 ef16 f | % m. 44
    g4~ g16 f ef df c bf af bf c8 c16 d | % m. 45
    ef4~ ef16 d c bf af8 %46
  \staffTwo \voiceOne
      d,16 ef f8 fs | % m. 46
    g8 g16 a b8 a16 b c b c d ef4 | % m. 47
    r16 c d ef f4~ f16 %48
  \staffOne \voiceTwo
      ef f g af4 | % m. 48
    r16 g a b c4~ c8 b16 a b c b d | % m. 49
  \barNumberCheck #50
    g,4 r8 g c, c'16 bf a8 bf16 c | % m. 50
    f,8 bf r af g d'16 c b8 c16 d | % m. 51
    g,4 r8 df c g'16 f e8 f16 g | % m. 52
    c,8 f4 e8 f4 r16 g f ef | % m. 53
    d4 r8 df~ df c r gf'~ | % m. 54
    gf8 f r16 f g af bf2~ | % m. 55
    bf16 df c bf a4 r16 c bf af g f ef df | % m. 56
    c1 | % m. 57
  \barNumberCheck #58
    c1 | % m. 58 %\fermata
  \bar "|."
}

tenor = \relative c' {
  \global
  \barNumberCheck #1
  \staffOne\voiceTwo
    r4 c df c | % m. 1
    b4 e f \staffTwo\voiceOne bf, | % m. 2
    a4 af g2 | % m. 3
    f8 f16 g af8 af16 bf c b, c d ef4 | % m. 4
    r16 c d ef f4 r16 ef f g af4 | % m. 5
    r16 g a b c4~ c8 b16 a b4 \prall | % m. 6
    \staffOne\once\stemDown c8 \staffTwo g c bf \voiceThree af %7
  \staffOne \voiceOne
      f'4 ef8 | % m. 7
    d8 ef16 f g f e d c4 %8
  \staffTwo \voiceOne
      r16 bf af g | % m. 8
    f4 r16 f g af bf4. af16 g | % m. 9
  \barNumberCheck #10
    af4 r r8 c16 df ef4~ | % m. 10
    ef8 %11-
  \staffOne \voiceThree
      \once \stemDown df16 \once \stemDown ef f8 f16 g af4~ af16 gf f ef | % m. 11
    df4 %12-
    \once \override VoiceFollower.bound-details = #'((right (attach-dir . 0) (padding . 1.5)) (left (attach-dir . -1) (padding . 1.25)))
    \once \showStaffSwitch
  \staffTwo \voiceOne
      r r8 f,16 g af8 af16 bf | % m. 12
    c8 g c bf af16 r r8 r16 c, d ef | % m. 13
    f4 r8 g af %14
  \once \override VoiceFollower.bound-details = #'((right (attach-dir . 0) (padding . 1.5)) (left (attach-dir . 1) (padding . 2)))
  \once \showStaffSwitch
  \staffOne \voiceTwo
      r r bf | % m. 14
    c4 r8 c df c16 bf c4~ | % m. 15
    c4 %16
  \once \showStaffSwitch
  \staffTwo \voiceOne
      r \teeny r2 | % m. 16
  \override MultiMeasureRest.staff-position = #4
    R1 | % m. 17
    R1 | % m. 18
  \revert MultiMeasureRest.staff-position
  \normalsize %teeny m. 16
    r4 g af g | % m. 19
  \barNumberCheck #20
    fs4 b c f, | % m. 20
    e4 ef d2 | % m. 21
    c4 r8 \clef treble c''16 bf a8 a16 g f8 g16 a | % m. 22
    bf8 bf, r bf'16 af g8 g16 f ef8 f16 g | % m. 23
    af8 af, r af'16 g f8 f16 ef df8 df16 c | % m. 24
    \clef bass bf8 c16 df ef8 ef, af bf16 c df4~ | % m. 25
    df8 df16 c bf8 bf16 af g8 g16 f e8 c | % m. 26
    f8 f'16 ef df4 \trill  c8 c,16 d e8 d16 e | % m. 27
    f16 e f g af4 r16 f g af bf4 | % m. 28
    r16 af bf c df4 r16 c d e f4~ | % m. 29
  \barNumberCheck #30
    f8 e16 d e4 f r8 c16 df | % m. 30
    ef8 ef16 f gf4~ gf8 f16 ef df8 af16 bf | % m. 31
    c8 c16 df ef4~ ef8 df16 c bf8 f16 g | % m. 32
    af8 af16 bf c4~ c8 bf16 c df4~ | % m. 33
    df8 ef16 df c8 df16 c bf4. af16 g | % m. 34
    af8 g16 af bf af g f ef8 af~ af16 g af bf | % m. 35
    c4 r16 f, g af ef4 r16 g f e | % m. 36
    f4 r r2 | % m. 37
    R1 | % m. 38
    R1 | % m. 39
  \barNumberCheck #40
    r2 r4 bf | % m. 40
    c4 bf a d | % m. 41
    ef4 af, g gf | % m. 42
    f2 ef4 r | % m. 43
    r8 bf'16 c d c bf af g4 r | % m. 44
    r8 g16 af bf af g f ef4 r | % m. 45
    r8 ef16 f g f ef d \voiceThree c8 b c4 | % m. 46
    d8 %47
   \once \override VoiceFollower.bound-details = #'((right (attach-dir . 0) (padding . 1.5)) (left (attach-dir . 0) (padding . 3.5)))
  \once \showStaffSwitch
  \staffOne \voiceTwo
      b'\rest r4 r8 c'4 bf8 | % m. 47
    a8 bf16 c d c b a g4 %48  
  \once \showStaffSwitch
  \staffTwo \oneVoice
   \once\override VoiceFollower.bound-details = #'((right (attach-dir . 0) (padding . 1.5)) (left (attach-dir . 0) (padding . 1.25)))
      a,16\rest g af bf | % m. 48
    c4 a16\rest c d ef f d ef f g af g f | % m. 49
  \barNumberCheck #50
    ef16 f ef d c8 c16 bf a8 a16 g f8 g16 a | % m. 50
    bf8 f'16 ef d8 d16 c b8 b16 a g8 a16 b | % m. 51
  \voiceOne
    c8 bf16 af g8 g16 f e8 e16 d c8 d16 e | % m. 52
    f16 g af bf c4~ c8 bf r af~ | % m. 53
    af8 g16 f g bf af g f8 g16 af bf f ef df | % m. 54
    c4~ c16 d e f g4~ g16 a, bf c | % m. 55
    df16 c df ef f4~ f16 f g af bf4~ | % m. 56
    bf16 bf af g af4 g2 \prall | % m. 57
  \barNumberCheck #58
    a1 | % m. 58 %\fermata
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
    R1 | % m. 1
  \voiceTwo
    R1 | % m. 2
    R1 | % m. 3
  \teeny
    R1 | % m. 4
    R1 | % m. 5
    R1 | % m. 6
  \normalsize
    r4 c df c | % m. 7
    b4 e f bf, | % m. 8
    a4 af g2 | % m. 9
  \barNumberCheck #10
    f4 r8 f'16 g af8 af16 bf c8 c, | % m. 10
    df4 r8 df16 ef f8 f16 g af8 af, | % m. 11
    bf4 r8 bf16 c df8 df16 ef f8 f, | % m. 12
    c'8 c16 d e8 d16 e f e, f g af4 | % m. 13
    r16 f g af bf4 r16 af bf c df4 | % m. 14
    r16 c d e f4~ f8 e16 d e4 | % m. 15
    f4 r8 f16 ef d8 d16 c bf8 c16 d | % m. 16
    ef4 r8 g16 f e8 e16 d c8 d16 e | % m. 17
    f4 r8 d16 c b8 b16 a g8 a16 b | % m. 18
    c4 r r2 | % m. 19
  \barNumberCheck #20
    R1 | % m. 20
    R1 | % m. 21
    R1 | % m. 22
    R1 | % m. 23
    R1 | % m. 24
    R1 | % m. 25
    R1 | % m. 26
    r2 r4 c | % m. 27
    df4 c b e | % m. 28
    f4 bf, a af | % m. 29
  \barNumberCheck #30
    g2 f8 f'16 g af8 af16 bf | % m. 30
    c4~ c16 bf af gf f8 df16 ef f8 f16 g | % m. 31
    af4~ af16 gf f ef df8 bf16 c df8 df16 ef | % m. 32
    f4~ f16 ef df c bf c df c bf af g f | % m. 33
    ef8[ bf'] c af df[ bf] ef c | % m. 34
    f8 bf,~ bf ef16 df c8 f~ f16 ef f g | % m. 35
    af16 g f ef d4 ef8 d e c | % m. 36
    f8 f16 ef d8 d16 c b16 g a b c af bf c | % m. 37
    df8 df16 c bf8 bf16 af g ef f g af f g a | % m. 38
    bf16 a bf c df bf c df ef8 ef16 df c8 c16 bf | % m. 39
  \barNumberCheck #40
    af8 af'16 g f8 f16 ef d4 ef8 g | % m. 40
    af8 f bf bf, c c'16 bf af8 bf16 af | % m. 41
    g8 bf,16 c d8 c16 d ef8 ef16 d c8 c16 bf | % m. 42
    a4 bf ef r8 ef16 f | % m. 43
    g8 g16 af bf8 bf, c4 r8 c16 d | % m. 44
    ef8 ef16 f g8 g, af4 r8 af16 bf | % m. 45
    c8 c16 d ef8 ef, f g af a | % m. 46
    g8 r r4 r2 | % m. 47
    R1 | % m. 48
    R1 | % m. 49
  \barNumberCheck #50
    R1 | % m. 50
    R1 | % m. 51
    R1 | % m. 52
    r4 c df c | % m. 53
    b4 e f bf, | % m. 54
    a4 af g2 | % m. 55
    f4~ f16 f g a bf4~ bf16 df c bf | % m. 56
    c1 | % m. 57
  \barNumberCheck #58
    f,1 \fermata \bar "|." | % m. 58

}

fugueTwelve = \score {
  \new PianoStaff \with { } <<
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
      \editionID ##f fugue.twelve
    }
    \override Score.StaffSymbol.layer = #4
  }
}
%\fugueTwelve
