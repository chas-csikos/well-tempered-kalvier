\language "english"
global = {
  \key f \major
  \time 12/8
}
vOne = \relative c'' {
  \global
  f16 c a g a c f, a c ef d c d bf f e f bf d, f a c bf a |
  bf16 g e d e g c, e g bf a g a g f e f a c, e f a g f |
  b2.^\upprall c16 g e d e g c, e g bf a g |
  cs2.^\downprall d16 a f e f a d, f a c bf a |
  bf16 g e d e g c, e g bf a g a f d cs d f bf, d f a g f |
  g16 e cs b cs e a, cs e g f e f8 a d a f d |
  g bf d bf g d g cs e cs g e |
  d'16 a f e f a d, f a c bf a f' d bf a bf d f, bf d f e d |
  gs2.^\downprall a16 e cs b cs e a, cs e g fs e |
  fs2.^\upprall g16 d b a b d g, b d f ef d |
  ef16 c a g a c f, a c ef d c d bf g fs g bf ef, g bf d c bf |
  c a fs e fs a d, fs a c bf a
  << { bf2.^\upprall ~ |
       bf2. a2. ~ |
       a16 a f e f a }
     \\ { s2. |
          e2. ef2._\downprall |
          d8 s4 } >>
  d16 f a c bf a g d' bf a bf d g, bf d f e d |
  e g e d e g c, e g bf a g c a f e f a d, f a c bf a |
  bf g e d e g c, e g bf a g a f c bf c f a, c ef g f ef |
  d4.^\prall~ d16 c bf a g f bf8 g' e c bf g' |
  a,16 g f e f a d, f d bf g e' f bf, a g a c f,4 r8 |
  \bar "|."
}

vTwo = \relative c {
  \global
  f8 a c a f a bf d bf f,4 r8 |
  f'8 g bf g e c f a f f,4 r8 |
  f'16 d b a b d g, b d f e d e2.\upprall |
  g16 e cs b cs e a, cs e g f e f2.^\upprall |
  g8 bf g e c e f a f d bf d |
  e8 g e cs a cs d16 a f e f a d, f a c bf a |
  d bf g fs g bf d, g bf d cs b cs bf g fs g bf d, g cs e d cs |
  d8 f a f d f d, f bf d4 r8 |
  d'16 b gs fs gs b e, gs b d cs b cs2.^\upprall |
  c16 a fs e fs a d, fs a c b a b2.^\upprall |
  c8 ef c a f a bf d bf g ef g |
  a c a fs d fs g16 d bf a bf d g, bf d f e d |
  c16 g e d e g c, g' c e d c f c a g a c f, c' f a g f |
  bf2.^\prall ~ bf ~ |
  bf2. a8 c a f d f |
  g bf g e c e f16 c a g a c f, a c ef d c |
  f16 d bf a bf d f, bf d f e d e c bf a bf e g, bf e g f e |
  f8 a, d bf8.^\trill a32 bf c8 f,4 r8 r16 c' a c f,8 |
  \bar "|."
}

preludeEleven = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with {} <<
      \new Voice \vOne
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vTwo
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.eleven
    }
    \context {
      \PianoStaff
      \override StaffGrouper.staff-staff-spacing =
        #'((basic-distance . 9)
           (minimum-distance . 7)
           (padding . 4)
           (stretchability . 10)) %default 9, 7, 1, 5\
    }
  }

}
%\preludeEleven
