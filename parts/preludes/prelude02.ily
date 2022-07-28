\version "2.20.0"
\language "english"

global = {
  \key c \minor
  \time 4/4
  \set Score.tempoHideNote = ##t
}

staffOne = \change Staff = right
staffTwo = \change Staff = left

soprano = \relative c'' {
  \global
    c16 ef, d ef c ef d ef c' ef, d ef c ef d ef | %1
    af f e f c f e f af f e f c f e f | %2
    b f ef f d f ef f b f ef f d f ef f | %3
    c' g f g ef g f g c g f g ef g f g | %4
  \barNumberCheck #5
    ef' af, g af ef af g af ef' af, g af ef af g af | %5
    d fs, e fs d fs e fs d' fs, e fs d fs e fs | %6
    d' g, fs g d g fs g d' g, fs g d g fs g | %7
    c e, d e c e d e c' e, d e c e d e | %8
    c' f, e f c f e f c' f, e f c f e f | %9
  \barNumberCheck #10
    bf f ef f d f ef f bf f ef f d f ef f | %10
    bf g f g ef g f g bf g f g ef g f g | %11
    af g f g ef g f g af g f g ef g f g | %12
    af d, c d bf d c d af' d, c d bf d c d | %13
    g bf, af bf ef bf af bf g' bf, af bf ef bf af bf | %14
  \barNumberCheck #15
    f' c bf c a c bf c f c bf c a c bf c | %15
    f d c d b d c d f d c d b d c d | %16
    f d c d b d c d f d c d b d c d | %17
    ef c b c g c b c ef c b c g c b c | %18
    f, ef' d ef f ef d ef f, ef' d ef f ef d ef | %19
  \barNumberCheck #20
    fs, c' b c ef c b c fs, c' b c ef c b c | %20
    ef c b c g c b c ef c b c g c b c | %21
    fs c b c a c b c fs c b c a c b c | %22
    g' c, b c d c b c g' c, b c d c b c | %23
    af' c, b c d c b c af' c, b c d c b c | %24
  \barNumberCheck #25
    \staffTwo \stemUp s16*3 f,16^\markup { \small \italic "destra" } af f e f b f d' b af f e f | %25
    s16*3 g16^\markup { \small \italic "destra" } c g fs g ef' c g' ef c af g af | %26
    \staffOne \stemNeutral s16*3 c16 ef c b c fs c a' fs ef c b c | %27
    \tempo "Presto"
    r d' c d ef c b c a c b c d b a b | %28
    g b a b c a g a fs a g a b g fs g | %29
  \barNumberCheck #30
    \once \override Beam.auto-knee-gap = #2
    d g' f g af f ef f d f ef f g ef d ef | %30
    \stemUp c ef d ef g d c d b d c d ef c b c | %31
    g c b c af f' ef f g, ef' d ef f, d' c d | %32
    ef, c' bf %{ b? %} c af f ef f g ef d ef f d c d | %33
  \tempo "Adagio"
    \once\tieUp e8\arpeggio~e32 c d e f64 g af bf c bf af g f16 g32 e
      \once\tieUp f8\mordent\arpeggio~f32 g f e f g af g f64 ef d ef f d ef f | %34
  \tempo "Allegro"
  \barNumberCheck #35
    \stemDown b,8.
  \staffTwo \voiceOne
      d,16 f af g f b f d' f, b af g f | %35
    e df' bf g c af f af g bf g e af f d f | %36
    e g e c f d b d r8 r16 d e g bf g | %37
    af
  \staffOne \stemNeutral
      c f d f af c b c g f d e4\fermata | %38
  \bar "|."
}

alto = \relative c' {
  \voiceTwo
  s1*33
  c4 s c s | %34
}

tenor = \relative c' {
  \voiceOne
  s1*33
  <g bf>4\arpeggio s <f af>\arpeggio s
  s16 \voiceThree \tieDown c,16 b'8 ~ b2. |
  s1
  s2 \voiceFour b16\rest g c8 ~ c4~ | %37
  c1 | %38
}

bass = \relative c {
  \global
  \barNumberCheck #1
    c16 g' f g ef g f g c, g' f g ef g f g | %1
    c, af' g af f af g af c, af' g af f af g af | %2
    c, af' g af f af g af c, af' g af f af g af | %3
    c, ef d ef g ef d ef c ef d ef g ef d ef | %4
  \barNumberCheck #5
    c c' bf c af c bf c c, c' bf c af c bf c | %5
    c, a' g a fs a g a c, a' g a fs a g a | %6
    bf, bf' a bf g bf a bf bf, bf' a bf g bf a bf | %7
    bf, g' f g e g f g bf, g' f g e g f g | %8
    af, af' g af f af g af af, af' g af f af g af | %9
  \barNumberCheck #10
    af, d c d f d c d af d c d f d c d | %10
    g, ef' d ef g ef d ef g, ef' d ef g ef d ef | %11
    c ef d ef af ef d ef c ef d ef af ef d ef | %12
    d f ef f af f ef f d f ef f af f ef f | %13
    ef g f g af g f g ef g f g af g f g | %14
  \barNumberCheck #15
    ef a g a f a g a ef a g a f a g a | %15
    d, f ef f af f ef f d f ef f af f ef f | %16
    c f e f af f e f c f e f af f e f | %17
    c ef d ef f ef d ef bf ef d ef f ef d ef | %18
    af, c b c d c b c af c b c d c b c | %19
  \barNumberCheck #20
    a ef' d ef c ef d ef a, ef' d ef c ef d ef | %20
    g, ef' d ef f ef d ef g, ef' d ef f ef d ef | %21
    g, ef' d ef c ef d ef g, ef' d ef c ef d ef | %22
    g, ef' d ef f ef d ef g, ef' d ef f ef d ef | %23
    g, ef' d ef f ef d ef g, ef' d ef f ef d ef | %24
  \barNumberCheck #25
    \voiceTwo
    g, b d s16 s4 s2 | %25
    g,16-\markup { \small \italic "sinistra" } c ef s16 s4 s2 | %26
    g,16 a fs' s16 s4 s2 | %27
    \oneVoice
    \once\tieDown g,1~ | %28
    \once\override Beam.auto-knee-gap = #0
    g16 d'' c d ef c b c a c b c d b a b | %29
  \barNumberCheck #30
    g b a b c af g af f a g a b g f g | %30
    \stemUp ef \staffOne \stemDown g' f g af f ef f d f ef f g ef d ef | %31
    c ef d ef f d c d ef c b c d \staffTwo \stemNeutral b a b | %32
    c ef d ef f, d' c d ef, c' b c d, b' a b | %33
    \set PianoStaff.connectArpeggios = ##t
    \voiceTwo c,4\arpeggio \oneVoice r \voiceTwo c\arpeggio  \oneVoice r | %34
  \barNumberCheck #35
    \oneVoice r16 \voiceTwo \tieDown c,8. ~ c2. | %35
    s1 | %36
    s2
        \voiceTwo
        c2 ~ | %37
        c1\fermata | %38
  \bar "|."
}

preludeTwo = \score {
  \new PianoStaff \with {} <<
    \new Staff = "right" <<
      \new Voice = "treble" \soprano
      \new Voice = "alto" \alto
    >>
    \new Staff = "left" \with { \clef bass } <<
      \new Voice = "tenor" \tenor
      \new Voice = "bass" \bass
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.two
    }
  }
}
%\preludeTwo
