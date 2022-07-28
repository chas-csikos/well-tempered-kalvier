\version "2.20.0"
\language "english"

global = {
  \key gs \minor
  \time 4/4
}

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \oneVoice
    R1 | % m. 1
    R1 | % m. 2
  \voiceOne
  \teeny
    R1 | % m. 3
    R1 | % m. 4
  \normalsize
    r4 gs fss8 gs16 as b8 as | % m. 5
    gs8 css ds fs, gs gs as as | % m. 6
    ds,8 es fs4~ fs8 e16 fs gs8 fss16 gs | % m. 7
    as8 gs16 as b8 gs as r fss r | % m. 8
    gs8 as b4 cs8 r as r | % m. 9
  \barNumberCheck #10
    b8 ds16 css ds4 es8 r css r | % m. 10
    ds8 es fs4~ fs8 e16 fs gs8 fss16 gs | % m. 11
    as8 gs16 as b8 gs as r fss r | % m. 12
    gs8 \once \override Accidental #'restore-first = ##t fs16 e ds8 e fs r fs r | % m. 13
    e8 ds16 cs bs8 cs ds r bs r | % m. 14
    cs4 r r8 cs4 ds8 | % m. 15
    e4 ds cs2~ | % m. 16
    cs8 fss gs b, as fss' gs cs, | % m. 17
    b8 gs' fs as, gs fs' es gs, | % m. 18
    fs4 r r2 | % m. 19
  \barNumberCheck #20
  \teeny
  \override MultiMeasureRest.staff-position = #6
    R1 | % m. 20
    R1 | % m. 21
    R1 | % m. 22
    R1 | % m. 23
  \revert MultiMeasureRest.staff-position
  \normalsize
    r4 ds' css8 ds16 es fs8 es | % m. 24
    ds8 gss as cs, ds ds es es | % m. 25
    as,8 es' fs4~ fs8 as b4~ | % m. 26
    b8 e, ds4 cs2~ | % m. 27
    cs4 b~ b8 as16 gs as fs bs8 | % m. 28
    cs2~ cs8 b16 as b gs css8 | % m. 29
  \barNumberCheck #30
    ds8 cs16 b as8 b cs r as r | % m. 30
    b8 as16 gs fss8 gs as r fss r | % m. 31
    gs4 r r8 gs4 as8 | % m. 32
    b4 as gs2~ | % m. 33
    gs4 fs e2~ | % m. 34
    e8 ds b'2 a4~ | % m. 35
    a4 r8 gs as as bs bs | % m. 36
    cs4 r8 cs bs cs16 ds e8 ds | % m. 37
    cs8 fss gs b, cs cs ds ds | % m. 38
    gs,8 bs cs2 b4~ | % m. 39
  \barNumberCheck #40
    b4 as8 gs fss gs4 fss8 | % m. 40
    gs1 \fermata | % m. 41
  \bar "|."
}

alto = \relative c' {
  \global
  \barNumberCheck #1
    s1 | % m. 1
    s1 | % m. 2
  \voiceTwo
    r4 ds bs8 cs16 ds e8 ds | % m. 3
    cs8 fss gs b, cs cs ds ds | % m. 4
    gs,4 cs~ cs8 b16 cs ds8 css16 ds | % m. 5
    es8 ds16 es fs8 ds es r css r | % m. 6
    ds4 r8 as gs4 r8 ds' | % m. 7
    e8 ds r ds e r ds r | % m. 8
    ds4 r8 fs gs r fs r | % m. 9
  \barNumberCheck #10
    fs4 r8 as b r as r | % m. 10
    fs8 gs as b16 as gs8 cs4 ds8 | % m. 11
    e4 ds cs2~ | % m. 12
    cs4 b a2~ | % m. 13
    a4 gs fs2~ | % m. 14
    fs8 e16 fs gs8 fs16 e ds8 e16 fs gs8 fss16 gs | % m. 15
    as8 gs16 as b8 gs as r fss r | % m. 16
    gs8 r r4 r r8 fss | % m. 17
    gs4 r8 fs es4 r8 es~ | % m. 18
    es8 ds16 css ds4 bs8 cs16 ds e8 ds | % m. 19
  \barNumberCheck #20
  \oneVoice
    cs8 fss gs b, cs cs ds ds | % m. 20
    gs,8 fss' gs4~ gs8 fs16 es fs ds gss8 | % m. 21
    as2~ as8 gss16 fss gss es as8 | % m. 22
  \voiceTwo
    bs2~ bs8 as16 gss as bs cs8~ | % m. 23
    cs8 bs16 as gss as fss gss as2~ | % m. 24
    as8 bs cs as b4~ b16 as, b cs | % m. 25
    ds4 cs8 as' b4 r16 ds e fs | % m. 26
    gs8 r r fs, gs as16 b e,4~ | % m. 27
    e8 ds16 cs ds b es8 fs2~ | % m. 28
    fs8 e16 ds e cs fss8 gs2~ | % m. 29
  \barNumberCheck #30
    gs4 fs e2~ | % m. 30
    e4 ds cs2~ | % m. 31
    cs8 b16 cs ds8 cs16 b as8 bs16 cs ds8 css16 ds | % m. 32
    es8 ds16 es fs8 ds es r css r | % m. 33
    ds8 cs16 b as8 b cs r as r | % m. 34
    b4 r8 b cs cs ds ds | % m. 35
    e16 b cs ds e8 gs fs2~ | % m. 36
    fs16 ds e fs gs8 fs16 e ds8 gs4 fss16 gs | % m. 37
    as8 gs16 as b8 gs a r a r | % m. 38
    ds,8 r r gs as r gs fs | % m. 39
  \barNumberCheck #40
    e8 ds cs4~ cs8 b as4 | % m. 40
    b1 | % m. 41 \fermata
  \bar "|."
}

