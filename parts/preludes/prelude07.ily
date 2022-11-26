\version "2.20.0"
\language "english"

global = {
  \key ef \major
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

%soprano
vOne = \relative g' {
  \global
  \barNumberCheck #1
  \oneVoice
    r16 g af bf af g f ef ~ %1
  \voiceTwo
      ef2 ~ | %1
    ef8 r r4 %2
  \voiceOne
      f'2 ~ | %2
    f16 d ef f ef d c \once \tieDown bf ~ %3
  \voiceTwo
      bf2 ~ | %3
    bf8 r r4 ef2 ~ |
  \barNumberCheck #5
    ef16 r r8 r4 %5
  \voiceOne
      c'2 ~ | %5
    c16 a bf c bf a g f
  \oneVoice
      bf a g f ef d c bf | %6
    ef2 ~ ef16 ef f g f ef d c | %7
    d32 c d ef d c bf a bf a bf c bf af g f g f g af g f ef d ef d ef f ef d c bf | %8
    r32 c d ef f g a bf c a f g a bf c d
  \voiceOne
      ef8 ~ ef32 f64 ef d32 ef ef8. d16 | %9
  \barNumberCheck #10
    d4 r r2 | %10
    \once \teeny R1| %11
    r4 bf ef2 | %12
    d4 ef2 af4 ~ | %13
    af4 g2 f8 ef | %14
    d4 ef2 d4 | %15
    e4 f2 ef4 | %16
    d4 g2 f4 ~ | %17
    f4 ef2 d4 ~ | %18
    d4 c8 bf a4 bf ~ | %19
  \barNumberCheck #20
    bf4 ef2 d4 | %20
    c2 bf | %21
    af2 g ~ | %22
    g4 f8 ef d2 | %23
    ef2. d8 c | %24
  \barNumberCheck #25
    d4 r r2 | %25
    r2 r16 af' bf c bf af g f | %26
    g16 ef' f g f ef d c bf8 c16 d ef d c bf | %27
    af16 g f ef af8 af af4 g ~ | %28
    g4 a bf8 c d4 ~ | %29
  \barNumberCheck #30
    d4 ~ d16 d c bf a8 bf16 c d4 ~ | %30
    d4 ~ d16 c d ef f4 r | %31
    r16 f g af g f ef d ef2 ~ | %32
    ef16 ef f g f ef d c d2 ~ | %33
    d4 c ~ c8 bf a4 | %34
  \barNumberCheck #35
    g4 r f bf ~ | %35
    bf4 af df2 ~ | %36
    df16 bf c df c bf af g f2 ~ | %37
    f4 e f c' ~ | %38
    c4 b ef2 ~ | %39
  \barNumberCheck #40
    ef16 ef f g f ef d c b f' g af g f ef d | %40
    c16 b c d d8. c16 c4 r | %41
    r16 bf c df c bf af g f8 g16 af bf16 af g f | %42
    %\once\override NoteColumn.force-hshift = #0.4
    %\staffTwo\voiceThree
      ef16 d c bf
    %\staffOne\voiceOne
    %\once\showStaffSwitch
        ef'8 ef ef4 d | %43
    g2. f4 | %44
  \barNumberCheck #45
    b,4 <g c>8 <b d> ef[ e] <d f> <e g> | %45
    af2 ~ af16 af bf c bf af g f | %46 %fix tie
    ef2 bf ~ | %47
    bf4 ~ bf16 af bf c f,4 f | %48
    ef2 d4 r | %49
  \barNumberCheck #50
    af'2 ~ af16 f g af g f ef d | %50
    c4 ~ c16 c d ef f4 ~ f16 ef f g | %51
    af2 ~ af8 g af bf | %52
    c4 ~ c16 ef d c b8 c16 d ef d c bf | %53
    af16 g f ef d d' ef f b,8 c16 d c bf af g | %54
  \barNumberCheck #55
    c2 ~ c8 d e4 | %55
    f16 c df ef df c bf af g4 r | %56
    r16 af' bf c bf af g f af g f ef af4 ~ | %57
    af4 g af8 ef af4 ~ | %58
    af4 g c2 | %59
  \barNumberCheck #60
    bf4 ~ bf16 bf af g f8 g16 af g f ef d | %60
    ef8 f16 g af8 af ~ af16 g af bf af g f ef | %61
    f8 g16 af bf af g f ef d c bf ef8 ef | %62
    ef4 r16 d ef f bf,2 ~ | %63
    bf4 af2 g4 | %64
  \barNumberCheck #65
    c2 bf4 ef ~ | %65
    ef4 d gf2 | %66
    f4 ef ~ ef d | %67
    ef2 d4 df ~ | %68
    df16 bf c df c  bf c af d2 | %69
  \barNumberCheck #70
    ef1\fermata |%70
  \bar "|."
}

