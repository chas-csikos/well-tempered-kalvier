\version "2.20.0"
\language "english"

global = {
  \key d \major
  \time 4/4
%   \omit TupletNumber
%   \omit TupletBracket
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c'' {
  \global
  \oneVoice
  \barNumberCheck #1
  \revert MultiMeasureRest.staff-position
    R1 | % m. 1
  \teeny
    R1*2 | % m. 2-4
  \override MultiMeasureRest.staff-position = #8
  \voiceOne
    R1
  \normalsize
  \barNumberCheck #5
    r4 a32 b cs d cs b cs a fs'8. fs16 e8. d16 | % m. 5
    cs8. \tuplet 3/2 { e32 fs g } a8. a16 a8. \tuplet 3/2 { d,32 e fs } g8. g16 | % m. 6
    g4 <fs d>8. <e cs>16 d8. e16 cs8. cs16 | % m. 7
    cs4 b32 cs d e d cs d b g'8. g16 fs8. e16 | % m. 8
    d4 b'16 a b gs gs fs gs e e d e cs %{ \noBreak %} | % m. 9
  \barNumberCheck #10
    % \BachAccentFallendFromGrace
    \grace d16 cs4 a'16 g a fs fs e fs d d c d b | % m. 10
    b4 g32 a b c b a b g e'8. e16 d8. c16 | % m. 11
    b8. cs16 d2 cs4 | % m. 12
    d4 d32 e fs g fs e fs d b'8. b16 a8. g16 | % m. 13
    fs8. \tuplet 3/2 { d32 e fs } g8. g16 g8. a16 fs8. fs16 | % m. 14
  \barNumberCheck #15
    fs8. e32 ds e4~ e8. ds16 e8. fs16 | % m. 15
    b,8. c32 a b8. c16 g4 fs | % m. 16
    e32 fs g a g fs g e g'8 r r2 %{ \noBreak %} | % m. 17
    a,32 b cs d cs b cs a fs'8 r r2 | % m. 18
    g,32 a b c b a b g e'8 r r2 %{ \noBreak %} | % m. 19
  \barNumberCheck #20
    fs,32 g a b a g a fs d'8. d16 d8. e16 cs8.\prall d32 e | % m. 20
    fs4 b16 a b g g fs g e e d e cs | % m. 21
    cs4 d8. d16 d8. e16 cs8. \downprall d16 | % m. 22
    d4 b32 cs d e d cs d b e4 a,32 b cs d cs b cs a | % m. 23
    d4 g,32 a b c b a b g cs32 d e fs e d e cs fs g a b a g a fs | % m. 24
  \barNumberCheck #25
    b8. cs,16 d8. e16 fs8. fs,16 g8. a16 | % m. 25
    <b g>8. <b d,>16 <cs e,>8. <d fs,>16 <fs, d>4 <e cs> | % m. 26
    d1 \fermata \bar "|." | % m. 27
}

alto = \relative c' {
  \global
  \voiceTwo
  \barNumberCheck #1
    s1*3 | % m. 1-3
    r4
  \voiceThree
      d32 e fs g fs e fs d b'8. b16 a8. g16 | % m. 4
  \barNumberCheck #5
  \voiceTwo
    fs8. gs16 a4~ a gs | % m. 5
  \voiceThree
    a4 cs d d | % m. 6
    cs8. \tuplet 3/2 { e32 d cs} s8. s16 b4 e, | % m. 7
    a4 \voiceTwo b~ b as | % m. 8
    b4 \voiceThree b\rest s8. s16 s8. s16 | % m. 9
  \barNumberCheck #10
    s4 b\rest s8. s16 s8. s16 | % m. 10
    s4 b,\rest g'2\rest | % m. 11
    d4\rest \voiceTwo d32 e fs g fs e fs d b'8. b16 a8. g16 | % m. 12
    fs8. a16 d4~ d c~ %{ \noBreak %} | % m. 13
    c4 b a2 | % m. 14
  \barNumberCheck #15
    g4
  \voiceFour
    b a2~ | % m. 15
    a4 g8. e16 e4 ds | % m. 16
    e4 r \staffTwo \voiceThree s8. s16 s8. s16 | % m. 17
    s4 e\rest s8. s16 s8. s16 | % m. 18
    s4 s s8. s16 s8. s16 | % m. 19
  \barNumberCheck #20
    s4 \staffOne \voiceTwo b32 cs d e d cs d b g'2 | % m. 20
    fs4 r <d' b>8. <b g>16 <b g>8. <a e>16 | % m. 21
    <a e>4 <a fs>8. <a fs>16 <b fs>8. <b g>16 <a e>4 | % m. 22
    <a fs>4 r <b e,> r | % m. 23
    <a d,>4 r r2 | % m. 24
  \barNumberCheck #25
    g8.\rest <a e>16 <a fs>8. <cs g>16 <d a>8. <d, a>16 <d b>8. <fs c>16 | % m. 25
    \voiceThree s8. s16 s8. s16 s4 s | % m. 26
    s1 \fermata  \bar "|." | % m. 27
}

