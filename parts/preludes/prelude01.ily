\version "2.20.0"
\language "english"

global = {
  \key c \major
  \time 4/4
  \set Score.tempoHideNote = ##t
}

%soprano
vOne = \relative c'' {
  \global
  \oneVoice
  \barNumberCheck #1
    r8 g16 c e g, c e r8 g,16 c e g, c e | %1
    r8 a,16 d f a, d f r8 a,16 d f a, d f | %2
    r8 g,16 d' f g, d' f r8 g,16 d' f g, d' f | %3
    r8 g,16 c e g, c e r8 g,16 c e g, c e | %4
  \barNumberCheck #5
    r8 a,16 e' a a, e' a r8 a,16 e' a a, e' a | %5
    r8 fs,16 a d fs, a d r8 fs,16 a d fs, a d | %6
    r8 g,16 d' g g, d' g r8 g,16 d' g g, d' g | %7
    r8 e,16 g c e, g c r8 e,16 g c e, g c | %8
    r8 e,16 g c e, g c r8 e,16 g c e, g c | %9
  \barNumberCheck #10
    r8 d,16 fs c' d, fs c' r8 d,16 fs c' d, fs c' | %10
    r8 d,16 g b d, g b r8 d,16 g b d, g b | %11
    r8 e,16 g cs e, g cs r8 e,16 g cs e, g cs | %12
    r8 d,16 a' d d, a' d r8 d,16 a' d d, a' d | %13
    r8 d,16 f b d, f b r8 d,16 f b d, f b | %14
  \barNumberCheck #15
    r8 c,16 g' c c, g' c r8 c,16 g' c c, g' c | %15
    r8 a,16 c f a, c f r8 a,16 c f a, c f | %16
    r8 a,16 c f a, c f r8 a,16 c f a, c f | %17
    r8 g,16 b f' g, b f' r8 g,16 b f' g, b f' | %18
    r8 g,16 c e g, c e r8 g,16 c e g, c e | %19
  \barNumberCheck #20
    r8 bf16 c e bf c e r8 bf16 c e bf c e | %20
    r8 a,16 c e a, c e r8 a,16 c e a, c e | %21
    r8 a,16 c ef a, c ef r8 a,16 c ef a, c ef | %22
    %\mark \seeAppendix %Schwencke measure
    r8 b16 c d b c d r8 b16 c d b c d | %23
    r8 g,16 b d g, b d r8 g,16 b d g, b d | %24
  \barNumberCheck #25
    r8 g,16 c e g, c e r8 g,16 c e g, c e | %25
    r8 g,16 c f g, c f r8 g,16 c f g, c f | %26
    r8 g,16 b f' g, b f' r8 g,16 b f' g, b f' | %27
    r8 a,16 c fs a, c fs r8 a,16 c fs a, c fs | %28
    r8 g,16 c g' g, c g' r8 g,16 c g' g, c g' | %29
  \barNumberCheck #30
    r8 g,16 c f g, c f r8 g,16 c f g, c f | %30
    r8 g,16 b f' g, b f' r8 g,16 b f' g, b f' | %31
    r8 g,16 bf e g, bf e r8 g,16 bf e g, bf e | %32
    r8 f,16 a c f c a c \change Staff = "Down" \voiceOne a f a f d f d | %33
    \change Staff = "Up"\oneVoice r8 g'16 b d  f d b d b g b d, f e d | %34
  \barNumberCheck #35
    <e g c>1\fermata | %35
  \bar "|."
}
%alto
vTwo = \relative c' {
  \global
  \voiceOne
  \barNumberCheck #1
    r16 e8. ~ e4 r16 e8. ~ e4 | %1
    r16 d8. ~ d4 r16 d8. ~ d4 | %2
    r16 d8. ~ d4 r16 d8. ~ d4 | %3
    r16 e8. ~ e4 r16 e8. ~ e4 | %4
  \barNumberCheck #5
    r16 e8. ~ e4 r16 e8. ~ e4 | %5
    r16 d8. ~ d4 r16 d8. ~ d4 | %6
    r16 d8. ~ d4 r16 d8. ~ d4 | %7
    r16 c8. ~ c4 r16 c8. ~ c4 | %8
    r16 c8. ~ c4 r16 c8. ~ c4 | %9
  \barNumberCheck #10
    r16 a8. ~ a4 r16 a8. ~ a4 | %10
    r16 b8. ~ b4 r16 b8. ~ b4 | %11
    r16 bf8. ~ bf4 r16 bf8. ~ bf4 | %12
    r16 a8. ~ a4 r16 a8. ~ a4 | %13
    r16 af8. ~ af4 r16 af8. ~ af4 | %14
  \barNumberCheck #15
    r16 g8. ~ g4 r16 g8. ~ g4 | %15
    r16 f8. ~ f4 r16 f8. ~ f4 | %16
    r16 f8. ~ f4 r16 f8. ~ f4 | %17
    r16 d8. ~ d4 r16 d8. ~ d4 | %18
    r16 e8. ~ e4 r16 e8. ~ e4 | %19
  \barNumberCheck #20
    r16 g8. ~ g4 r16 g8. ~ g4 | %20
    r16 f8. ~ f4 r16 f8. ~ f4 | %21
    r16 c8. ~ c4 r16 c8. ~ c4 | %22
    r16 f8. ~ f4 r16 f8. ~ f4 | %23
    r16 f8. ~ f4 r16 f8. ~ f4 | %24
  \barNumberCheck #25
    r16 e8. ~ e4 r16 e8. ~ e4 | %25
    r16 d8. ~ d4 r16 d8. ~ d4 | %26
    r16 d8. ~ d4 r16 d8. ~ d4 | %27
    r16 ef8. ~ ef4 r16 ef8. ~ ef4 | %28
    r16 e8. ~ e4 r16 e8. ~ e4 | %29
  \barNumberCheck #30
    r16 d8. ~ d4 r16 d8. ~ d4 | %30
    r16 d8. ~ d4 r16 d8. ~ d4 | %31
    r16 c8. ~ c4 r16 c8. ~ c4 | %32
    r16 c8. ~ c4 ~ c2 | %33
    r16 b8. ~ b4 ~ b2 | %34
  \barNumberCheck #35
    c1 | %35
  \bar "|."
}
%tenor
vThree = \relative c' {
  \voiceTwo
  \barNumberCheck #1
    c2 c | %1
    c2 c | %2
    b2 b | %3
    c2 c | %4
  \barNumberCheck #5
    c2 c | %5
    c2 c | %6
    b2 b | %7
    b2 b | %8
    a2 a | %9
  \barNumberCheck #10
    d,2 d | %10
    g2 g | %11
    g2 g | %12
    f2 f | %13
    f2 f | %14
  \barNumberCheck #15
    e2 e | %15
    e2 e | %16
    d2 d | %17
    g,2 g | %18
    c2 c | %19
  \barNumberCheck #20
    c2 c | %20
    f,2 f | %21
    fs2 fs | %22
    af2 af | %23
    g2 g | %24
  \barNumberCheck #25
    g2 g | %25
    g2 g | %26
    g2 g | %27
    g2 g | %28
    g2 g | %29
  \barNumberCheck #30
    g2 g | %30
    g2 g | %31
    c,2 c | %32
    c2 ~ c | %33
    \once \tieDashed c2 ~ c | %34
  \barNumberCheck #35
    c1_\fermata | %35
  \bar "|."
}

preludeOne = \score {
  \new PianoStaff \with{ edition-id = prelude.one } <<
    \new Staff = "Up" \with { } <<
      \new Voice = "soprano" \vOne
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vTwo
      \new Voice \vThree
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.one
    }
  }
}
%\preludeOne
