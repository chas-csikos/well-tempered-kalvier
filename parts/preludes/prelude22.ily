\version "2.20.0"
\language "english"

global = {
  \key bf \minor
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

vOne = \relative bf' {
  \global
  \voiceOne
  r8 bf16 c <bf df>8 <bf df> <bf df> <a c>16 <bf df> <c ef>8 <a c ef> |
  <c ef>8 <bf df>16 <c ef> <df f>8 <bf df f> <df f> <c ef>16 <df f> <ef gf>8 <ef gf> |
  gf8 f16 ef f8 f ~ f ef16 df c8 df16 ef |
  a,8 f' ~ f g16 a bf4. a16 bf |
  c4. c16 bf a4. a16 c16 |
  \shape #'( (-1 . 1) (0 . 2.75) (0 . 2.75) (0 . 0) ) Tie
  f,1 ~ |
  f8 f16 ef df8 ef16 c16 df8 bf16 c df8 df |
  df8 c16 bf c8 c c bf16 af bf8 bf |
  bf8 af16 g af8 af af8 g16 af bf8 g |
  \barNumberCheck #10
  e8 c' ~ c bf16 af  bf8 bf ~ bf af16 g |
  af8 af ~ af gf16 f gf8 df' ~ df c16 bf |
  e8 c f2 e4 |
  f4 r8 f16 ef d4 r8 ef16  f16 |
  gf4 r8 ef16 df c4 r8 df16  ef16 |
  f4 r8 df16 c bf8 bf8 gf' gf16 f |
  ef8 ef c' c16 bf a8 a bf bf16 af |
  <f gf>8 <ef gf> <ef gf>[ <ef gf>]  gf8 f f gf16 f |
  ef8 ef16 df <bf c>8 <a c>16 <bf df>16 <a ef'>8 <a c>16 <bf df> <c ef>8 <bf df>16 <a c> |
  df2 ~ df8 gf16 f ef df16 c bf | % 21
  \barNumberCheck  #20
  a8 f16 g a8 <f a>  <f a>8 <e g>16 <f a> <g bf>8 <g  bf>8 | % 22
  <g bf>8 <f a>16 <g bf> <a c>8  <a c>8 <a c> <g bf>16 <a c>  <bf df>8 <bf df> | % 23
  <bf df>8 <a c>16 <bf df> <c ef>8 <c ef>16 <df f> <ef gf>4 \fermata bf8\rest f' | % 24
  df8 ef16 c df8 c16 bf16 \shape #'( (0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0) ) Tie bf2 ~ | % 25
  bf1 \fermata \bar "|."

}

vTwo = \relative f' {
  \global
  \voiceTwo
    r8 f8 r
  \showStaffSwitch
  \staffTwo\voiceOne
      <f df> <gf ef>4 r8 <c, ef gf> |
    f4 s8 <f df>
  \staffOne\voiceTwo
      a4 r8 a |
  \hideStaffSwitch
    ef'8 df8 r <df bf> \once\stemUp\once\shiftOn bf4 r8 <bf gf> |
    f8 bf16 c df4 ~ df8 c16 df  ef4 ~ |
  \voiceThree
    ef8 gf16 f \once \tieDown ef4 ~
    ef8 ef16 df c4 ~ |
  c8 a16 bf c8 c16 df ef8 c16 df ef4 ~ |
  \voiceFour
  ef8 df16 c bf8 a bf4 r8 <bf f>
  <bf ef,>8 <af ef> r <af f> <af f> <g f> r <g f>
  <g e>8 <f c> r <f c> <f df> <df bf> r df |
  c8 f16 e f8 f f e16 d e8 e |
  e8 f16 ef df8 df df8 bf'16 a bf4 |
  << { c4 } \\  { c8 f,16 g } >> af8 af af8 g16 af bf8 bf |
  <bf c>8 <af c>16 <g bf>  <af c>4 r8 <af cf>16 <gf bf> <f af>4 |
  r8 <ef gf>16 <f af> <gf bf>4 r8 <c, ef>16 <df f> <ef gf>4 |
  r8 <f af>16 <ef gf> <df f>8 <df f> <df gf> <df gf> bf'[ bf] |
  bf8 a16 bf c8 c <c f> <c f> <bf f'>[ <bf f'>] |
  bf8 bf bf a16 bf <c ef>8 <df f,>16 <c ef,> <bf df,>8 <bf df,> |
  <bf df,>8 <a c,>16 <bf df,> ef,8 f gf[ gf] f[ f] |
  <f bf>4 r8 <f bf>8 <gf bf>4 \voiceThree g8\rest gf8 |
  f4 \voiceTwo r8 ef8 df4 r8 e |
  e8 f r f f4 r8 f |
  gf8 gf <gf a> <gf a> <gf a c>4 s8 c |
  bf8[ bf] <bf f>[ <a ef>] <bf d,> <f d>16 <gf ef> <af f>8 <af f> |
  <af f> <gf ef> ~ <gf ef> <f d>16 <ef c> <f d>2^\fermata |
}