%alto
vTwo = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    s2 df2 ~ | %1
    df16 c df ef df c bf \once \tieDown af ~
  \voiceTwo
      af2 ~ | %2
    af8 r r4
  \voiceOne
      af'2 ~ | %3
    af16 f g af g f ef d g2 ~ | %4
    g16 ef f g f ef d \once \tieDown c ~
  \voiceTwo
      c2 | %5
    d8 r r4 s2 | %6
    s1 | %7
    s1 | %8
    s2 c2 | %9
  \barNumberCheck #10
    f,4 r r2 | %10
    r2 ef4 af ~ | %11
    af4 g2 f4 ~ | %12
    f4 g2 c4 | %13
    bf2 c | %14
    bf2 ~ bf4. af8 | %15
    g4 c b c8 bf | %16
    af4 bf af2 ~ | %17
    af4 g f g8 af | %18
    g2 f ~ | %19
    f4 ef16 d' c bf a4 bf ~ | %20
    bf af2 g4 ~ | %21
    g4 f2 ef8 df | %22
    c2. bf4 ~ | %23
    bf4 a bf2 ~ | %24
  \barNumberCheck #25
    bf16 bf' c d c bf a g f8 g16 a bf a g f | %25
    ef16 d c bf ef8 ef ef4 d | %26
    ef4 r r2 | %27
  \teeny
    R1 | %28
  \staffTwo \voiceOne
    R1 | %29
  \normalsize
  \barNumberCheck #30
    bf4 ef ~ ef d | %30
  \staffOne \voiceThree
    g2
  \voiceTwo
      r16 a bf c bf a g f | %31
    bf2 ~ bf16 bf c d c bf a g | %32
    a2 ~ %{ \bar""\pageBreak %} a!8[ d,] g[ f] | %33
    ef2 d4 c | %34
    bf4 ef2 d4 | %35
    g4 f ~ f16 f g af g f e f | %36
    e2 r16 ef df c bf4 ~ | %37
    bf16 bf c df c bf af g af4 r | %38
    r16 f'16 g af g f ef d c g' af bf af g f ef | %39
  \barNumberCheck #40
    f2 d4 ef ~ | %40
    ef8[ af] g[ f] ef4 af ~ | %41
    af4 g c bf ~ | %42 %fix tie
  \noBreak
    bf2 ~ bf ~ | %43
    bf2 ~ bf16 bf c df c bf af g | %44
  \barNumberCheck #45
    f4 s8 s %45
  \voiceThree
      c'4 s8 s | %45 %chorded vOne
    f16 ef f g f ef d c  %46
  \voiceTwo
      d2 ~ | %46
    d16 bf c df c bf af g f8 g16 af bf af g f | %47
    ef d c bf ef8 ef ef4 d | %48
    c2 r16 f g af g f ef d | %49
  \barNumberCheck #50
    c8 d16 ef f ef d c bf af g f bf8 bf | %50
    bf16 g a bf a4 ~ a16 a b c b4 ~ | %51
    b8 b c d ef2 ~ | %52
    ef16 ef f g f4 g2 | %53
    r2 d4 g ~ | %54
  \barNumberCheck #55
    g f bf2 ~ | %55
    bf8 af d2%{ 4 ~ d%}  c4 | %56
    f2 ef4 ~ ef16 ef f gf | %57
    f16 ef df c bf4 r16 bf c df c bf af g | %58
    f8 g16 af bf af g f ef8 f16 g af8 af | %59
  \barNumberCheck #60
    af16 g af bf c2 bf4 | %60
    ef2 d4 ef | %61
    c4 r r r16 g af bf | %62
    af16 g f ef f4 ~ f16 f g af g f ef df | %63
    c4 f2 ef4 | %64
  \barNumberCheck #65
    af2. g4 | %65
  \voiceThree
    f4 bf2 a4 | %66
    d4 bf bf4. af8 | %67
  \voiceTwo
    g16 bf c df c bf af g f8 g16 af bf af g f | %68
    ef4 af4 ~ af16 af bf cf bf af g af32 f | %69
  \barNumberCheck #70
    g1 | %70
  \bar "|."
}

