\version "2.20.0"
\language "english"

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

global = {
  \key b \major
  \time 4/4
}

vOne = \relative b' {
  \global
  \voiceOne
  r16 b as b cs as b cs r ds cs ds e cs ds e |
  r16 e ds e fs cs ds e ds2 |
  cs2 ~ cs16 as gs as b gs as b ~ |
  b16 gs fs gs as fs gs as ~ as4 gs8 fs |
  es4 \oneVoice fs ~ fs es |
  fs1 |
  r16 gs fss gs as fss gs as fss as gs as b gs as b |
  cs16 gs' fss gs as fss gs as \voiceOne ds,2 |
  cs2 ~ cs16 ds cs ds e cs ds e |
  \barNumberCheck  #10
  as,16 b as b cs  as16 b cs b8[ ds]  gs8 fs |
  es2 r8 cs fs e |
  ds2 e ~ |
  %\pageBreak
  e16 cs b cs ds b16 cs ds ~ ds4 cs8 b8 |
  as4 b4 ~ b as4 |
  r16 a b a gs b a16 gs
  << { s2 | s2 \voiceOne b16 cs b  cs16 d b cs d } \\ { \oneVoice \once\tieUp fs,2 ~ | fs16 fs gs fs es gs16 fs es ~ \voiceTwo es2 } >> |
  as4 b cs ds |
  r16 e fs e ds fs e16 ds cs4 b ~ |
  b4 <fs as> <fs b>2 \fermata |
  \bar "|."
}

vTwo = \relative d' {
  \global
  \voiceTwo
  ds4 e fs gs |
  as2 r16 as gs as b gs16 as b |
  es,4 fs4 ~ fs2 |
  es4 e ds2 ~ |
  ds8 cs \staffTwo \voiceOne b as  b16 as gs as b  gs16 as b |
  as4 b cs4 ds ~ |
  ds4 cs ~ cs b4 |
  as8 gs4 fss8 ~ fss16 \staffOne \voiceTwo as' gs  as16 b gs as b16 |
  e, b' as gs  fss4 ~ fss gs ~ |
  gs fss gs4 r r16 cs b  cs16 d b cs d16 a2 |
  r16 a gs a b16 fs gs a gs4 as8 b |
  as4 a  gs2 ~ |
  gs8[ fs] e ds e16 ds cs ds e16 cs ds e |
  ds4 e4 ~ e ds8 \staffTwo \voiceOne cs |
  s1 |
  \staffOne \voiceTwo
  fs4 gs as b |
  cs4 b r16 e, fs16 e ds fs e16 ds |
  cs2 b \bar "|."
}

vThree = \relative b {
  \global
  \oneVoice
  b1 ~ b ~
  b16 gs fs gs
  as16 fs gs as ds,4
  gs4 cs, fs b,16
  as'16 gs as b gs
  as16 b
  \voiceTwo cs, ds
  b16 cs ds b
  cs16 ds gs,4 cs fs,16
  cs'16 b cs ds
  b16 cs ds fs,
  as16 gs as b
  gs16 as b e,4 e'
  ds2 ~ ds4 cs b8 as8 gs4 ~ |
  \oneVoice gs16 gs' fss
  gs16 as fss gs
  as16 e8[ e'] ds cs
  ds8[ cs] ds ds,
  gs16 as gs as b
  gs16 as b cs,8
  cs'16 b a8 gs fs16
  gs16 fs gs a
  fs16 gs a b,8 b'16
  a16 gs8 fs e16 ds
  e16 ds cs e
  ds16 cs fs4 b, e16
  ds'16 cs ds e
  cs16 ds e fs,
  gs16 e fs gs
  e16 fs gs cs,4 fs
  b,2 ~ b16 cs ds e fs
  a16 gs fs <gs b>1
  <<
    {
      r16 e'16 fs e ds  fs16 e ds r cs ds16 cs b ds  cs16 b |
      as4 b fs2 ~ |
      fs16  ds16 cs ds e cs  ds16 e ds2
    }
    \\
    {
      fs1 ~ |
      fs16 fs e fs gs e16 fs gs gs,4 b |
      fs2 b-\tweak font-size #-2 _\fermata
    }
  >>
  \bar "|."
  \mark \markup { \normalsize \musicglyph #"scripts.ufermata" }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}


preludeTwentythree = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { } <<
      \new Voice \vOne
      \new Voice \vTwo
    >>
    \new Staff = "Down" \with { \clef bass \consists "Mark_engraver" } <<
      \new Voice \vThree
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.twentythree
    }
  }
}

%\preludeTwentythree