tenor = \relative c' {
  \global
  \barNumberCheck #1
  \voiceOne
    r4 gs fss8 gs16 as b8 as | % m. 1
    gs8 css ds fs, gs gs as as | % m. 2
    ds,8 es fs4~ fs8 e16 fs gs8 fss16 gs | % m. 3
    as8 gs16 as b8 gs as r fss r | % m. 4
    gs8 fs e4 ds8 gs4 as8 | % m. 5
    b4 as gs2~ | % m. 6
    gs8 fs16 gs as8 fs ds e r b' | % m. 7
    cs4 r8 ds cs r as r | % m. 8
    b4 r8 b e r cs r | % m. 9
  \barNumberCheck #10
    ds4 r8 ds gs r es r | % m. 10
    ds8 r ds4 bs8 cs16 ds e8 ds | % m. 11
    cs8 fss gs b, cs cs ds ds | % m. 12
    gs,4 r8 gs a a b b | % m. 13
    e,4 r8 e fs fs gs gs | % m. 14
    cs,8 ds e fs gs4. b8 | % m. 15
    cs4 b8 ds e r ds r | % m. 16
    ds8 r gs,4 fss8 gs16 as b8 as | % m. 17
    gs8 css ds fs, gs gs as as | % m. 18
    ds,8 es fs4~ fs8 e16 fs gs8 fss16 gs | % m. 19
  \barNumberCheck #20
    as8 gs16 as b8 gs as r fss r | % m. 20
    gs4 r8 b as gs as bs | % m. 21
    es,8 ds' es fss bs, as bs cs | % m. 22
    ds2~ ds8 cs16 bs cs8 as~ | % m. 23
    as16 as ds cs bs as bs8 as bs16 css ds8 es | % m. 24
    fs4~ fs16 gs fs es ds cs b as gs4 | % m. 25
    fs8 gs as cs ds2 | % m. 26
    cs4. b8 b r as r | % m. 27
    b4 r r2 | % m. 28
  \teeny
    R1 | % m. 29
  \barNumberCheck #30
    R1 | % m. 30
    R1 | % m. 31
  \normalsize
    r4 gs fss8 gs16 as bs8 as | % m. 32
    gs8 css ds fs, gs gs as as | % m. 33
    ds,4 r8 ds e e fs fs | % m. 34
    b,16 ds e fs gs2 fs4 | % m. 35
    e4 r8 b' cs cs ds ds | % m. 36
    gs,2~ gs8 as16 bs cs8 ds | % m. 37
    e4 ds e8 r fs r | % m. 38
    bs,8 r r e ds r ds4 | % m. 39
  \barNumberCheck #40
    cs4 r8 cs, ds2 | % m. 40
    ds1 | % m. 41 \fermata
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
  \voiceTwo
  \teeny
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
    R1 | % m. 5
    R1 | % m. 6
  \normalsize
    r4 ds bs8 cs16 ds e8 ds | % m. 7
    cs8 fss gs b, cs cs ds ds | % m. 8
    gs,4 r8 ds' e e fs fs | % m. 9
    b,4 r8 fs' gs gs as as | % m. 10
    ds,8 r r4 r2 | % m. 11
    R1 | % m. 12
    R1 | % m. 13
    R1 | % m. 14
  \barNumberCheck #15
    r4 cs bs8 cs16 ds e8 ds | % m. 15
    cs8 fss gs b, cs cs ds ds | % m. 16
    gs,8 as b cs ds4 r8 ds | % m. 17
    es4 ds2 css4 | % m. 18
    ds4 r16 ds, e fs gs8 cs4 ds8 | % m. 19
  \barNumberCheck #20
    e4 ds cs2~ | % m. 20
    cs8 b16 as b gs css8 ds2~ | % m. 21
    ds8 cs16 bs cs as dss8 es2~ | % m. 22
    es8 ds16 cs ds bs es8 fs4~ fs8. es16 | % m. 23
    ds4 es as, r | % m. 24
    R1 | % m. 25
    r4 fs' ds8 e16 fs gs8 fs | % m. 26
    e8 as b ds, e e fs fs | % m. 27
    b,8 as gs cs fs, e ds gs | % m. 28
    cs8 b as ds gs, fs es as | % m. 29
  \barNumberCheck #30
    ds,4 r8 ds' e e fs fs | % m. 30
    b,4 r8 b cs cs ds ds | % m. 31
    gs,8 as b cs ds fs~ fs16 gs fs es | % m. 32
    ds16 css bs as gs fs gs as b4 as8 gs | % m. 33
    fs8 as ds,4 r2 | % m. 34
    r4 r8 gs a a b b | % m. 35
    e,4 e'2 ds4 | % m. 36
    cs8 ds e fs gs2~ | % m. 37
    gs2. fs4~ | % m. 38
    fs4 r8 e fss, fss gs gs | % m. 39
  \barNumberCheck #40
    cs,8 ds e4 ds2 | % m. 40
    gs1 \fermata | % m. 41
  \bar "|."
}

fugueEighteen = \score {
  \new PianoStaff \with {
    edition-id = fugue.eighteen
  } <<
    \new Staff = "Up" \with { } <<
      \new Voice \soprano
      \new Voice \alto
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \tenor
      \new Voice \bass
    >>
  >>
  \layout{}
}
%\fugueEighteen
