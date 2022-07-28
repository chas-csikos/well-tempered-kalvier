\version "2.20.0"
\language "english"

global = {
  \key g \major
  \time 4/4
}

right = \relative c'' {
  \global
  \set Staff.timeSignatureFraction = 24/16
  \times 2/3 { g16[ b d] g[ d b] d[ b g] b[ g d]  e[ g c] e[ c g] c[ g e] g[ e c]
  a16[ c fs] a[ fs c] fs[ c a] c[ a fs] g[ b d] g[ d b] d[ b g] b[ g e]
  a[ cs e] a[ e cs] e[ cs a] cs[ a e] } d'8 r r d
  \times 2/3 { d16[ cs d] e[ cs d] fs[ cs d] g[ cs, d] a'[ cs, d] b'[ cs, d] a'[ cs, d] g[ cs, e] }
  fs8[ g] a[ b] a[ g] fs[ a]
  \times 2/3 { gs16[ b d] f[ d b] d[ b gs] b[ gs e] d[ f gs] b[ gs f] gs[ f d] f[ d b] }
  c8[ e'] c[ a] e[ e'] c[ a]
  \times 2/3 { ds16[ fs a] c[ a fs] a[ fs ds] fs[ ds b] a[ c ds] fs[ ds c] ds[ c a] c[ a fs] }
  g8[ a] b[ c] b[ a] g[ b]
  \times 2/3 { a16[ gs a] b[ gs a] cs[ gs a] d[ gs, a] e'[ gs, a] fs'[ gs, a] g'[ e cs] a[ cs e] }
  fs8 r \times 2/3 { a16[ fs d] c[ d fs] } a8( g) \times 2/3 { g16[ e cs] a[ cs e] }
  \slurDotted g8( fs) \times 2/3 { fs16[ d b] g[ b d] } fs8( e) \times 2/3 { e16[ cs a] g[ a cs] }
  e8( d) r d \times 2/3 { d16[ c b] b[ a g] g[ b d] f[ e d] d[ e f] }
  e8 r e \times 2/3 { e16[ d cs] cs[ b a] a[ cs e] g[ fs e]
  e16[ fs g] } fs8 r a \times 2/3 { a16[ g fs] fs[ e d] d[ fs a] c[ b a]
  a16[ b c] } b8 ~ \times 2/3 { b16[ a g] f[ e d] c[ e g] a[ fs d] b[ d fs] g[ e c]
  a16[ c e] fs[ d b] g[ b d] e[ c a] fs[ a c] d[ b g] e[ g b] c[ a fs]
  d16[ fs a] b[ g e] c[ e g] a[ fs d] b[ d fs] g[ e b] a[ c e] fs[ d c] } <b d g>1^\fermata
  \bar "|."
}

left = {
  \global
  g8 g, r g g g, r g g g, r g g g, r g g g, r g
  \times 2/3 { fs16[ a cs'] d'[ a fs] a[ fs d] fs[ d b,] } e8 e, r e cs[ a,] b,[ cs]
  \times 2/3 { d16[ cs' d'] e[ cs' d'] fs[ cs' d'] g[ cs' d'] fs[ cs' d'] e[ cs' d'] d[ cs' d'] fs[ cs' d'] }
  b,8 b r a gs gs, r gs
  \times 2/3 { a16[ c' e'] a'[ e' c'] e'[ c' a] c'[ a e] c[ e a] c'[ a e] a[ e c] e[ c a,] } fs,8 fs r e ds ds, r ds
  \times 2/3 { e16[ ds' e'] fs[ ds' e'] g[ ds' e'] a[ ds' e'] g[ ds' e'] fs[ ds' e'] e[ ds' e'] g[ ds' e'] }
  cs8[ d] e[ fs] cs[ b,] a,[ cs]
  \times 2/3 { d16[ fs a] d'[ a fs] } d8 d' \times 2/3 { d16[ g b] d'[ b g] } d8 d'
  \times 2/3 { d16[ a cs'] d'[ a fs] } d8 d' \times 2/3 { d16[ e g] b[ g e] } d8 d'
  \times 2/3 { d16[ fs a] d'[ a fs] a[ fs d] fs[ d c] b,[ d fs] g[ d b,] d[ b, g,] b,[ g, f,]
  e,16[ g, b,] c[ e g] c'[ g e] g[ e d] cs[ e g] a[ e cs] e[ cs a,] cs[ a, g,] }
  \times 2/3 { fs,[ a, cs] d[ fs a] d'[ a fs] a[ fs d] fs[ d a,] d[ a, fs,] } d,8 d
  g,8 ~ \times 2/3 { g,16[ b, d] g[ a b] b[ c' d'] } e'8 \times 2/3 { c'16[ a fs] } d'8 \times 2/3 { b16[ g e] }
  c'8 \times 2/3 { a16[ fs d] } b8 \times 2/3 { g16[ e c] } a8 \times 2/3 { fs16[ d b,] } g8 \times 2/3 { e16[ c a,] }
  fs8 \times 2/3 { d16[ b, g,] e[ c a,] fs[ d b,] } g8[ e] c[ d] g,1_\fermata
  \bar "|."
}

preludeFifteen = \score {
  \new PianoStaff \with {
    \omit TupletNumber
    \omit TupletBracket
  } <<
    \new Staff = "Up" \with { } <<
      \new Voice \right
     >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \left
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.fifteen
    }
  }
}
%preludeFifteen
