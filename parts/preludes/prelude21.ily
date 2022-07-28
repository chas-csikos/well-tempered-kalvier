\version "2.20.0"
\language "english"

global = {
  \key bf \major
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"


right = \relative f' {
  \global

  r32 f d' f, r f c' f, r f d' f, r a f' a, r d, bf' d, r d a' d, r d bf' d, r f d' f, |
  r32 bf, g' bf, r bf f' bf, r bf g' bf, r d bf' d, \bar "" r d ef d r d g d r c f c r a ef' a, |
  %\num
  r32 d f d r bf d bf \staffTwo \voiceOne r f bf f r d f d s8 s32 a'[ bf c bf] s8 \staffOne \oneVoice d32 e f |
  r32 e g e r c e c \staffTwo \voiceOne r g c g r e g e s8 s32 b'[ c d c] s8 \staffOne \oneVoice e32 f g |
  r32 f a f r d f d \staffTwo \voiceOne r a d a r f a f \bar "" \break r f d' f, r f bf f r f c' f, r f ef' f, |
  \barNumberCheck #6
  %\num
  r32 f d' f, r f bf f r f c' f, r f ef' f, r f d' f, r g f' g, r g e' g, r a g' a, |
  \staffOne \oneVoice
  r32 a f' a, r bf a' bf, r32 bf g' bf, r c bf' c, r c a' c, r d c' d, r d bf' d, r e d' e, |
  s1 |
  \staffOne \stemNeutral
  %\num
  r32 c bf' c, r c a' c, r bf a' bf, r bf g' bf, r a g' a, r a f' a, r g f' g, r g e' g, |
  a32[ c f c a f' c a] \staffTwo \voiceOne f[ a c a f c' a f] s f[ e d c] bf[ a g] f[ a c f] a[ \staffOne \oneVoice c ef gf] |
  \oneVoice
  r4 << { f'8. f16 f4 ~ \stemDown f32 g af g f ef d ef } \\ { <d bf af>8. <d bf af>16 <d b g>4 r } >>
  f32 ef d c b c d c b a g a b a g f ef d c \staffTwo \oneVoice bf af g f ef d c b a g f ef d |
  \staffOne << {r4 ef'''8. ef16 ef4 r } \\ { r4 <c g>8. <c bf g>16 <c a f>4 r } >> |
  s1
  << { \once \stemDown bf'8 r d,8. d16 d4 df8. c16 } \\ { r4 <bf af f>8. <bf af f>16 <bf g ef>4 <bf g>8. <bf g>16 } >>
  <f a ~ c>4 a32[ c a f] \once \stemDown ef f[ a c] a[ c a f] \once \stemDown ef f[ a c] \stemDown gf'[ f ef df c bf a g]
  \once \stemUp a32 f[ a c ef] \stemUp gf[ a c] << \voiceOne { s16. s32 df,8 <c bf f>4\arpeggio <c a f> } \\ \voiceTwo { bf'16.[ c,32  df32 a bf e,] c8\arpeggio d ef4 } >> |
  << { <f bf>4  } \\ { d4 ~ \stemUp d32 f d bf s bf d f d f d bf s bf d f cf' af f d s32*3 d32} >> |
  \oneVoice ef8\mordent ~ ef32 d c d ef d c bf a bf c bf \bar "" \staffTwo \voiceOne a g f g a g f ef d ef f ef d c bf a
  %\num
  r32 d f d r f bf f r bf d bf \staffOne \oneVoice r d f d \voiceOne r f bf f r bf d bf r d[ f d bf'8]\fermata
  \bar "|."
}

left = \relative bf {
  \global
  bf8[ a] bf[ f] g[ f] g[ d] |
  ef8[ d] ef[ bf] c[ bf] a[ f] |
  \voiceTwo
  bf'8[ f] d[ bf] g32 d' e fs g s8 g32 a bf c s16. |
  c8[ g] e[ c] a32 e' f g a s8 a32 b c d s16. |
  d8[ a] f[ d] bf[ g] a[ f] |
  bf[ g] a[ f] bf[ b] c[ cs] |
  \oneVoice
  d[ d,] e[ e'] f[ f,] g[ g'] |
  a32[ \staffOne \oneVoice c d e f] g[ a bf c bf a g] f[ ef d c] \bar "" d[ \staffTwo bf a g f] ef[ d c bf c] d[ c bf] a[ g f] |
  e8[ f] d[ e] f[ a] bf[ c] |
  \barNumberCheck #10
  f,8 r r4 \stemDown c'32 \stemNeutral s32 s4 s8. |
  d,8 r << { <f' bf d>8. <f bf d>16 <d g>4 r } \\ { d8. d16 b4 r } >> |
  s1 |
  c,8 r << {  <ef' g c>8. <ef g c>16 <a c>4 \once \teeny r } \\ { c,8. c16 f4 ~ f32 c d ef f g a bf } >> |
  \oneVoice a32 g f g a bf c d c bf a bf c d ef f ef d c d ef f \staffOne g a bf c d ef f g a f |
  \staffTwo \oneVoice
  << { r4 <bf,, f d>8. <bf f d>16 <bf g>4 <bf g>8. <c g>16 } \\{ r4 bf,8. bf16 ef4 e8. e16 }>> |
  << { <a c ef>4 } \\ { f4 }>> s2. |
  r2 << { \voiceOne <f>4\arpeggio f8 g } \\ { \voiceTwo <ef c f,>4\arpeggio <ef c f,> } >>
  << { <af f d>4 }\\{ bf,4 s32*4 af'32 s32*7 af32 s32*7 cf32[ af f] s}>> |
  g8 r \once \teeny r4 s2 |
  \voiceTwo bf,8 d f[ bf] \staffOne \voiceTwo d[ f] bf8 a\rest\fermata
  \bar "|."
  \staffTwo
   \mark\markup{\fontsize #-2 \musicglyph #"scripts.ufermata"}
   \override Staff.RehearsalMark.direction = #DOWN
   \override Staff.RehearsalMark.rotation = #'(180 0 0)

}

preludeTwentyone = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { } <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \left
      %\new Voice \middle
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.twentyone
    }
    \set PianoStaff.connectArpeggios = ##t
    \set Staff.connectArpeggios = ##t

    % \context {
    %   \PianoStaff
    %   % DEFAULTS = 9, 7, 1 ,5
    %   \override StaffGrouper.staff-staff-spacing =
    %     #'((basic-distance  . 11)
    %       (minimum-distance . 7)
    %       (padding          . 2)
    %       (stretchability   . 12))
    % }
  }
}
% \preludeTwentyone
