\version "2.20.0"
\language "english"

global = {
  \key e \major
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

%soprano
vOne = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    R1 | % m. 1
    r4 r8 b cs4 r16 fs, gs as | % m. 2
    b16 as b cs ds e fs ds b a b cs b a b cs | % m. 3
    a16 gs a b a gs a b gs fs gs as b4~ | % m. 4
  \barNumberCheck #5
    b4 as b8 b' ds, fs | % m. 5
    \shape #'( (0 . 0.5) (1 . 2) (-1 . 2) (0 . 0.5) ) Tie
    b,2 ~ b8 a gs e' | % m. 6
    fs4 r16 b, cs ds e ds e fs gs a b gs | % m. 7
    e16 ds e fs e ds e fs ds cs ds e fs gs a8~ | % m. 8
    a ds, gs4~ gs8 fs16 e ds4 | % m. 9
  \barNumberCheck #10
    e16 ds e fs e ds e fs ds cs ds e fs4~ | % m. 10
    fs8 e16 ds e4~ e8 e ds cs | % m. 11
    bs8 gs cs4~ cs8 ds gs, as16 bs | % m. 12
  \oneVoice
    cs16 bs cs ds e fs gs e cs b cs ds cs b cs ds | % m. 13
    b16 as b cs ds e fs ds b a b cs b a b cs | % m. 14
  \barNumberCheck #15
    a16 gs a b cs ds e cs ds cs ds e fs gs a fs | % m. 15
    gs16 fs e ds cs b a gs fs gs a fs ds8 gs | % m. 16
  %\voiceOne
    e8[ gs] cs[ b] e16 ds cs b a4~ | % m. 17
    a8[ ds,] a'[ gs] cs16 b a gs fs4~ | % m. 18
    fs8 e16 ds e fs gs e cs gs' fs e ds8 r | % m. 19
  \barNumberCheck #20
    r16 b cs ds e fs gs e cs'4 r16 fs, gs as | % m. 20
  \voiceOne
    b16 as b cs ds e fs gs a, gs a b a gs a b | % m. 21
    gs16 fs gs a b cs d8~ d cs16 b cs4~ | % m. 22
    cs4 b r b~ | % m. 23
    b4 a r a~ | % m. 24
  \barNumberCheck #25
    a4
  \oneVoice
      gs8 e' fs4 r16 b, cs ds | % m. 25
    e16 ds e fs gs a b gs a gs a b a gs a b | % m. 26
    gs16 fs gs a gs fs e ds
  \voiceOne
      cs b cs d cs b cs d | % m. 27
    b16 cs ds b e2 ds4 | % m. 28
    e1 \fermata | % m. 29
  \bar "|."
}

%mezzo
vTwo = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    r4 r8 e fs4 r16 b, cs ds | % m. 1
    e16 ds e fs gs a b gs e ds e fs e ds e fs | % m. 2
    ds16 cs ds e fs gs a fs gs8 b, e4~ | % m. 3
    e8 ds fs4~ fs8[ b,] e[ ds] | % m. 4
  \barNumberCheck #5
    cs2 b8 r r4 | % m. 5
    r8 e' gs, b e, fs4 e8 | % m. 6
    e4 ds8 fs b,4 r8 b' | % m. 7
    cs4 r16 fs, gs as b as b cs ds e fs ds | % m. 8
    b16 a b cs b a b cs a gs a b a gs a b | % m. 9
  \barNumberCheck #10
    gs8 e a2~ a16 bs cs ds | % m. 10
    gs,4. cs8 fs,2~ | % m. 11
    fs4 e8 a ds,[ fs] bs,[ ds] | % m. 12
  \staffTwo \voiceOne
    gs, r r4 r as~ | % m. 13
    as4 gs r gs~ | % m. 14
  \barNumberCheck #15
    gs4 fs r fs~ | % m. 15
    fs4 e8 cs' ds4 r16 gs, as bs | % m. 16
  %\staffOne \voiceTwo
    cs16 bs cs ds e fs gs e cs b cs ds cs b cs ds | % m. 17
    b16 gs a b cs ds e cs a gs a b a gs a b | % m. 18
    gs16 fs gs a gs8 b~ b a16 gs a cs b a | % m. 19
  \barNumberCheck #20
    gs8 r r4 r2 | % m. 20
  \staffOne \voiceTwo
    r4 r8 e' fs4 r16 b, cs ds | % m. 21
    e16 ds e fs gs a b gs e ds e fs e ds e fs | % m. 22
    ds16 cs ds e fs gs a fs d cs d e d cs d e | % m. 23
    cs16 b cs d e fs gs e cs b cs d cs b cs d | % m. 24
  \barNumberCheck #25
    b16
  \staffTwo \voiceOne
      a b cs b a b cs a gs a b a gs a b | % m. 25
    gs8 b e, gs ~ gs fs~ fs4 | % m. 26
    fs4 e ~ e8 %27
  \staffOne \voiceTwo
      e' a4~ | % m. 27
    a4 gs16 e fs gs a b cs8~ cs16 cs b a | % m. 28
    gs1 | %\fermata | % m. 29
    \bar "|."

}