%tenor
vThree = \relative g {
  \global
  \barNumberCheck #1
  \voiceOne
    r2 r16 g af bf af g f ef |
    af2 ~ af16 af bf c bf af g f |
    d'2 ~ d16 d ef f ef d c bf |
  \oneVoice
    ef2 ~ ef16 ef f g f ef d c |
    bf16 c d ef d c bf af g ef f g f ef d c |
    f16 c d ef d c bf a d bf c d c bf a g |
  \voiceOne
    r16 ef' f g f ef d c a'2 |
    bf1 |
    a1 |
  \barNumberCheck #10
    bf4 ef2 d4 |
    c2 bf4 c |
    d4 ef df c |
    bf2 ef |
    f4 ef2 af4 ~ |
  \barNumberCheck #15
    af4 g f2 |
    c2 d4 ef |
    f8 ef d4 ef f |
    bf,2 bf ~ |
    bf4 ef8 d c4 d8 c |
  \barNumberCheck #20
    bf8 af%{ -\markup{\teeny\natural} %} bf4 c d8 ef |
    f4. ef8 d bf ef4 ~ |
    ef bf2. ~ |
    bf4 af8 g f4 g8 f |
    ef4. f8 g4 f8 ef |
  \barNumberCheck #25
    f4 r r2 |
    s1 |
    ef4 af2 g4 |
    c2 bf4 ~ bf16 %28
  \staffOne \voiceTwo
      d ef f | %28
    ef16 d c bf ef8 c f4 ~ f16 f g af |
  \barNumberCheck #30
    g16 f ef d g4 f2 ~ |
    f4 %31
  \staffTwo \voiceOne
      ef8 d c4 d ~ | %31
    d16 d ef f ef d c bf c2 ~ |
    c2 ~ c4 bf ~ |
    bf16 g a bf a%{ ^\markup {\parenthesize \small \italic "1"}%} g fs g fs8 g4 fs8 |
  \barNumberCheck #35
    r16 g af bf af g f ef bf'4 r |
    r16 bf c df c bf af g af8 bf16 c bf8 af |
    g4 af2 ~ af16 af g f |
    g2 f4 r |
    d4 g2 ef4 |
  \barNumberCheck #40
    af2 g4 c ~ |
    c4. b8 c4 r |
    bf4 ef2 d4 |
    g2 f ~ |
    f16 bf, c df c bf af g c2 |
  \barNumberCheck #45
    d4 %45
  \staffOne \voiceTwo
  \showStaffSwitch
      ef8  f g g af[ bf] | %45
    af4 %46
  \staffTwo \voiceOne
      r4 r2 | %46
    ef,4 af2 g4 |
    c2 ~ c16 a bf c bf af g f |
    gf4 f f r |
  \barNumberCheck #50
  \teeny
    s1 %rest?
    s1 %rest?
    R1
  \normalsize
    c4 f2 ef4 |
    af2 g |
  \barNumberCheck #55
    r16 c df ef df c bf af g2 |
    r4 r16 af bf c bf af g f g8 r |
    R1 |
    r4 r16 bf c df c4 r |
    r16 d ef f ef4 r16 c df ef df c bf af |
  \barNumberCheck #60
    ef'2 d |
    r16 c df ef df c bf af bf2 |
    af4 r16 f g af bf4 r16 bf c df |
    c16 bf af g af4 ~ af8 g16 f g4 ~ |
    g16 ef f g f ef d c bf af' bf c bf af g f |
    ef4 r r2 |
  \hideStaffSwitch
  \staffOne \voiceTwo
    r16 c' d ef f af g f ef f ef d c ef d c | %s1 | % bf'1 ~ |
    af'4 g f2 | %s1 | % bf16 f ef d ef f g af bf,2 |
  \staffTwo \voiceOne
    ef,4  af2 g4 |
    c2 cf |
  \barNumberCheck #70
    bf1
  \bar "|."
}

