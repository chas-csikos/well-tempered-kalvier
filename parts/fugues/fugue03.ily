\version "2.20.0"
\language "english"

global = {
  \key cs \major
  \time 4/4
  \set Score.tempoHideNote   = ##t
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment     = #(ly:make-moment 1/4)
  \set Timing.beatStructure  = 1,1,1,1
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

%soparno
vOne = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    r4 r8 gs as16 gs fs gs es'8 cs | %1
    gs fs16 es fs8 ds' es, cs' ds, bs' | %2
    cs, cs'16 bs cs ds es fs gs fss es fss gs fs es ds | %3
    es4 ~ es16 ds cs es ds cs bs ds cs bs cs as | %4
  \barNumberCheck #5
    \shape #'( (0 . 0) (0 . 0) (0.25 . 0.5) (0 . 0.5)) Slur
    \once \slurDown
    \appoggiatura as bs8 ds fs2 es4 ~ | %5
    es ds ~ ds8[ cs bs ds] ~ | %6
    ds gs, es'4. es16 cs
      \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
      as4 ~ | %7 %SHAPE this tie
    as8 as ds4. ds16 bs
      \shape #'((0 . 0)(0 . 1)(0 . 1)(0 . 0)) Tie
      gs4 ~ | %8 %SHAPE this tie
    gs8 gs cs4 ~ cs16 bs cs as as'4 ~ | %9
  \barNumberCheck #10
    as16 gs fss as gs ds es fs es ds cs ds bs'8 gs | %10
    ds cs16 bs cs8 as' bs, gs' as, fss' | %11
    gs,16 as bs cs bs as gs bs es ds css es \oneVoice gs fs es gs | %12
    b8^\prallup as16 gs fs es ds css ds fs es ds css es as, gs | %13
    fs es ds css ds es fs gs as gs fs gs as gs fs es | %14
  \barNumberCheck #15
    \tieDown fs4 ~ fs16 es ds fs es ds cs es ds cs ds bs | %15
    \voiceOne cs16 es fs es \tieUp cs'4 ~ cs16bs cs as  as'4 ~ | %16
    as16 ds,, es ds bs'4 ~ bs16 as bs gs gs'4 ~ | %17
    gs16 cs,, ds cs as'4 ~ as16 gs as fss fss'4 ~ | %18
    fss16 dss es cs as2 gs4 ~ | %19
  \barNumberCheck #20
    gs fss ~ fss8 es dss fss | %20
    \oneVoice bs16 as gs bs as gs fss as gs es cs' as bs gs fs' dss | %21
    dss es ass bs dss,8. es16 es4 r8 es | %22
    b16 as gs as es'8 css gs fs16 es fs8 ds' | %23
    a16 gs fs gs ds'8 bs fs es16 ds es gs cs ds | %24
  \barNumberCheck #25
    \voiceOne es16 ds cs ds bs'8 gs ds cs16 bs cs8 as' | %25
    bs, gs' as, fss' gs,16 ds es fss gs as bs gs | %26
    cs16 bs as bs cs bs as gs \once \tieDown as4 ~ as16 gs fs as | %27
    gs16 fs es gs fs es ds fs es8 gs cs4 | %28
    r8 e16 cs as4 r8 as16 cs e4 | %29
  \barNumberCheck #30
    ds8 gs cs, fss gs,8 gs'16 fss gs as b gs | %30
    \oneVoice es fs gs es cs ds es cs as bs cs as fs' gs as fs | %31
    ds es fs ds bs cs ds bs gs as bs gs es' fs gs es | %32
    css ds es css as bs css as fs gs as fs ds' es fs ds | %33
    bs cs ds bs gs as bs gs es fs gs es cs es gs as | %34
  \barNumberCheck #35
    \oneVoice b as gs as fs'8 cs as gs16 fs gs cs, es gs | %35
    as gs fs gs es'8 cs gs fs16 es fs bs, ds fs | %36
    gs fs es fs ds'8 bs fs es16 ds es gs as bs | %37
    cs ds es ds fs es ds cs gs'2\downprall ~ | %38
    \voiceOne gs16 gs fs gs es gs ds gs cs, gs' bs, as bs ds es fs | %39
  \barNumberCheck #40
    gs fs es gs ds gs cs, gs' bs, gs' as, gs as cs ds es | %40
    fs es ds es cs ds bs ds as ds gs, fss gs bs cs ds | %41
    es fs gs as bs,8 gs as16 gs fs gs \oneVoice es'8 cs | %42
    gs fs16 es fs8 ds' es, cs' ds, bs' | %43
    \voiceOne cs, cs'16 bs cs ds es fs gs fs es fs gs fs es ds | %44
  \barNumberCheck #45
    es4 ~ es16 ds cs es ds cs bs ds cs bs cs as | %45
    bs8 ds fs2 es4 ~ | %46
    es ds ~ ds8[ cs bs ds] ~ | %47
    ds[ gs, cs b] as2 ~ | %48
    as8 as16 fs ds4 ~ ds8 ds gs4 ~ | %49
  \barNumberCheck #50
    gs8 gs16 es
      \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) Tie
      css4 ~ css8 as8 fs'4 ~ | %50
    fs16 es fs ds ds'4 ~ ds16 cs bs ds \oneVoice cs gs as b | %51
    as gs fs gs es'8 cs gs fs16 es fs8 ds' | %52
    es, cs' ds, bs' cs,16 es fs gs as bs cs ds | %53
    e ds cs ds e fss gs as cs, bs as gs ds'8 fs, | %54
  \barNumberCheck #55
    \voiceOne es <cs gs' cs> ds bs' <cs gs es>2\fermata | %55
  \bar "|." %55
}

