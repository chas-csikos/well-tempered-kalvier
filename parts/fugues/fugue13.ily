\version "2.20.0"
\language "english"

global = {
  \key fs \major
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    r8 cs fs es fs es16 ds cs8.\prall b32 cs | % m. 1
    ds4 r8 cs b as gs cs | % m. 2
    as8 fs16 fs' es fs gs ds es fs gs8~ gs16 fs es ds | % m. 3
    cs16 ds es bs cs ds es cs as bs cs4 bs8 | % m. 4
    cs2~ cs8 cs16 ds es4 | % m. 5
    fs4 r8 as,8 gs as b as16 gs | % m. 6
    as16 cs cs as gs cs cs gs as8 cs fs4~ | % m. 7
    fs8 es4 ds16 cs bs8 ds gs4~ | % m. 8
    gs8 fs 16 es  fs4~ fs8 es16 ds es4~ | % m. 9
  \barNumberCheck #10
    es8 es ds cs bs gs cs4~ | % m. 10
    cs4~ cs16 cs8 bs16 cs8 cs fs es | % m. 11
    fs8 es16 ds cs4 ds r8 cs | % m. 12
    b8 as gs cs as as ds css | % m. 13
    ds4 r8 es fs gs as fs | % m. 14
    ds4 r8 gs es4 r8 es | % m. 15
    ds16 bs cs es ds bs cs8~ cs16 bs cs4 bs8 | % m. 16
    cs4 r8 bs cs16 es es cs bs es es bs | % m. 17
    cs8 es as4~ as8 gs16 fs gs4~ | % m. 18
    gs8 fs16 es fs4~ fs8 fs es ds | % m. 19
  \barNumberCheck #20
    css8 r r4 r8 ds,16 es fs ds ds fs | % m. 20
    \once \override NoteColumn.force-hshift = #0.6
    gs16 ds ds gs as ds, ds as' b ds, ds b' css ds, ds css' \noBreak | % m. 21
    ds4 r16 es fs gs css, b' as8 fs \prall es16 ds | % m. 22
    ds8 fs b as b2~ | % m. 23
    b8 es, as gs as2~ | % m. 24
    as8 as gs fs es4 e ~ | % m. 25
    e16 cs cs e ds b b ds ds b b ds cs as as cs | % m. 26
    cs16 as as cs b gs gs b b gs gs b as b cs gs | % m. 27
    as8 cs ds e~ e16 ds cs e ds b b ds | % m. 28
    e16 b b e fs b, b fs' gs b, b gs' as b, b as' | % m. 29
  \barNumberCheck #30
    b8 r r4 r8 ds, gs fss | % m. 30
    gs8 as b gs es cs fs es | % m. 31
    fs8 es16 ds cs8. \prall b32 cs ds4 r8 cs | % m. 32
    b8 as gs cs as16 cs cs as gs cs cs gs | % m. 33
    as8 cs fs2 es4 | % m. 34
    fs1 \fermata | % m. 35
  \bar "|."
}

