\version "2.20.0"
\language "english"

global = {
  \key ef \minor
  \time 3/2
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c'' {
  \global
  \voiceOne
  bf2 r4. bf8 ef4. gf8 |
  cf,2 r4. ef8 af4. cf8 |
  d,2 r4. f8 af,4\prall ~ af16 gf af bf |
  gf4.\prall f16 ef \once\stemDown gf'2 gf2\arpeggio |
  %5
  gf2\arpeggio s1 |
  \voiceOne ef2\arpeggio ef\arpeggio ef\arpeggio |
  bf'\arpeggio s1 |
  s2 <ef, af cf>2\arpeggio <ef af cf>\arpeggio |
  <f af cf>\arpeggio r4 r16 bf af gf f gf f gf af gf af f |
  %10
  gf4.\prall f16 ef <bf ef gf bf>2\arpeggio <df ef gf bf>\arpeggio |
  c'\arpeggio s1 |
  \oneVoice
  df,4.\prall c16 bf <bf df f>4\arpeggio ~ f'16 gf f ef df c bf af gf8 af16 f |
  \voiceOne gf4\arpeggio ~ gf8 bf16 df \oneVoice gf4 ~ gf16 f ef df c8.[ ef32 df c16 df ef8] |
  f,8. g32 a a8.\prall g32 a \voiceOne bf1 ~ |
  bf1 a2 |
  bf4. c8 df2\arpeggio df\arpeggio |
  df4. cf16 bf ff'2 ~ ff4. ef16 df |
  g2 ~ g4. f16 ef af2 ~ |
  af8 g af bf bf2.\prall af4 |
  af4. s8 \oneVoice f4. gf16 af d,4. ef16 f |
  bf,4. af'8 d,4. ef16 f bf,4. c16 d |
  ef4. df16 cf df2 \voiceOne df\arpeggio |
  df4. cf16 bf cf2 cf\arpeggio |
  \once \set PianoStaff.connectArpeggios = ##f
  cf4.\arpeggio bf16 af \oneVoice f'4. cf8 bf4.\trill cf16 af |
  \voiceOne gf2\arpeggio ~ gf16 ef f gf af bf c d \oneVoice ef f gf af gf f gf ef |
  \once \set PianoStaff.connectArpeggios = ##f
  \voiceOne ff4.\arpeggio  cf16 bff af4. bff16 cf ff,4. gf16 af |
  \oneVoice d,4. f16 af cf4. bf16 af f'4. ef16 d |
  cf'8( a4) bf8 \voiceOne ef,2\arpeggio d4.\arpeggio ef8 |
  ef1. ~ |
  ef2 ~ ef4 ~ ef16 ef df cf df4. bf8 |
  %30
  <cf af>2 ~ cf4 ~ cf16 cf bf af bf4. g8
  % \\ af'2 >>
  af2 af af |
  af2 af af |
  af2 af af |
  cf2\arpeggio ~ cf16 bf af gf f ef d f \oneVoice  af16 cf d f af cf bf d, |
  %35
  \voiceOne
  ef4. bf8 \BachAccentFallendFromGrace \grace af8( gf2) f8(\trill ef f4) |
  \oneVoice
  ef2 ~ ef4 ~ ef16 f g af bf4 ~ bf16 ff ef df |
  cf2 ~ cf8. ef16 f g af bf cf8 ~ cf32 bf af gf f16 gf af f |
  \voiceOne
  d1 ~ d4. d8 |
  ef1.\fermata
  \bar "|."
}

alto = \relative c' {
  \global
  \voiceTwo
  <ef gf>2 <ef gf> <ef gf> |
  <ef af>2 <ef af cf> <ef af cf> |
  <ef f af>2 <d f af> <d f> |
  ef2 s <gf bf ef>\arpeggio |
  <gf bf df>2\arpeggio \oneVoice r4 r16 gf' ff ef ff4. df8 \voiceTwo |
  <ef, gf cf>2\arpeggio <gf cf>\arpeggio <gf cf>\arpeggio |
  <bf ef>\arpeggio \oneVoice r4 r16 ef df cf df4. bf8 \voiceTwo
  cf4.^\prall bf16 af r4. cf8 af4. f8
  d2 <d f bf>\arpeggio <d f bf>\arpeggio |
  <ef gf bf>\arpeggio r4. gf8 ef4. c8 |
  <c' ef gf>2\arpeggio \oneVoice r4 r16 \voiceTwo f ef df c df c df ef df ef c  |
  s1. |
  %13
  ef,4\arpeggio s s1 |
  s2 r4. f8 gf4. ef8 |
  c4 ~ c16 df c df ef df c df ef f ef f << \voiceThree { gf4 f8.\trill ef16 } \\ \voiceTwo { c2 }>> |
  df4. ef8 <f bf>2\arpeggio <f bf>\arpeggio |
  <ff bf>4. s8 <bf df>2 ~ <bf df>4. s8 |
  <bf df>2 ~ <bf df>4. s8 <cf ef>2 |
  s2 << g'1 \\  { ef2 df } >> |
  <cf ef>4. cf'8 s1 |
  s1. |
  s1 <ef,, bf'>2\arpeggio |
  <ef bf'>4. r8 r2 <ef af>\arpeggio |
  <f af>4.\arpeggio s8 s1 |
  ef2\arpeggio s1 |
  <ff af cf>4.\arpeggio s8 s1 |
  s1.
  r2 <gf bf>2\arpeggio <f bf>\arpeggio |
  <ef bf'>4. \tuplet 3/2 { af16 g af } af2 ~\prall af4. g16 af |
  bf1. |
  ef,2 ~ ef4 ~ ef16 ef df cf df4. bf8 | %af2 s1 |
  \repeat unfold 3 <cf d>2 |
  \repeat unfold 3 <cf f> |
  \repeat unfold 3 <d f> |
  <d f af>2\arpeggio s1 |
  r4. gf8 ef2 d2 |
  s1. |
  s1. |
  r4. cf16 bf cf4. af8 s2 |
  <bf g>1.
}

