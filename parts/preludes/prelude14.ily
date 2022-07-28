\version "2.20.0"
\language "english"

global = {
  \key fs \minor
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

right = \relative c'' {
  \global
%   \barNumberCheck #1
%   r8 cs d16 cs b d cs b a cs b a gs b |
%   a16 gs fs a cs8 a' bs, gs' gs,[ fs'] |
%   cs8 e a,16 gs fs a b8 d gs,16 fs e gs |
%   a8 cs b16 cs d fs a, b cs fs gs, a b es |
%   \barNumberCheck #5
%   fs,8 a b16 cs d b gs8 b cs16 d e cs |
%   a8 cs fs16 gs d gs e d cs e d cs b d |
%   cs16 b a gs a b cs e gs, a b e fs, gs a ds |
%   e,8 gs' ~ gs16 e cs bs cs8 a' ~ a16 fs ds cs |

  \set Staff.connectArpeggios = ##t
  \barNumberCheck #1
  r8 cs d16 cs b d cs b a  cs b a gs  b |
  a16 gs fs a cs8  a' bs,[ gs'] gs,[  fs'] |
  cs8 e a,16 gs fs a b8 d gs,16 fs e gs |
  a8 cs b16 cs d fs a, b cs fs gs, a b es |
  \barNumberCheck #5
  fs,8 a b16 cs d  b gs8 b cs16 d e cs |
  a8 cs fs16 e d  fs e d cs  e d cs b d |
  cs16 b a gs a  b cs e gs, a b e fs, gs a  ds |
  e,8 gs' ~ gs16 e cs bs cs8 a' ~ a16 fs ds cs |
  bs16 ds gs cs, a' gs fs a  gs fs e gs fs  e ds fs |
  \barNumberCheck #10
  e16 ds cs e  gs8 b, a16 gs fs cs' fs8 ds |
  bs16 as gs e'  a, gs fs ds' gs, fs e cs' fs, e ds bs' |
  cs16 bs cs fs ds8.\downprall cs16 \voiceOne cs2 ~ |
  cs2 ~ cs8 r fs,16 gs  a cs |
  e,16 fs gs cs ds,  e fs bs cs8[ cs,]  cs' r |
  \barNumberCheck #15
  d8 r as r b16 a gs fs gs a b  gs |
  a16 b cs a b cs d b cs b a gs \oneVoice fs e' d cs |
  b16 a gs fs es  d' cs b a gs fs e d a' gs  fs |
  es16 ds cs8 r16 b' a gs a b cs d \voiceOne b8.\trill cs16 |
  cs8 r es r fs r gs\arpeggio r |
  \barNumberCheck #20
  \oneVoice
  r16 cs, fs e d  cs b d cs  b a cs b a gs  b |
  a16 b cs d es, d' cs b a gs  a fs es8.\trill fs16 |
  \voiceOne fs1 ~ |
  fs8 r b,16 cs d fs a, b cs fs gs,  a b es |
  fs4 ~ fs16 fs8 es16 <cs fs>2 \fermata |
  \bar "|."
}

left = \relative fs {
  \global
  \barNumberCheck #1
  \voiceTwo
  fs1 |
  fs,8[ fs']
  \oneVoice
    a16 gs fs a gs fs e gs fs e ds fs |
  e ds cs e  fs8 a d,16 cs b  d16 e8 gs |
  cs,16 b  a16 cs d cs b  d16 cs b a cs  b16 a gs b |
  a  gs16 fs a d8 fs b,16 a16 gs b e8 gs |
  cs,16 b a cs d e16 fs a cs,  d16 e a b, cs d16 gs |
  a,8 a'16 b16 cs b a cs b16 a gs b a  gs16 fs a |
  gs fs16 e gs cs8 e a,16 gs fs a  ds8 fs |
  gs,[ e'] fs,[ ds'8] e,[ cs'] ds,[ bs'8] |
  cs, cs' es,16 fs  gs16 es fs gs  a16 fs ds e  fs16 ds |
  gs8[ cs,] fs[ bs,8] e[ cs] ds[ gs,]  |
  a8 fs gs16 fs gs8  cs,8 r fs' r |
  e r ds r cs16 e fs gs a  gs16 fs a |
  gs fs16 e gs fs e  ds16 fs e ds cs  b16 as b cs as |
  b16 cs d b cs  d16 e cs d8 r d' r |
  cs8 r b r a16 b  cs16 a d8 fs,  |
  gs16 a b gs cs8  es,8 fs16 fs, gs a b16 cs d b |
  cs8. b'16 a gs fs  es16 fs gs a fs  d'8 d, |
  cs cs' d16 cs16 b d cs b16 a cs b a  gs16 b |
  a gs fs16 a b a gs b16 a gs fs a16 gs fs es gs  |
  fs8 a,16 b cs b  a16 gs fs8[ b] cs[  cs,8] |
  fs r b r a r gs r  |
  fs16 a b cs d  cs16 b d cs b  a16 cs b a gs  b16 |
  a8[ b] cs[ cs,] fs2_\fermata |
  \bar "|."
}

vThree = \relative fs {
  %staffTwo
  \set Staff.connectArpeggios = ##t
  \voiceOne
  a8 r b r a r gs r |
  fs8 r s2. |
  s1*9 |
  \staffOne \voiceTwo
  s2 r8 gs' a16 gs fs a |
  gs fs e gs fs e ds fs e8 r s4 |
  s2. <e fs>8 r |
  <fs d>8 r <e cs> r <fs b,> r e r |
  fs r gs r a16 s8. s4 |
  s1 |
  s2. fs4 |
  es8 r <gs b> r <a cs> r <es cs'>\arpeggio r |
  s1*2
  \barNumberCheck #22
  r16 a, b cs d cs b d cs b a cs b a gs b |
  a8 r s2. |
  r16 d cs b a8 gs as2 |
  \bar "|."
}

preludeFourteen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { \consists "Span_arpeggio_engraver" } <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vThree
      \new Voice \left
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.fourteen
    }
  }
}

%\preludeFourteen