vOne-Two = \relative c' {
   \barNumberCheck #1
     s1*54 |
   \barNumberCheck #55
     \voiceFour s8 s <fs as> <fs gs> s2 | %55
}

%alto
vTwo = \relative c'{
  \global
  \barNumberCheck #1
  \voiceTwo
  \teeny
    R1 | %1
    \once \override MultiMeasureRest.staff-position = #-8
    R1 | %2
  \normalsize
    r4 r8 cs es16 ds cs ds bs'8 gs | %3
    ds cs16 bs cs8 as' bs, gs' as, fss' | %4
  \barNumberCheck #5
    gs,8 gs'16 fss gs as bs gs cs bs as bs cs bs as gs | %5
    as4 ~ as16 gs fs as gs fs es gs fs es fs ds | %6
    es4 r8 gs cs4. cs16 as | %7
    ds,4 r8 fss bs4. bs16 gs | %8
    cs,4 r8 es as4 ~ as16 cs ds as | %9
  \barNumberCheck #10
    bs4 r8 gs ~ gs16 fss es fss gs fs es ds | %10
    es4 ~ es16 ds cs es ds cs bs ds cs bs cs as | %11
    bs8 ds gs4 r8 %12 start
  \staffTwo \voiceOne
      b,16 gs es4 | %12 ent
    a8\rest es16 gs b4 as8 b as css, | %13
    ds4 a'4\rest a2\rest | %14
  \barNumberCheck #15
    \once \teeny R1 | %15
  \staffOne \voiceTwo
    r4 r8 es' as4 ~ as16 cs ds as | %16
    bs8 a,\rest a\rest ds gs4 ~ gs16 bs cs gs | %17
    as8 as,\rest as\rest cs fss4 ~ fss16 as bs fss | %18
    gs4 r8 bs,8 cs16 bs as bs gs'8 es | %19
  \barNumberCheck #20
    bs8 as16 gs as8 fss' gs, es' fss, dss' | %20
  \staffTwo \voiceOne
    es,4. dss8 es dss es as | %21
    gs fss16 es fss8 as gs16 as bs gs es fs gs es | %22
    css ds es css as css es as ds, fs as css ds es fs ds | %23
    bs cs ds bs gs4~gs16 gs as bs cs8 r | %24
  \barNumberCheck #25
  \staffOne \voiceTwo
    r4 bs'2 as4 ~ | %25
    as8 gs fss as ds,16 r r8 %26 start
  \staffTwo \voiceOne
      r gs, | %26 end
    as16 gs fs gs es'8 cs gs8 fs16 es fs8 ds' | %27
    es, cs' ds,
  \staffOne \voiceTwo
      bs' cs4 r8 gs''16 es | %28
    cs4 r8 cs16 as fss4 r8 cs' | %29
  \barNumberCheck #30
    b4 as gs8 r r4 | %30
    \staffTwo \voiceOne r8 b,16 gs es8 r r as16 fs ds8 r | %31
    r8 as'16 fs ds8 r r gs16 es css8 r | %32
    r8 gs'16 es css8 r r fs16 ds bs8 r | %33
    r8 fs'16 ds bs8 r r2 | %34
  \barNumberCheck #35
    \staffOne \voiceTwo \teeny
    R1 | %35
    R1 | %36
    R1 | %37
    R1 | %38
    \override MultiMeasureRest.staff-position = #-4
      R1 | %39
  \barNumberCheck #40
      R1 | %40
      R1 | %41
      R1 | %42
    \once \override MultiMeasureRest.staff-position = #-8
      R1 | %43
    \normalsize
    r4 r8 \staffTwo\voiceOne cs'16 \staffOne\voiceTwo  ds es ds cs ds bs'8 gs | %44
  \barNumberCheck #45
    ds cs16 bs cs8 as' bs, gs' \staffTwo \voiceOne as, \staffOne \voiceTwo fss' | %45
    \staffTwo \voiceOne gs, \staffOne \voiceTwo gs'16 fs gs as bs gs cs bs as bs cs bs as gs | %46
    as4 ~ as16 gs fs as gs fs es gs fs es fs ds | %47
    es2 ~ es8 cs fs es | %48
    fs4. fs16 ds gs,4 r8 bs | %49
  \barNumberCheck #50
    es4. es16 css fs,4 r8 as | %50
    ds4 ~ ds16 fs gs ds es4 %51
  \staffTwo \voiceOne
      r8 cs ~ | %51
    cs16 bs as bs cs bs as gs as4 ~ as16 gs fs as | %52
    gs fs es gs fs es ds fs es gs as bs cs bs as gs | %53
    fss gs as fss ds4 ~ ds16 ds es fs gs as bs gs | %54
  \barNumberCheck #55
    \staffOne\voiceTwo cs4 ds cs2 \bar "|." | %55
}