tenor = \relative c' {
  \global
  \oneVoice
  s1.*3 |
  s2
  r4. bf8 gf4. ef8 |
  \voiceOne
  s2 <df gf bf>\arpeggio <df gf bf>\arpeggio |
  <ef gf cf>2\arpeggio \oneVoice r4. \voiceOne gf8 ef4. cf8 |
  s2 <bf ef g>\arpeggio <bf ef g>\arpeggio |
  <cf ef af>2\arpeggio s1 |
  s1.*2 |
  s2 <c' f>\arpeggio <c f>\arpeggio |
  <df f>2\arpeggio <df f>\arpeggio <df f>\arpeggio |
  <bf df>\arpeggio <bf c>\arpeggio <bf c>\arpeggio |
  <a c>\arpeggio <f bf>\arpeggio bf |
  f2 f f  |
  <f bf>2 s s |
  s1.*7 |
  af2\arpeggio bf\arpeggio bf\arpeggio |
  bf2\arpeggio bf\arpeggio bf\arpeggio |
  <cf, ff af>2\arpeggio r r |
  <f bf>2 r r |
  r2 <ef gf bf>\arpeggio <f af bf>\arpeggio
  cf' ef ef |
  \repeat unfold 3 <bf ef> |
  cf2 s1 |
  s1.*3
  s2 r2 r2 |
  r4. ef,8 <ef gf>2 <f af>  |
  \repeat unfold 3 <g bf df>\arpeggio |
  \repeat unfold 3 <af> |
  f2 f2 f2 |
}

bass = \relative c {
  \global
  \voiceTwo
  s1.*4 |
  bf2 bf\arpeggio bf\arpeggio |
  cf2\arpeggio s1 |
  g2 g\arpeggio g\arpeggio |
  af2\arpeggio s1 |
  s1.*2 |
  a'2 a\arpeggio a\arpeggio |
  bf2\arpeggio bf\arpeggio bf\arpeggio |
  ef,2\arpeggio ef\arpeggio ef\arpeggio |
  ef2\arpeggio df\arpeggio ef |
  f2 f, f |
  bf2 \oneVoice r4. bf8 df4. f8 |
  g,2 ~ g4 ~ g16 bf af g df'2 ~ |
  df4. cf16 bf ff'8 ef ff df cf16 bf af bf cf af bf cf |
  ff,4 ~ ff16 ff' ef df ef4. df8 ef4. ef,8 |
  af2 r4. cf'8 f,4. gf16 af |
  %20
  d,4. ef16 f bf,4. af'8 d,4. ef16 f |
  gf,2 g4. bf'8 g4. ef8 |
  af,2 r4. cf'8 af4. f8 |
  \voiceTwo
  <d f>2\arpeggio <d f>\arpeggio <d f>\arpeggio |
  \repeat unfold 3 <ef gf>\arpeggio |
  af,\arpeggio r2 r2
  af r2 r2 |
  r2 bf\arpeggio bf\arpeggio |
  cf2 cf' cf |
  g2 g g |
  %30
  af2 ff ff |
  \oneVoice
  f2 ~ f4 ~ f16 gf f ef f8. gf16 af f gf af |
  d,2 ~ d4 ~ d16 ef d c d8. ef16 f d ef f |
  cf2 ~ cf4 ~ cf16 df cf bf cf bf af bf cf af bf cf |
  d,2 \voiceTwo r2 r2 |
  %35
  r4. ef8 bf'2 bf |
  ef2\arpeggio ef2\arpeggio ef2\arpeggio |
  ef2 ef ef |
  ef2 ef ef |
  <ef, bf' ef>1._\fermata |
  \bar "|."
}

preludeEight = \score {
  \new PianoStaff \with { }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff ="Up" \with { \consists "Span_arpeggio_engraver" } <<
      \new Voice = "soprano" \soprano
      \new Voice \alto
    >>
    \new Staff = "Down" \with { \consists "Span_arpeggio_engraver" \clef bass } <<
      \new Voice \tenor
      \new Voice \bass
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.eight
    }
    \set PianoStaff.connectArpeggios = ##t
    \set Staff.connectArpeggios = ##t
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/4)
    \set beatStructure = 2,2,2,2,2,2
  }
}
%\preludeEight