mezzo = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    R1 | % m. 1
    R1 | % m. 2
    r8 fs cs' bs cs bs16 as gs8. \prall fs32 gs | % m. 3
    as4 r8 gs fs es ds gs | % m. 4
    es8 cs16 b' as b cs gs as b cs8~ cs16 b as gs | % m. 5
    fs16 gs as es fs gs as fs ds es fs4 es8 | % m. 6
    fs4 r8 es fs4 r8 as | % m. 7
    ds16 gs, gs cs as fs fs as gs4 r8 bs8 | % m. 8
    as4 r8 as8 gs4 r8 gs | % m. 9
  \barNumberCheck #10
    fs4~ fs16 gs as fs ds4 r8 gs | % m. 10
    fs8 es ds ds es16 gs cs b as b cs gs | % m. 11
    as16 b cs8~ cs16 b as gs fs gs as es fs gs as es | % m. 12
    fs4 gs~ gs8 fs r4 | % m. 13
    r8 as ds css ds es fs ds | % m. 14
    bs8 gs cs bs cs bs16 as gs8. -\parenthesize \prall fs32 gs | % m. 15
    as4 r8 gs fs es ds gs | % m. 16
    es16 gs gs es ds gs gs ds es4 r8 gss | % m. 17
    as4 r8 cs b4 r8 b | % m. 18
    as4 r8 as gs2~ | % m. 19
  \barNumberCheck #20
    gs16 b as gs fs gs as es fs gs as8 r ds | % m. 20
    \once \override Dots.extra-offset = #'(-0.3 . 0)
    ds2. gs,4 ~ | % m. 21
    gs16 fs gs as b4 as8 r16 ds~ ds8 css | % m. 22
    ds8 r r4 r8 ds gs fs | % m. 23
    gs2~ gs8 cs, fs es | % m. 24
    fs8 cs ds4~ ds16 gs, gs cs cs gs gs b | % m. 25
    as2 gs | % m. 26
    fs2 es4 r | % m. 27
    r8 fs b as b as16 gs fs8. -\parenthesize \prall e32 fs | % m. 28
    gs4 r8 fs e ds cs fs | % m. 29
  \barNumberCheck #30
    ds8 ds gs fss gs4 r8 as | % m. 30
    b8 cs ds b gs4 r8 cs | % m. 31
    as4 r8 as8 gs16 es fs as gs es fs8~ | % m. 32
    fs16 es fs4 es8 fs4 r8 es | % m. 33
    fs4 r8 as gs16 ds' ds b gs cs cs b | % m. 34
    as1 | % m. 35 %\fermata
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
  \oneVoice
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
    r8 cs fs es fs es16 ds cs8. \prall b32 cs | % m. 5
    ds4 r8 cs b as gs cs | % m. 6
    fs,8 fs' es cs fs16 as as fs ds fs fs ds | % m. 7
    bs8 cs fs4~ fs16 gs bs gs es gs gs es | % m. 8
    css16 as' as fs ds fs fs ds bs gs' gs es cs es es cs | % m. 9
  \barNumberCheck #10
    as16 cs cs as fs8 fs'~ fs16 fs es ds cs ds es cs | % m. 10
    as16 bs cs as fs8 gs cs,4 r | % m. 11
    r8 fs'16 gs as fs fs as b fs fs b cs fs, fs cs' | % m. 12
    ds16 fs, fs ds' es fs, fs es' fs es ds cs b gs' gs b, | % m. 13
    as16 fs' fs as, gs es' es gs, fs gs fs es ds es fs ds | % m. 14
    gs16 as gs fs es fs gs es as bs cs8~ cs16 bs as gs | % m. 15
    fs16 gs as es fs gs as fs ds8 es16 fs gs8 gs, | % m. 16
    cs8 cs' bs gs cs as gss es | % m. 17
    as16 cs cs as fs as as fs ds b' b gs es gs gs es | % m. 18
    css16 as' as fs ds fs fs ds b ds ds b gs b b gs | % m. 19
  \barNumberCheck #20
    as8 as ds css ds cs16 b as8. -\parenthesize \prall gs32 as | % m. 20
    b4 r8 as gs fs es as | % m. 21
    ds, fs gs4~ gs16 es' fs gs as8 as, | % m. 22
    ds16 as' as fs ds fs fs ds gs, ds'' ds b gs b b gs | % m. 23
    es16 gs gs es cs es es cs fs, cs'' cs as fs as as fs | % m. 24
    ds16 fs fs ds b ds ds b cs8 cs, r cs''16 b | % m. 25
    cs8 fs, b as b es, as gs | % m. 26
    as8 ds, gs fs gs cs, fs es | % m. 27
    fs16 as as fs ds fs fs ds b8 r r b' | % m. 28
    b1~ | % m. 29
  \barNumberCheck #30
    b16 as gs fs e cs' cs e, ds b' b ds, cs as' as cs, | % m. 30
    b16 cs b as gs as b gs cs ds cs b as b cs as | % m. 31
    ds16 es fs8~ fs16 es ds cs b cs ds as b cs ds b | % m. 32
    gs8 as16 b cs8 cs, fs fs' es cs | % m. 33
    fs16 as as fs ds fs fs ds b8 gs cs cs, | % m. 34
    fs1_\fermata | % m. 35
  \bar "|."
}


fugueThirteen = \score {
  \new PianoStaff \with {} <<
    \new Staff = "Up" \with {  } <<
      \new Voice \soprano
      \new Voice \mezzo
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \bass
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f fugue.thirteen
    }
  }
}
%\fugueThirteen
