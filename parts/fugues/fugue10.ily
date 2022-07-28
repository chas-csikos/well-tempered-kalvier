\version "2.20.0"
\language "english"

global = {
  \key e \minor
  \time 3/4
}

vOne = \relative c' {
  \global
  \barNumberCheck #1
    e16 g b e ds e d e cs e c e | %1
    b e ds e as, cs g fs g as fs e | %2
    d8 b' r16 fs' g fs e d cs e | %3
    d4 ~ d16 cs b as b cs as b | %4
  \barNumberCheck #5
    cs fs, as cs e as, cs e g fs e g | %5
    fs e d cs b as gs fs d'4 ~ | %6
    d16 e, gs b d gs, b d f e d f | %7
    e d c b a gs fs e c'4 ~ | %8
    c16 a d, e fs g a b c d e fs | %9
  \barNumberCheck #10
    g fs a g fs e d c b g' a, fs' | %10
    g, b d g fs g f g e g ef g | %11
    d g fs g cs, e bf a bf cs a g | %12
    fs8 d' r16 a' b a g fs e g | %13
    fs4 ~ fs16 e d cs d e cs d | %14
  \barNumberCheck #15
    e d cs b a gs e' d cs b a g | %15
    fs8 d fs a d fs, | %16
    d'16 c b a g fs d' c b a g f | %17
    e8 c e g c e, | %18
    e'16 d c b a gs e' d c b a gs | %19
  \barNumberCheck #20
    a c e a r e f e d c b d | %20
    c4 ~ c16 b a gs a fs ds b' | %21
    e, g b e ds e d e cs e c e | %22
    b e ds e as, cs g fs g as fs e | %23
    ds8 b' r16 b' c b a g fs a | %24
  \barNumberCheck #25
    g4 ~ g16 fs e ds e fs d e | %25
    cs8 a' r16 a bf a g f e g | %26
    f4 ~ f16 e d cs d e c d | %27
    b8 g' r16 a, b c d e f d | %28
    e d g f e d cs bf a bf g a | %29
  \barNumberCheck #30
    f8 d' r16 a' bf a g f e g | %30
    f4 ~ f16 e d c d c d e | %31
    a, c e a gs a g a fs a f a | %32
    e a gs a ds, fs c b c ds b a | %33
    gs8 e gs b e gs, | %34
  \barNumberCheck #35
    e'16 d cs b a gs e' d cs b a g | %35
    fs8 d fs a d fs, | %36
    d'16 c b a g fs d' c b a g fs | %37
    b a g fs e ds b' a g fs e ds | %38
    e g b e ds e d e cs e c e | %39
  \barNumberCheck #40
    b a g c b a b gs a g a fs | %40
    g fs g a ds, fs c b c ds b a | %41
    gs32( b e16) r8 r4 r4 | %42
  \bar "|." %fermata
}

vTwo = \relative c {
  \global
  \barNumberCheck #1
    R2. | %1
    R2. | %2
    b16 d fs b as b a b gs b g b | %3
    fs b as b es, gs d cs d es cs b | %4
  \barNumberCheck #5
    as8 fs' r16 fs' g fs e d cs e | %5
    d4 ~ d16 cs b as b cs a b | %6
    gs,8 e' r16 e' f e d c b d | %7
    c4 ~ c16 b a gs a b g a | %8
    fs,8 d' r16 e fs g a b c a | %9
  \barNumberCheck #10
    b a c b a g fs e d e c d | %10
    b8 g' r16 d' e d c b a c | %11
    b4 ~ b16 a g fs g fs g a | %12
    d, fs a d cs d c d b d bf d | %13
    a d cs d gs, b f e f gs e d | %14
  \barNumberCheck #15
    cs8 a cs e a cs, | %15
    a'16 g fs e d cs a' g fs e d c | %16
    b8 g b d g b, | %17
    g'16 f e d c b g' f e d c b | %18
    e d c b a gs e' d c b a gs | %19
  \barNumberCheck #20
    a c e a gs a g a fs a f a | %20
    e a gs a ds, fs c b c ds b a | %21
    g8 e' r16 b' c b a g fs a | %22
    g4 ~ g16 fs e ds e fs ds e | %23
    fs b, ds fs a ds, fs a c b a c | %24
  \barNumberCheck #25
    b a g fs e ds cs b g'4 ~ | %25
    g16 a, cs e g cs, e g bf a g bf | %26
    a g f e d cs b a f'4 ~ | %27
    f16 d g, a b c d e f g a b | %28
    c b e d cs bf a g f d' e, cs' | %29
  \barNumberCheck #30
    d, f a d cs d c d b d bf d | %30
    a d cs d gs, b f e f gs e d | %31
    c8 a' r16 e'16 f e d c b d | %32
    c4 ~ c16 b a gs a fs ds fs | %33
    b a gs fs e ds b' a gs fs e d | %34
  \barNumberCheck #35
    cs8 a cs e a cs, | %35
    a'16 g fs e d cs a' g fs e d c | %36
    b8 g b d g b, | %37
    b'16 a g fs e ds b' a g fs e ds | %38
    e b g e r b'' c b a g a fs | %39
  \barNumberCheck #40
    g fs e e' ds e d e cs e c e | %40
    b8[ a] b r b, r | %41
    e, r8 r4 r4 | %42
  \bar "|."
  \mark\markup{\fontsize #-2 \musicglyph #"scripts.ufermata"}
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

fugueTen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with {} <<
      \new Voice \vOne
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \vTwo
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f fugue.ten
    }
  }
}
%\fugueTen