%bass
vThree = \relative c {
  \global
  \barNumberCheck #1
  \oneVoice
    R1 | % m. 1
    R1 | % m. 2
    r2 r4 r8 e | % m. 3
    fs4 r16 b, cs ds e ds e fs gs a b gs | % m. 4
  \barNumberCheck #5
    e16 ds e fs e ds e fs ds cs ds e fs gs a fs | % m. 5
    gs16 fs gs a b cs d b cs b cs ds e ds cs b | % m. 6
    a16 gs a b a gs a b gs8 fs e ds | % m. 7
    cs8[ b'] as[ fs] b r r4 | % m. 8
    r2 r4 r8 b | % m. 9
  \barNumberCheck #10
    cs4 r16 fs, gs a b a b cs ds e ds cs | % m. 10
    bs16 gs as bs cs ds e cs a gs a b a gs a b | % m. 11
    gs16 e fs gs a b cs a fs e fs gs fs e fs gs | % m. 12
  \voiceTwo
    e8[ ds] cs[ e] as,[ gs'] fss[ ds] | % m. 13
    gs,8[ as] b[ as] gs[ fs'] es[ cs] | % m. 14
  \barNumberCheck #15
    fs,8[ gs] a[ gs] fs[ e'] ds[ cs] | % m. 15
    bs8[ gs] a[ e'] fs16 e fs8 gs gs, | % m. 16
  %\oneVoice
    cs8 r r4 r2 | % m. 17
    R1 | % m. 18
    r4 r8 e fs4 r16 b, cs ds | % m. 19
  \barNumberCheck #20
    e16 ds e fs gs a b gs e ds e fs e ds e fs | % m. 20
  \oneVoice
    ds8[ fs] b,[ e] ~ e8 ds16 cs ds8 b' | % m. 21
    cs4 r8 gs a[ gs] a[ e] | % m. 22
    fs8 a gs fs e[ fs] gs[ e] | % m. 23
    a8[ b] cs[ b] a[ e] fs[ cs] | % m. 24
  \barNumberCheck #25
  \voiceTwo
    ds8 b e4 ~ e ds4 ~ | % m. 25
    ds4 cs %26
      fs,8. cs'16 ds8 b | %26 %ossia
    %{ossia
      % <<
      %   { fs,8. cs'16 ds8 b }
      %   \new Staff \with {
      %   \clef bass
      %   \remove "Time_signature_engraver"
      %   \remove "Accidental_engraver"
      %   alignBelowContext = #"bass"
      %   fontSize = #-3
      %     \override StaffSymbol.staff-space = #(magstep -3)
      %     \override StaffSymbol.thickness = #(magstep -3)
      %     firstClef = ##f
      %   } { \voiceTwo fs8. e'16 ds8 b }
      % >> | % m. 26
    ossia%}
    e8[ b] cs[ gs] a8.[ e16] fs8[ cs] | % m. 27
  \oneVoice
  \override Beam.auto-knee-gap = #4
    ds8 b'' cs4 r16 fs, gs a b8 b, | % m. 28
    e,1_\fermata | % m. 29
  \bar "|."

}

fugueNine = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with {} <<
      \new Voice \vOne %soprano
      \new Voice \vTwo %mezzo
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vThree %bass
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f fugue.nine
    }
  }
}
%\fugueNine
