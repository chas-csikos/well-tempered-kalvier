\version "2.20.0"
\language "english"

global = {
  \key e \minor
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"


soprano =  {
  \global
  \relative c'' {
    \voiceOne
    \shape #'((0 . 0.25)(0 . 0.25)(0.5 . 0.25)(0.5 . 0.25)) Tie
    e2 ~ e8[ fs32 e ds e] e8.^\prall ds32 e |
    fs1 ~ |
    fs16 e ds( e) fs( e) g( fs) a4 ~ a32[ c b a g16 a32 fs] |
    g2 ~ g8 c16 b c8 e,8 |
    fs2 ~ fs8 b8 ~ b32[ c b a b g a b] |
  %5
    e,2 ~ e16 c a b c[ e d e32 c] |
    d2 ~ d8 g8 ~ g32[ f e d c16 d32 b] |
    c2 ~ c16 d e fs g fs a c, |
    %{\BachAccentFallendFromGrace%} \appoggiatura  c8 b2 ~ b8 b8 a32[ g fs16 g32 fs e16] |
    e'8[ ~ e32 fs e ds] e8. fs16 fs4.^\trill r16 e32 fs32 |
  %10
    g2 ~ g16 b, a \once\tieDown g ~ g[ fs32 e ds16 e] |
    c'8[ ~ c32 b a b] c[ d c b c16 d] d4.^\trill r16 c32 d |
    e2 ~ e8 d16 c d b gs a |
    d2 ~ d16 f e d c8.^\prall[ d32 b] |
    c1 ~ |
  %15
    c4 ~ c16 a gs a c a gs a e a gs a |
    c2 ~ c8 b cs e16 ds |
    e1 ~ |
    e8 ds16 fs a c b ds, e2 ~ |
    e4 ~ e32[ fs e ds e cs ds16] ds4.^\trill e8 |
  %20
    e1 ~ |
    e1 ~ |
    \tempo "Presto"
    e16 a b c 
  \oneVoice 
      b c b a e a b c b c b a |
    b a gs a b a gs a d,8 b' ~ b16 a gs a |
    f b, c d c d c b e d e f e f e d |
  %25
    c gs a b a gs a b c a' g f e f e d |
    cs e fs g fs g fs e ds fs g a g a g fs |
    g g, a b a b a g f' gs, a b a b a gs |
    e' a, b c b c b a d b c d c d c b |
    c a gs a e a gs a c2 ~ |
  %30
    c16 a gs a ds, a' gs a c a gs a e a gs a |
    c fs, g a g fs e ds b' e, fs g fs e ds e |
    a g' a b a b a g a, fs' g a g a g fs |
    \voiceOne as, e' fs g fs g fs e ds2 |
    r16 b c d c d c b a2 |
  %35
    r16 g a b a b a g r16 fs g a g a g fs |
    r16 e fs g fs g fs e ds2 |
    b16 cs ds e fs g a b c2 |
    cs ds |
    e16 d c b a g fs e c' b a g fs e ds cs |
    \mergeDifferentlyDottedOn
    ds b fs'8 r16 e8 ds16 <e b>2
  }
  \bar "|."
  \mark\markup{ \fontsize #-2 \musicglyph #"scripts.ufermata"}
}

alto =  { \stemDown
  \relative g' {
    <g b>8 r8 r4 <g b>8 r8 r4
    <a c>8 r8 r4 <a c>8 r8 r4
    <a c>8 r8 r4 <b fs'>8 r8 r4
    <b e>8 r8 r4 <b e>8 r8 r4
    <a c>8 r8 r4 <b d>8 r8 r4
  %5
    <g b>8 r8 r4 <a c>8 r8 r4
    <fs a>8 r8 r4 <g b>8 r8 r4
    <e g>8 r8 r4 <fs a>8 r8 r4
    <d g>8 r8 r4 <d g>8 r8 r4
    <a' cs>8 r8 r4 <a ds>8 r8 r4
  %10
    <b e>8 r8 r4 <g b>8 r8 r4
    <f a>8 r8 r4 <f b>8 r8 r4
    <g c>8 r8 r4 <e g>8 r8 r4
    <fs a>8 r8 r4 <gs b>8 r8 r4
    <e a>8 r8 r4 <e a>8 r8 r4
  %15
    <ds a'>8 r8 r4 <e a>8 r8 r4
    <fs a>8 r8 r4 <fs a>8 r8 r4
    <gs b>8 r8 r4 <as cs>8 r8 r4
    <fs a>8 r8 r4 <g b>8 r8 r4
    <g cs>8 r8 r4 <fs b>8 r8 r4
  %20
    <g b>8 r8 r4 <gs b>8 r8 r4
    <a c>8 r8 r4 <b d>8 r8 r4
    c8 s8 s4 s2
    \repeat unfold 10 s1
  %33
    s2 r16 a b c b c b a |
    g2 r16 fs g a g a g fs |
  %35
    e2 ds2 |
    cs2 r16 a b c b c b a | \staffOne \voiceTwo
    s2 r16 fs' g a g a g fs |
    r16 g a b a b a g r16 a b c b c b a |
    g8 r8 r4 s2 |
  %40
  r16 \once \tieDown b,8. ~ b8[ a] gs2
  }
}

bla = \relative c' { a16 b c b c b a }
bsol = \relative c' { g16 a b a b a g }
bfad = \relative c { fs16 g a g a g fs }
bmi = \relative c { e16 fs g fs g fs e }
bsi = \relative c' { b16 c d c d c b }
bdod = \relative c' { cs16 d e d e d cs }
bred = \relative c' { ds16 e fs e fs e ds }
brex = \relative c { d16 e f e f e d }
bmix = \relative c { e16 f g f g f e }
bsold = \relative c' { gs16 a b a b a gs }
bdo = \relative c' { c16 d e d e d c }
brexu = \relative c' { d16 e f e f e d }
blay = \transpose c c, \bla
bsoly = \transpose c c, \bsol
bredy = \transpose c c, \bred

left =  {
  \global
  %0
  e16 \bsol e \bsol
  e \bla e \bla
  ds \bla ds \bla
  e \bsol e \bsol
  e \bfad d \bfad |
  %5
  d \bmi c \bmi
  c \bfad b, \bsol
  b, \bmi a, \bfad
  g, \bla g \bsi
  a \bdod fs \bred |
  %10
  e \bfad e \bsol
  e \bla d \bsi
  c \brex c \bmix
  c \bfad b, \bsold
  a \bsi g \bla |
  %15
  fs \bla e \bla
  ds \bla ds \bfad
  d \bsold cs \bmi
  c \bfad b, \bmi
  as, \bmi b, \bfad |
  %20
  e \bsol d \bsold
  c \bla gs \bsi |
  a \bdo a \bdo
  a \brexu a \brexu
  gs \brexu gs \bsi
  %25
  a \bsi a \bsi |
  g \bdod fs \bred |
  e' \bmi d \bmix
  c fs gs a gs a gs fs  b, \bsold |
  a \blay g, \blay |
  %30
  fs, \blay e, \blay
  ds, \blay e, \bsoly
  c,8 r8 r4 r16 \bla |
  cs8 r8 r4 b,16 \bfad |
  b, \bsol b, \bla |
  %35
  b, \bsi b, \bla
  b, \bsol b, \bfad
    %\overrideProperty
    %#"Score.NonMusicalPaperColumn"
    %#'line-break-system-details
    %#'((fixed-alignment-extra-space . 5)) \break
  g b a g fs e ds fs
  << { \voiceOne r16 \bredy | r16 \bmi r16 \bfad | e8 }
    \\ { \voiceTwo b,2 | b, b, | c8 } >>
  \oneVoice r8 r4
  a,16 b, c d
  << { \oneVoice e16 fs g a ~ | \voiceOne a8. a16 g8 fs8 e2 } \\
    { s4 \voiceTwo b,2 e,2 } >>
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
  \mark \markup { \fontsize #-2 \musicglyph #"scripts.ufermata" }
}


preludeTen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with {} <<
      \new Voice \soprano %soprano
      \new Voice \alto %mezzo
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \left %bass
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.ten
    }
  }
}
%\preludeTen