%tenor
vThree = \relative c' {
  \global
  \barNumberCheck #1
  \oneVoice
  \stemDown
    R1*4 | %1-4
  \barNumberCheck #5
    r4 r8 gs as16 gs fs gs es'8 cs | %5
    gs ds16 es fs8 ds' es, cs' ds, bs' | %6
    cs, cs'16 bs cs ds es cs as bs cs as fss gs as fss | %7
    bs,8 bs'16 as bs cs ds bs gs as bs gs es fss gs es | %8
    as,8 as'16 gs as bs cs as fss gs as fss ds es fss ds | %9
  \barNumberCheck #10
    gs,8 gs'16 as bs8 gs cs4 bs | %10
    as8 gs fss4 gs ds | %11
    gs r8 \voiceTwo ds'16 bs gs4 gs,8\rest gs'16 es | %12
    css4 b8\rest es fs gs as as, | %13
    ds,4 b'8\rest ds fs16 es ds es cs'8 as | %14
  \barNumberCheck #15
    es ds16 cs ds8 bs' cs, as' bs, gss' | %15
    as,8 as'16 gss as bs cs as fss gs as fss ds es fss ds | %16
    \oneVoice gs,8 gs'16 fss gs as bs gs es fss gs es cs ds es cs | %17
    fss,8 fss'16 es fss gs as fss dss es fss dss bs css dss bs | %18
    es, fss gs as bs css dss bs es ds cs ds es ds cs bs | %19
  \barNumberCheck #20
    cs4 ~ cs16 bs as cs bs as gs bs as gs as fss | %20
    \voiceTwo gs8 cs fss, bs es, as gs cs | %21
    bs2 es4 r | %22
    \teeny R1 \normalsize | %23
    r4 r16 gs,16 as bs cs4 ~ cs16 ds es fss | %24
  \barNumberCheck #25
    \oneVoice gs fss es fss gs fss es ds es4 ~ es16 ds cs es | %25
    ds cs bs ds cs bs as cs bs8 ds \voiceTwo fs4 ~ | %26
    fs es2 ds4 ~ | %27
    ds8 cs ds gs, cs16 ds es fs \oneVoice es ds cs es | %28
    as gs fss as cs b as cs e8 ds16 cs b as gs fss | %29
  \barNumberCheck #30
    gs b as gs fss es ds cs b cs ds b gs8 gs'16 es | %30
    \voiceTwo cs8 r r cs16 as fs8 r r fs'16 ds | %31
    bs8 r r bs16 gs es8 r r es'16 css | %32
    as8 r r as16 fs ds8 r r ds'16 bs | %33
    gs8 r r gs16 es cs4 r | %34
  \barNumberCheck #35
  \oneVoice
    r8 b''16 cs, as' cs, gs' cs, fs cs es ds es8 gs, | %35
    r8 as'16 cs, gs' cs, fs cs es cs ds cs ds8 gs, | %36
    r8 gs'16 gs, fs' gs, es' gs, ds' gs, cs bs cs gs es' ds | %37
    es gs, gs' fs gs gs, as' gs, bs' cs ds bs gs bs \staffOne \voiceTwo ds es | %38
    fs es ds es cs'8 gs es ds16 cs ds16 gs, bs ds | %39
  \barNumberCheck #40
    es ds cs ds bs'8 gs ds cs16 bs cs gs bs cs | %40
    ds cs bs cs as'8 fss cs bs16 as bs gs as bs | %41
    cs ds es ds fs es ds cs fs8 \staffTwo \oneVoice as,16 bs cs bs as gs | %42
    as4 ~ as16 gs fs as gs fs es gs fs es fs ds | %43
    es8. gs16 as bs cs8 ~ cs4 bs ~ | %44
  \barNumberCheck #45
    bs as ~ as8 gs as ds, | %45
    gs4 r8 gs as16 gs fs gs es'8 cs | %46
    gs8 fs16 es fs8 ds' es, cs' ds, bs' | %47
    cs,16 gs cs ds es fs gs es fs fs, fs' es fs gs as fs | %48
    ds es fs ds bs cs ds bs es,8 es'16 ds es fs gs es | %49
  \barNumberCheck #50
    css ds es css as bs css as ds,8 ds'16 css ds es fs ds | %50
    bs cs ds bs gs as bs gs cs,8 cs'16 ds \voiceTwo es8 cs | %51
    fs4 es ds8 cs bs4 | %52
    cs gs as8 r r4 | %53
    r r16 cs bs as gs4 r | %54
  \barNumberCheck #55
    r8 es[ fs gs] cs,2\fermata \bar "|." | %55
}

fugueThree = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" <<
      \new Voice = "vOne" \vOne
      \new Voice = "vOne-Two" \vOne-Two
      \new Voice = "vTwo" \vTwo
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice = "vThree" \vThree
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f fugue.three
      % \override NonMusicalPaperColumn #'line-break-permission = ##t
      % \consists #(custom-line-breaks-engraver '(4 4 4 4 3 4 4))
    }
  }
}
%\fugueThree
