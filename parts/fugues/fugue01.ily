\version "2.20.0"
\language "english"

global = {
  \key c \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment     = #(ly:make-moment 1/4)
  \set Timing.beatStructure  = 1,1,1,1
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

%soprano
vOne = \relative c'' {
  \global
  \voiceOne
  \barNumberCheck #1
    R1 | %1
    r2 r8 g[ a b] | %2
    c8. d32 c b8 e a, d~ d16 e d c | %3
    b16 g a b c b c d e d e fs g8 b, | %4
  \barNumberCheck #5
    c8 a d16 c b a g8. g16 f e f g | %5
    a16 g a b c2 b4 | %6
    r8 c[ d e] f8. g32 f e8 a | %7
    d,8 g~ g16 a g f e8 a~ a16 b a g | %8
    f2 e8. fs16 g4~ | %9
  \barNumberCheck #10
    g4 fs g16 f e d c d c b | %10
    a16 c b a g8 r r16 c b a gs8 e' | %11
    d8 c16 b a gs a b c fs, a gs b8 a16 b | %12
    c8[ f] e d~d c16 b b8. a16 | %13
    a4 r r2 | %14
  \barNumberCheck #15
    r2 r8 g[ a b] | %15
    c8. d32 c b8 c d e f8. g32 f | %16
    e8[ a] d, g~g16 a g f e8 a | %17
    d,8 bf'  a g16 f g f g e f g g\prall f32 g | %18
    a16 cs, d g e8.%{ \prall %} d16 d8 r r4 | %19
  \barNumberCheck #20
    r2 r4 r8 g, | %20
    a8 b c8. d32 c b8 e a, d~ | %21
    d16 e d c b c d e f g a g f e d c | %22
    b4 c8 d g, c4 b8 | %23
    c4 b8 bf a d4 c8 | %24
    d8 e f4~f16 a g f e f e d | %25
    c2 r16 g32 a b16 c d e f8~ | %26
  \barNumberCheck #27
    f32 c d e f16 g a8. b16 <g c>2 \fermata | %27
  \bar "|."
}

%alto
vTwo = \relative c' {
  \global
  \voiceTwo
  \barNumberCheck #1
    r8 c[ d e] f8. g32 f e8 a | %1
    d,8 g~g16 a g f e f e d c d c b | %2
    a8 fs' g4~g8 fs16 e fs8 d | %3
    g8[ f e d] c r r g'~ | %4
  \barNumberCheck #5
    g8 f16 e f4~ f16 f e8 d4 | %5
    c8 f r16 g f e f8 d g4~ | %6
    g4 r r2 | %7
    R1 | %8
    r8 g[ a b] c8. d32 c b8 e | %9
  \barNumberCheck #10
    a,8 d~ d16 e d c b8 r r d, | %10
    e8 fs g8. a32 g fs8 b e, a~ | %11
    a16 b a gs fs8 f e d~ d16 e fs gs | %12
    a16 gs a b gs fs gs a b8 r r4 | %13
    r8 c,[ d e] f8. g32 f e8 a | %14
  \barNumberCheck #15
    d,8 g~g16 a g f e8[ e fs g] ~ | %15
    g8 fs gs a ~ a g a b | %16
    c8. d32 c b8 e a, d~ d16 e d c | %17
    b8 g' cs, d e cs d e | %18
    a,8 r r e fs g a8. b32 a | %19
  \barNumberCheck #20
    g8 c fs, b~ b16 c b a g fs e d | %20
    e4 d~ d16 a' g f e g f a | %21
    g4~g16 a bf8 c4 d8 g, | %22
    g4. f8~f e d4 | %23
    e8 a4 g8~g[ f g a] | %24
    bf8. c32 bf a8 d g, c~ c16 d c bf | %25
    a16 bf a g f g f e d4~d8. g16 | %26
  \barNumberCheck #27
    a4 r16 f' d8 e2_\fermata | %27 %\fermata
  \bar "|."
}