tenor = \relative c' {
  \global
  \voiceOne
  \barNumberCheck #1
  \once \override MultiMeasureRest.staff-position = #6
    \once \tiny R1 | % m. 1
  \revert MultiMeasureRest.staff-position
    r4 a32 b cs d cs b cs a fs'8. fs16 e8. d16 | % m. 2
    cs4 fs8. fs16 b,8. \tuplet 3/2 { b32 cs d } e16 d e cs | % m. 3
    a4 \once\showStaffSwitch\staffOne\voiceTwo d ~ d \once\showStaffSwitch\staffTwo\voiceOne cs | % m. 4
  \barNumberCheck #5
    d4 cs b2 | % m. 5
    a4 \voiceTwo \staffOne fs'32 g a b a g a fs b4 e,32 fs g a g fs g e | % m. 6
    a4 a8. g16 fs8. g16 a4 | % m. 7
    d,4 \once\showStaffSwitch \staffTwo \voiceOne d cs2 | % m. 8
    b4 \staffOne \voiceTwo s <b' d>8. <gs b>16 <gs b>8. <e a>16 | % m. 9
  \barNumberCheck #10
    <e a>4 s <a c>8. <fs a>16 <fs a>8. <d g>16 | % m. 10
    <d g>4 s s2 | % m. 11
  \staffTwo \voiceOne
  \override MultiMeasureRest.staff-position = #6
    \once\teeny R1 | % m. 12
    \once\teeny R1 | % m. 13
  \revert MultiMeasureRest.staff-position
    r4 g,32 a b c b a b g e'8. e16 d8. c16 | % m. 14
  \barNumberCheck #15
    b4 \once\showStaffSwitch\staffOne\voiceTwo g' fs2~ | % m. 15
    fs4 e8. \staffTwo\voiceOne fs,16 g8. a16 b8. a16 | % m. 16
    g4 r <b e>8. <g cs>16 <g cs>8. <e a>16 | % m. 17
    <e a>4 s <a d>8. <fs b>16 <fs b>8. <d g>16 | % m. 18
    <d g>4 r <g cs>8. <e a>16 <e a>8. <cs fs>16 | % m. 19
  \barNumberCheck #20
    <cs fs>4 r r a'32 b cs d cs b cs a | % m. 20
    d4 r s8. s16 s8. s16 | % m. 21
    \staffOne s4 s8. s16 s8. s16 s4 | % m. 22
    s4 s s4 s | % m. 23
    s4 s s2 | % m. 24
  \barNumberCheck #25
    s8. s16 s8. s16 s8. s16 s8. s16 | % m. 25 %chorded
    \voiceTwo d8. g16 g8. a16 \staffTwo \voiceOne a,4 g | % m. 26
    <fs a>1 \bar "|." | % m. 27
}

bass = \relative c {
  \global
  \voiceTwo
  \barNumberCheck #1
    d4\rest d32 e fs g fs e fs d b'8. b16 a8. g16 | % m. 1
    fs8. g16 fs8. e16 d4 e | % m. 2
    a,8. \tuplet 3/2 { e'32 fs g } a2 g4~ | % m. 3
    g8. fs32 e fs8. d16 g8. e16 a8. a,16 | % m. 4
  \barNumberCheck #5
    d8. e16 fs8. e16 d8. b16 e4 | % m. 5
    a,4 r \oneVoice r2 | % m. 6
    r4 d,32 e fs g fs e fs d b'8. b16 a8. g16 | % m. 7
  \voiceTwo
    fs8. \tuplet 3/2 { d'32 e fs } g8. fs16 e8. cs16 fs4 | % m. 8
    b,32 cs d e d cs d b
  \oneVoice
      gs'8 r r2 | % m. 9
  \barNumberCheck #10
    a,32 b cs d cs b cs a fs'8 r r2 | % m. 10
    g,32 a b c b a b g e'8. d16 c4 d | % m. 11
  \voiceTwo
    g8. a16 b8. a16 g8. e16 a8. a,16 | % m. 12
    b32 cs d e d cs d b b'8. a16 g8. e16 a8. a,16 | % m. 13
    d4 e c'8. a16 d8. d,16 | % m. 14
  \barNumberCheck #15
    g4 e,32 fs g a g fs g e c'8. c16 b8. a16 | % m. 15
    g8. fs16 g8. a16 b2 | % m. 16
    e4 b'16 a b g g fs g e e d e cs | % m. 17
    cs4 a'16 g a fs fs e fs d d cs d b | % m. 18
    b4 g'16 fs g e e d e cs cs b cs a | % m. 19
  \barNumberCheck #20
    a4 r e'32 fs g a g fs g e a4 | % m. 20
    d,32 e fs g fs e fs d g8 
  \oneVoice 
      r r2 | % m. 21
    <g g,>4 fs32 g a g fs e d cs b cs d cs b a b g a8. a16 | % m. 22
    d,8. \tuplet 3/2 { d'32 e fs } g4 cs,32 d e fs e d e cs fs4 | % m. 23
    b,32 cs d e d cs d b e fs g a g fs g e a b cs d cs b cs a \clef treble d e fs g fs e fs d | % m. 24
  \barNumberCheck #25
    g8. \clef bass g,16 fs8. e16 d8. c16 b8. a16 | % m. 25
    g8. fs 16 e8. d16 \voiceTwo a'2 | % m. 26
    d,1 \fermata \bar "|." | % m. 27
}

fugueFive = \score {
  \new PianoStaff \with { edition-id = fugue.five }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff ="Up" \with { } <<
      \new Voice \soprano
      \new Voice \alto
    >>
    \new Staff = "Down" \with { \clef bass }
      <<
        \new Voice \tenor
        \new Voice \bass
      >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f fugue.five
    }
  }
}
%\fugueFive
