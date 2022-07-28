\language "english"

global = {
  \key g \minor
  \time 4/4
}

right = \relative c''' {
  \global
  \override TrillSpanner.bound-details.right.padding = #40
  g1^\startTrillSpan ~ | \noBreak
  g16\stopTrillSpan[ d ef32 d c16] d[ g c,32 bf a16] bf[ g' c,32 bf a16] bf[ g' a,32 g fs16] |
  g1^\trill ~ |
  g16[ e' bf32 a g16] a[ e' g,32 fs e16] fs8.[ g16] fs[ a d32 c bf16] |
  c16[ ef d32 c bf16] c[ a' c,32 bf a16] bf[ d c32 bf a16] bf[ g' bf,32 a g16] |
  a16[ f bf32 c d16] c[ f, d'32 ef f16] ef16[ c g'32 a bf16] a32[ bf c16 f,32 g ef16] |
  << 
    % Voice.E
    \new Voice {
      \voiceOne 
        c'16\rest bf16 g bf f bf ef, bf' f bf g bf f bf ef, a
        bf2. f4 ~
        f16[ g32 f ef f d16] ef4 ~ ef16[ f32 ef d ef c16] d4 ~
        d16[ ef32 d c d b16] c4 ~ c16[ d32 c b c a16] b4
        f'16\rest c16 af c g c f, c' g c af c g c f, b
        c4 ef4 ~ ef16[ a32 g fs g a16] d,16 ef8.
        d8[ c] bf4 ~ bf16[ ef32 d c d ef16] af,16[ c32 bf af bf c16]
        fs,4 d'16\rest g,32[ a bf a g16] c4
        bf4 a g fs f'16\rest g[ f32 ef d16] 
    }
    % Voice.F
    \new Voice {
      \voiceTwo d8 ef d c d ef d c d ef f g d[ ef] ~ ef16 d b d
      g,4 ~ g16[ c32 bf af bf c16] f,4 ~ f16[ bf32 af g af bf16]
      ef,4 ~ ef16[ af32 g f g af16] d,4 ~ d16[ ef32 f ef f d16] ef8[ f] ef[ d] ef[ f] ef[ d]
      ef8[ g8] ~ g[ c8] ~ c4 ~ c16.[ c32 a bf c16]
      bf8[ fs] g[ d] ef2 ~ ef4 d4 d16\rest fs32[ g a g fs16] d16\rest e32[ fs g fs e16]
      c16\rest d32[ e fs e d16] c16\rest cs32[ d e d cs16] d4 f4\rest 
    }
  >>
  \oneVoice ef'16[ c' d,32 c bf16] c16[ a' bf,32 a g16] a16[ ef'32 d c bf a16]
  << { \voiceOne bf4 ~ bf16[ c32 bf af c fs,16] g4 ~ g4 fs4
  c'16\rest d,32[ g f ef d16] ef8[ d] c'16\rest g32[ c bf a g16] a16[ c32 a g fs e16] fs2 g2^\fermata } \\
  { d16\rest a'32[ g f ef d16] ef4 e c16\rest a32[ bf c bf a16] b16\rest c32[ d ef d c16]
  bf8[ b] c[ b] c2 ~ c4 ~ c16[ d32 ef d ef c16] ~ c16[ c32 b a b c16] b4\trill-\tweak font-size #-2 _\fermata } >>
  \bar "|."
}

left = \relative c' {
    \global
  <<
    {
      bf16 d c ef bf d a c bf d c ef bf d a c bf8[ c] bf[ ef] d[ ef] d[ c]
      bf16 c d8 ~ d16 c8 bf16 ~ bf a8 bf16 ~ bf c8 bf16
      a8 g e a ~ a16 c bf8] ~ bf16 a8 g16 ~ g8[ g] fs4 a8\rest d,8 e4 f8[ g] s4 s2
    }
    \\
    {
    g8[ g] g[ g] g[ g] g[ g] g1 ~ g8.[ f16] ef8[ d] c[ d] ef[ d] cs2 d8.[ d16] c8[ bf]
      a4. d8 g,4. c8 f,4 a'8[ bf] c[ bf] c[ a]
    }
  >>
  bf1^\trill ~ bf16[ bf, c32 d ef16] d[ bf ef32 f g16] f[ bf, g'32 af bf16] af32[ bf af16 g32 af f16]
  b8[ g] c[ bf] af[ f] bf[ af] g[ ef] af[ g] f[ d] g[ g,]
  c1^\trill ~ c16[ g32 f ef f g16] \once \override Beam.auto-knee-gap = #2 c,16[ c''32 bf a bf c16] fs,2
  g16[ d32 c bf c d16] g,16[ g'32 f ef f g16] c,2 d16[ a'32 bf c bf a16] bf8[ d,] a'[ d,] g[ d]
  fs8[ d] e[ d] c16[ a'32 g fs g a16] bf,8[ b] c16[ a' bf, g'] a,[ fs' g, ef'] fs,8[ d] g[ g']
    <<
      {
        b8\rest c8 bf4 d,2 a'4\rest g16\rest c,32[ g' f ef d16] ef2 ~ ef16[ ef32 d c d ef16] ~ ef4 d2
      } \\
      {
        c4 b16\rest cs32[ d e d cs16] f,4\rest d4 g1 ~ g4 g4 ~ g2_\fermata
      }
    >>
  \bar "|."
  \mark\markup{\fontsize #-2 \musicglyph #"scripts.ufermata" }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

preludeSixteen = \score {
  \new PianoStaff \with {
    edition-id = prelude.sixteen
  } <<
    \new Staff = "Up" \with { } <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \left
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.sixteen
      % \override NonMusicalPaperColumn #'line-break-permission = ##t
      % \consists #(custom-line-breaks-engraver '(3 3 3 3 2 2 3))
    }
  }
}
%\preludeSixteen
