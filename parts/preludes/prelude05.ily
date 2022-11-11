\version "2.20.0"
\language "english"

global = {
  \key d \major
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

rightHand = \relative c'' {
  \global
  \barNumberCheck #1
    r16 d e fs a, fs' e d a' d, e fs a, fs' e d | %1
    g e fs g b, d cs b cs e fs g a, g' fs e | %2
    fs d e fs a, cs b a b d e fs b, a' gs fs | %3
    gs e fs gs b, d cs b a cs d e fs, e' d cs | %4
  \barNumberCheck #5
    d b cs d fs, a gs fs gs b cs d e, d' cs b | %5
    cs a b cs e, g fs e fs a b cs fs, e' ds cs | %6
    ds b cs ds fs, a g fs e g a b cs, d' cs b | %7
    as e fs g cs, g' fs e d b' cs d fs, a gs fs | %8
    es gs a b es, d' cs b gs' es fs gs  cs, b' a gs | %9 %beam slope
  \barNumberCheck #10
    a fs gs a cs, e ds cs ds fs g a b, a' g fs | %10
    g e fs g b, d c b c ds e fs a, c b a | %11
    g e' fs g b, d cs b cs e fs g a, g' fs e | %12
    fs d e fs a, c b a b g a b cs, b' a g | %13
    fs d e fs a, c b a b d e fs b, a' gs fs | %14
  \barNumberCheck #15
    gs e fs gs b, d c b a c d e a, g' fs e | %15
    ds a b c fs, c' b a g e' fs g b, d cs b | %16
    as cs d e as, g' fs e cs' as b cs  fs, e' d cs | %17
    d b cs d fs, a gs fs gs b c d e, d' c b | %18
    c a b c e, g fs e fs a b c d, c' b a | %19
  \barNumberCheck #20
    b g a b d, b' a g d' g, a b d, b' a g | %20
    c a b c e, g fs e fs a b c d, c' b a | %21
    b g a b d, fs e d e g a b e, d' cs b | %22
    cs a b cs e, g fs e d fs g a b, a' g fs | %23
    g e fs g b, d cs b cs e fs g a, g' fs e | %24
  \barNumberCheck #25
    fs d e fs a, fs' e d a' fs g a d, c' b a | %25
    b g a b d, b' a g d' b cs d gs, f' e d | %26
    cs a b cs e, g fs e a d e fs b, a' g fs  | %27
    g cs, d e a, g' fs e fs b, cs d gs, fs' e d | %28
    cs g a bf e, g f e f d' e f cs e d cs | %29
  \barNumberCheck #30
    d bf' a g f e d cs d f e d b' gs a b | %30
    f d e f b, gs a b e, fs gs a b cs d e | %31
  \voiceOne
  \mergeDifferentlyDottedOn
    f4. e8 ~ e[ d] ~ d[ cs] | %32
    d4\arpeggio ~ d32 cs b a gs fs e fs gs a b cs d e f e d cs b a gs fs e d | %33
    <cs' e g bf>8\arpeggio r8 <d f gs b>8\arpeggio r8 d4 cs4 | %34
    <fs, a d>1\fermata | %35
  \bar "|."
}

rightHandTwo = \relative c''{
  \barNumberCheck #1
    s1*31
  \barNumberCheck #32
    \voiceTwo
    f16 cs d a bf g e' g, a f d' f, g e cs' e, | %32
    <d f gs b>4\arpeggio s2. | %33
    <cs e g bf>8\arpeggio r8 <d f gs b>8\arpeggio r8 <e a>2 | %33
}

leftHand = \relative c {
  \global
  \barNumberCheck #1
    d8 r d' r fs, r d' r | %1
    e, r d' r a r cs r | %2
    d, r d' r d, r d' r | %3
    d, r gs r cs, r a' r | %4
  \barNumberCheck #5
    b, r a' r e r gs r | %5
    a, r a' r a, r a' r | %6
    a, r ds r g, r e' r | %7
    fs, r fs' r fs, r fs' r | %8
    fs, r fs' r fs, r fs' r | %9
  \barNumberCheck #10
    fs, r fs' r b, r ds r | %10
    e, r e' r e, r ds' r | %11
    e, r e' r a, r cs r | %12
    d, r d' r d, r d' r | %13
    d, r d' r d, r d' r | %14
  \barNumberCheck #15
    d, r gs' r c, r fs r | %15
    b, r ds r e r g r | %16
    b, r e r  g r as r | %17
    b, r b' r e, r gs r | %18
    a, r a' r d, r fs r | %19
    \barNumberCheck #20
    g, r g' r b, r g' r | %20
    a, r g' r d r fs r | %21
    g, r g' r g, r g' r | %22
    g, r cs r fs, r d' r | %23
    e, r d' r a r cs r | %24 %<--
  \barNumberCheck #25
    d, r d' r fs, r a' r | %25
    g, r g' r b, r d' r | %26
  \voiceOne
    a, r g' r fs r d r | %27
    e8 r cs r d r b r | %28
    r16 e fs g cs, e d cs d f g a e g f e | %29
  \oneVoice
    f16 d e f a, c bf a gs2 ~ | %30 %30
    gs1 | %31
  \voiceOne
    r8 a' g cs, f[ d] e[ g] | %32
    <d f gs b>4\arpeggio r4 r2 | %33
    s2 << {a'2} \\ {a,2} \\ {e'4 g} >> | %34
    <d fs a>1_\fermata | %35
  \bar "|."
}

leftHandTwo = \relative c {
  \voiceTwo
  \barNumberCheck #1
    s1*26
  \barNumberCheck #27
    a1 ~ | %27
    a1 ~ | %28
    a1   | %29
    s1*2 | %30-31
  \barNumberCheck #32
    a1 | %32
    <a>4\arpeggio r4 r2 | %34
}

preludeFive = \score {
  \new PianoStaff \with {}
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff ="Up" \with { } <<
      \new Voice \rightHand
      \new Voice \rightHandTwo
    >>
    \new Staff = "Down" \with { \clef bass }
      <<
        \new Voice \leftHand
        \new Voice \leftHandTwo
      >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.five
    }
  }
}
%\preludeFive
