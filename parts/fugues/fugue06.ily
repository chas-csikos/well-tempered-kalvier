\version "2.20.0"
\include "english.ly"

global = {
  \key d \minor
  \time 3/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

%soprano
vOne = \relative c' {
  \global
  \oneVoice
  \barNumberCheck #1
    r8 d[ e f g e] | %1
    f16( d cs d) bf'4-. g\trill | %2
  \voiceOne
    a4~ a16 g( f e) g f e d | %3
    e8 c'~ c16 b a b b a gs a | %4
  \barNumberCheck #5
    a16 g fs g e'4-. g,4 | %5
    f8 d'~ d16 c bf a c bf a g | %6
    a4 g2 ~ | %7
    g8[ e f g a f] | %8
    bf16 g fs g ef'4-. cs4\turn | %9
  \barNumberCheck #10
    d4 d-. b\turn | %10
    c c-. a\turn | %11
    bf2. ~ | %12
    bf8[ a b cs d b] | %13
  \oneVoice
    cs16[ a gs a] f'4-. d4\trill | %14
  \barNumberCheck #15
    e8 a~ a16 g fs e g fs e d | %15
    ef16[ c' bf8] g16\rest a[ gs fs] a gs fs e | %16
    d16 c b c c b a b b a gs a | %17
  \voiceOne
    g4~ g16 f e f f e d a' | %18
    a2. ~ | %19
  \barNumberCheck #20
    a4 ~ %20 start
    a16 ds e a, c b a gs | %20
   \oneVoice
    a4\mordent~ a16 g f e g f e d | %21
    e8[ e' d cs b d] | %22 \pageBreak
    cs16 e f e g,4-. bf4 ~ | %23
    bf16 a g a a g f g g f e f | %24
  \barNumberCheck #25
    f4~ f16 e fs g fs g a g | %25
    g16 a bf a a b c b b cs d cs | %26
    cs8[ a' g f e g] | %27
  \voiceOne
    f16 a bf a cs,4 e4 ~ | %28
    e8 a, d4 c~ | %29
  \barNumberCheck #30
    c8 ef~ %30 start
  \oneVoice
      ef16 d c d d c bf c | %30
    c16 bf a bf d c bf c c bf a bf | %31
    bf a g a c bf a bf bf a g a | %32
    a16 g f g e'4-. cs4\trill | %33
    d4~ d16 c bf a c bf a g | %34
  \barNumberCheck #35
    a8[ fs g a bf g] | %35
    a16 c ef8~ ef16 d c bf d c bf a | %36
    bf16 d f8~ f16 e d cs e d cs b | %37
    cs16 e bf'8~ bf16 a g f a g f e | %38
    g16 f e f f e d e e d cs d | %39
  \barNumberCheck #40
  \voiceOne
    c4 ~ c16 bf a bf bf a g d' | %40
    d2. ~ | %41
    d4~ d16 gs a d, f e d cs | %42
    d2. | %43
  \barNumberCheck #44
    d2.\fermata | %44
  \bar "|."
}

vTwo = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    R2.*2 | %1-2
  \oneVoice
  \teeny
    R2.*3 | %3-5
  \normalsize
  \barNumberCheck #6
    r8 d,8[ e f g e] | %6
    f16 d cs d bf'4-. g\trill | %7
    a4~ a16 g f e g f e d | %8
    g8 bf8~ bf16 a g a a g f g | %9
  \barNumberCheck #10
    g16 f e f a g f g g f e f | %10
    f e d e g f ef f f ef d ef | %11
    ef d cs d bf'4-. g\trill | %12
    a4~ a16 g f e g16 f e d | %13
  \voiceTwo
    e8[ cs d e f d] | %14
  \barNumberCheck #15
    a'4 fs8[ e d fs] | %15
    g4 gs8[ fs e gs] | %16
    a8[ a, b c d b] | %17
  \oneVoice
    cs16 a gs a f'4-. d4\trill | %18
    e8[ f] e16 d c d d c b c | %19
  \barNumberCheck #20
  \voiceTwo
    c8[ d] e[ d] e4 | %20
    a8[ a, b cs d b] | %21
    cs16 a gs a f'4-. d4\trill | %22
    a'8[ f e d cs e] | %23
    d16 f g f a,4-. cs4\trill | %24
  \barNumberCheck #25
    d2. | %25
    b8\rest g'8[ fs e d f] | %26
    e4~ e16 d cs b d cs b a | %27
  \oneVoice
    d4 r4 r | %28
    r8 a'8[ g f e g] | %29
  \voiceTwo
  \barNumberCheck #30
    fs16 a bf a  d,4 fs4 | %30
    g,4 c e | %31
    f,4 bf d | %32
    e2. | %33
    f8[ d e fs g e] | %34
  \barNumberCheck #35
    fs16 d cs d bf'8[ a g bf] | %35
    a8[ g fs e d fs] | %36
    g,8[ a' gs fs   e gs] | %37
    a,[ d' cs b a cs] | %38
    d8[ d, e f g e] | %39
  \barNumberCheck #40
  \oneVoice
    fs16 d c d bf'4-. g4\trill | %40
    a8 bf a16 g f g g f e f | %41
    f8[ g a g] a4 | %42
  \barNumberCheck #43
    <<
      {
        d8\rest <d, fs>8[ <e g> <fs a> <g bf> <e g>] | %43
        <fs a>2. | %44
      }
      \\
      {
        d2. | %43
        d2._\fermata | %44
      }
    >>
  \bar "|." %44
}

vThree = \relative c' {
  \global
  \barNumberCheck #1
  \voiceOne
    R2. | %1
    R2. | %2
  \staffOne \voiceTwo
    c8\rest a8[ b c d b] | %3
    c16 a gs a f'4 d\trill | %4
  \barNumberCheck #5
    e4~ e16 d cs b d cs b a | %5
    d4 d4\rest d4\rest | %6
    c8\rest f8~ f16 e d e e d cs d | %7
    cs4 d8[ e cs d] | %8
    ef8 d g4 e | %9
  \barNumberCheck #10
    e16\rest a[ g a] f4 d | %10
    e16\rest g[ f g] ef4 c | %11
    e8\rest a[ g f e g] | %12
    cs,4 d8 e %13
  \staffTwo \voiceOne
      a,4 | %13 %13
    c8\rest \staffOne\once\stemDown e8[ \staffTwo d cs b d] | %14
  \barNumberCheck #15
    cs16 e f e a,4 c4 | %15
    bf16 d ef d b4 e4 ~ | %16
    e8 d8\rest d4\rest d4\rest| %17
  \staffOne \voiceTwo
    b8\rest a8[ b cs d b] | %18
    c16 \staffTwo\voiceOne a gs a \staffOne\voiceTwo f'4-. d\trill | %19
  \barNumberCheck #20
    e8 f %20
  \once\showStaffSwitch
  \staffTwo \voiceOne
      b,2\trill | %20
    a4 c\rest r | %21
  \teeny
  \override MultiMeasureRest.staff-position = #4
    R2.*3 | %22-24
  \normalsize
  \barNumberCheck #25
    c8\rest d8[ c bf a c] | %25
    bf4 d2 | %26
    g,4 c4\rest c4\rest | %27
  \staffOne \voiceTwo
    e8\rest d[ e f g e] | %28
    f16 d cs d bf'4-. g\prall | %29
  \barNumberCheck #30
    a4
  \staffTwo \voiceOne
      fs,4-. a-. | %30
    a16\rest g16[ fs g] e4-. g-. | %31
    a16\rest f16[ e f] d4-. f-. | %32
    c'8\rest f,8[ g a bf g] | %33
    a[ f g a] g4 | %34
  \barNumberCheck #35
    c8\rest a8[ g fs e g] | %35
    fs8[ bf a g fs a] | %36
    g8[ c b a gs b] | %37
    a[ f' e d cs e] | %38
    d8 d8\rest d4\rest d4\rest | %39
  \barNumberCheck #40
  \staffOne \voiceTwo
    d8\rest d8[ e fs g e] | %40
    f16 d cs d bf'4-. g4\trill | %41
    a8 bf e,2\trill | %42
    e8\rest <a c>8[ <g bf> <fs a> <e g> <g bf>] | %43
  \barNumberCheck #44
    <fs a>2. | %44
  \bar "|."
}

fugueSix = \score {
  \new PianoStaff \with {
    edition-id = fugue.six
    %\accidentalStyle piano
    \consists "Span_arpeggio_engraver"
  }
  <<
    \new Staff ="Up" \with { \consists "Span_arpeggio_engraver" } <<
      \new Voice \vOne %soprano

    >>
    \new Staff = "Down" \with { \consists "Span_arpeggio_engraver" \clef bass } <<
      \new Voice \vTwo %bass
      \new Voice \vThree
    >>
  >>
  \layout { }
}
%\fugueSix