%bass
vFour = \relative ef {
  \global
  \barNumberCheck #1
  \voiceTwo
    \shape #'((0 . 0)(-0.75 . -0.25)(0.75 . -0.25)(0 . 0)) Tie
    ef1 ~ |
    ef1 ~ |
    ef2 \once \teeny r |
    s1*3 |
  \barNumberCheck #7
    c1 |
    bf1 ~ |
    bf1 ~ |
    bf4 r f' bf ~ |
    bf4 af g2 |
    f4 ef2 af4 ~ |
    af4 g c2 |
    d4 ef af,2 |
    bf1 ~ |
    bf4 af g c ~ |
    c4 bf c d |
    g,4. af8 bf4 bf, |
    ef2. d4 |
  \barNumberCheck #20
    g2 f ~ |
    f2 g4 ~ g16 f ef d |
    c4 d ef ~ ef16 df c bf |
    af2 bf |
    c2 bf ~ |
  \barNumberCheck #25
    bf4 ef2 d4 |
    g2 f |
    ef4. f8 g f ef d |
    c16 ef f g f ef d c ef d c bf ef8 d |
    c4 ~ c16 c d ef d c bf a bf8 bf' |
  \barNumberCheck #30
    ef,2 r16 f g a bf a g f |
    ef16 d c bf ef8 ef ef4 d |
    g2 ~ g16 g a bf a g f ef |
    f2 r16 fs g a g f ef d |
    c2 d |
  \barNumberCheck #35
    g,4 r r16 d' ef f ef d c bf |
    e4 f2 bf,4 |
    c2 df |
    c2 r16 f, g af g f ef d |
    g2 c |
  \barNumberCheck #40
    f2. ef4 |
    af8 f g4 r16 c, df ef df c bf af |
    ef'2 af |
    g4 ~ g16 f g af bf af bf c bf af g f |
    e2 af ~ |
  \barNumberCheck #45
    af16 f g af \oneVoice g f ef d c bf c df c bf af g |
    f4 \voiceTwo bf2 g4 |
    c2 d8[ bf] ef[ d] |
    c4. bf8 a4 bf ~ |
    bf16 a bf c bf a g f bf4 ef ~ |
  \barNumberCheck #50
    ef4 d g ~ g8 f |
    e4 f8 ef d2 ~ |
    d16 d ef f ef d c b c b c d c bf af g |
    af2 r16 g a b c4 ~ |
    c16 c d ef f8 f f4 ef |
  \barNumberCheck #55
    af2 r16 e f g f e d c |
    f2. ef16 c df ef |
    df16 c bf af df8 df df4 c |
    df4 ef af f |
    bf8 r r4 r2 |
  \barNumberCheck #60
    R1
    r2 bf,4 ef ~ |
    ef4 d g2 ~
    g4 r16 g f ef d8 ef16 f ef d c bf |
    af2 d,16 r r8 ef'4 |
  \barNumberCheck #65
    r16 c df ef df c bf af ef' d c bf af' g f ef |
  \oneVoice
    bf'1 ~ | %s1
    bf16 f ef d ef f g af bf,2 | %s1
  \voiceTwo
    ef1 ~ |
    ef1 ~ |
  \barNumberCheck #70
    ef1 \fermata
  \bar "|."
}


preludeSeven = \score {
  \new PianoStaff \with { }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff ="Up" \with { } <<
      \new Voice \vOne %soprano
      \new Voice \vTwo %alto
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vThree %tenor
      \new Voice \vFour %bass
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.seven
      \mergeDifferentlyHeadedOn
    }
  }
}
%\preludeSeven