vThree = \relative c' {
  \global
  \voiceOne
  df4 r8 s8 s4 s8 s |
  df4 r8 s c4 r8 c |
  \staffOne \voiceFour \once \override NoteColumn.force-hshift = #0.3 bf'4 s8 s g gf s s |
  \staffTwo \voiceOne f4 r8 f gf2 ~ |
  gf8 \staffOne \voiceTwo ef'16 df c4 ~  c8 c16 bf a4 ~ |
  a8 f16 g a4 ~ a8 a16 bf16 c8 a |
  \staffTwo\voiceOne f4. gf16 ef f4 s |
  s1 |
  s2. r8 bf, |
  g8 af ~ af g16 f
  g8 g g[ c] c c ~
  c8 bf16 a bf8 gf16
  f16 gf4 g8 af16 g f4 ~
  f8 e16 f g8 g |
  f4 s2.
  s1 |
  s2. ef'8 ef16 f |
  gf8[ gf] gf8 f s2 |
  s1 |
  s1 |
  s2. \staffOne \voiceTwo bf,8\rest ef16 df |
  c8 \staffTwo \voiceOne a16 bf c8 c bf4 r8 df |
  c8 c16 df ef8 ef df df16 c bf8 bf16 af |
  gf8 gf16 f gf8 gf <gf ef>4 df8\rest f'
  f8 bf,16 \staffOne \voiceTwo gf' \staffTwo \voiceOne f,4 ~ f8 f16 ef d c ef d |
  d8 ef16 f gf8 gf f2\fermata |
}

vFour = \relative c' {
  \voiceTwo
  %\bassToTreble
  bf8 bf bf bf bf bf bf bf |
  bf8 bf bf bf bf bf bf bf |
  << { bf8 } \\ { bf8  bf16 c df8 df df c16 df ef8 ef } >>
  ef8 df16 ef f8 f f ef16 df c8 bf |
  a4. a16 bf c4. c16 df |
  ef4. ef16 df c8 c16 bf a8 g16 f |
  bf2 ~ bf8 df16 c bf8 af |
  g8 af16 g f8 ef d g16 f e8 g |
  c,8 f16 ef df8 c bf bf bf bf |

  bf8[ af] df[ df] df8 c16 bf c8 c |
  c8 f, bf[ bf] bf[ bf] bf[ bf] |
  bf af df8[ c] bf df c[ c8] |
  f,4 \oneVoice r8 f' bf4 r8 bf |
  ef,4 r8 ef af4 r8 af |
  df,4 r8 df \voiceTwo gf8 gf16 f ef8 ef |

  c' c16 bf  a8 a ef' f16 ef  d8 d |
  \oneVoice ef ef16 df c8 c16 bf a8 a bf bf16 af16 |
  gf8 gf16 f ef8 ef16 df c8 c16 bf a8 f |
  bf bf16 af gf8 gf16 f ef8 ef ef  ef8 |
  \voiceTwo
  f8 f' f f  f8 f f f |
  f  f8 f f f f f8 f |
  f ef16 df <c ef>8 <c ef>16 <bf df> <a c>4 \fermata s8 a' |
  bf8 gf16 ef f8 f, bf8 bf bf[ bf] |
  bf bf bf[ bf] bf2\fermata |
}

preludeTwentytwo = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { } <<
      \new Voice \vOne
      \new Voice \vTwo
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice = "three" \vThree
      \new Voice \vFour
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.twentytwo
    }
  }
}
%\preludeTwentytwo