%tenor
vThree = \relative c' {
  \barNumberCheck #1
    \oneVoice
      R1*3 | %1-3
    \voiceOne
    r8 g[ a b] c8. d32 c b8 e | %4
  \barNumberCheck #5
    a,8 d~ d16 e d c b8[ c~] c bf | %5
    a8[ d] g, c r16 a b c d4 | %6
    g,4 r8 g a b c8. d32 c | %7
    b8[ e] a, d~ d16 e d c b8 e~ | %8
    e4 d c16 b c a e' d c b | %9
  \barNumberCheck #10
    c16 a b c d c b a g4 r | %10
    R1 | %11
    r8 e[ fs gs] a8. b32 a gs8 c | %12
    fs,8 b~ b16 c b a gs8 a4 gs8 | %13
    a4 r8 g a b c8. d32 c | %14
  \barNumberCheck #15
    b8[ e] a,[ d] ~ d[ g,] d'4 | %15
    c8[ a] e'4 d8 r r4 | %16
    r8 a[b cs] d8. e32 d c8 f | %17
    b,8 e ~ e16 f e d cs8 r r4 | %18
    r8 a[b cs] d8. e32 d c8 fs | %19
  \barNumberCheck #20
    b,8 e ~ e16 fs e d c2 ~ | %20
    c16 d c b a g a fs g8 b c d | %21
    e8. f32 e d8[ g] c,[ f] ~ f16 g f e | %22
    d4 e8 d ~ d g, g4 ~ | %23
    g8[ c,d e] f8. g32 f e8 a | %24
    d,8 g ~ g16 a g f e d e f g a bf g | %25
    a16 e f g a b c a b2 | %26
  \barNumberCheck #27
    c1 | %27 %fermata
  \bar "|."
}

%bass
vFour = \relative c {
  \voiceTwo
  \barNumberCheck #1
    s1*3 | %1-3
    R1 | %4
  \barNumberCheck #5
    r2 r8 c[ d e] | %5
    f8. g32 f e8[ a] d,[ g] ~ g16 a g f | %6
    e16 f e d c d c b a8[ d] a'[ fs] | %7
    g16 a bf g cs,8 d a'4 e | %8
    a16 b c d c b a g c8 r r4 | %9
  \barNumberCheck #10
    r2 r8 g,[ a b] | %10
    c8. d32 c b8[ e] a,[ d] ~ d16 e d c | %11
    b8 e4 d8 c f4 e8 ~ | %12
    e8 d4 e8 f e16 d e4 | %13
    a,4 r r2 | %14
  \barNumberCheck #15
    r8 g[ a b] c4 ~ c16 d32 c b16 e | %15
    a,8 d ~ d16 e d c b8 bf a g | %16
    a8[ fs' g e] d4 e8 f | %17
    g8. a32 g f8[ bf] e,[ a] ~ a16 bf a g | %18
    f16 e f d g8 a d,2 ~ | %19
  \barNumberCheck #20
    d16 e d c b a g fs e8[ e' fs g] ~ | %20
    g8 a16 g fs8 d g2 ~ | %21
    g2 a4 b8 c | %22
    f,16 a g f e d c b c d e f g8 g, | %23
    \shape #'( (0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Tie
    c1 ~ | %24
  \barNumberCheck #25
    \shape #'( (0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Tie
    c1 ~ | %25
    \shape #'( (0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Tie
    c1 ~ | %26
    c1_\fermata | %27
  \bar "|."
}

fugueOne = \score {
  \new PianoStaff \with {} <<
    \new Staff = "Up" <<
      \new Voice = "soprano" \vOne %soprano
      \new Voice = "alto" \vTwo %alto
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice = "tenor" \vThree %tenor
      \new Voice = "bass" \vFour %b ass
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f fugue.one
        %\consists #(custom-line-breaks-engraver '(3 3 3 2 3  3 2 2 3 3))
        %\consists #(custom-line-breaks-engraver '(3 2 2 2 2 2  3 2 2 2 2 3))
    }
  }
}
%\fugueOne
