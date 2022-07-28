\version "2.20.0"
\language "english"

global = {
  \key ds \minor
  \time 4/4
}

tieHigh = \once \override Tie #'Y-offset = #2.0

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

st = { \staffTwo \voiceOne }
so = { \staffOne \voiceTwo }

vOne = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    R1 | %1
    R1 | %2
    r2 as4 ds ~ | %3
    ds8 fs es ds cs ds es4 | %4
  \barNumberCheck #5
    as, ds4. cs8 bs4 | %5
    as8 bs cs4 ~ cs4. b8 | %6
    as4 ds ~ ds8 css ds es | %7
    fs4 es8 fs gs es fs gs | %8
    as gs fs es fs4 es8 ds | %9
  \barNumberCheck #10
    css ds4 css8 ds cs b4 ~ | %10
    b8 as16 gs as8 b16 cs ds8 es16 fs es8. ds16 | %11
    css4 ds8 cs b as gs fs | %12
    es fs gs4 ~ gs8 fs16 es fs8 gs | %13
    as4 b8 cs16 ds gs,4 r8 as | %14
  \barNumberCheck #15
    b cs ds es fs gs as b ~ | %15
    b cs, fs2 es4 ~ | %16
    es ds8 cs bs css ds es | %17
    fs4 es8 ds cs ds es fs | %18
    cs4 bs as r | %19
  \barNumberCheck #20
    as es' ~ es8 fs es ds | %20
    cs ds es4 as, r8 ds ~ | %21
    ds8 cs bs4 as r8 gs' ~ | %22
    gs fs es4 ~ es16 ds es fs ds8. es16 | %23
    es4 as ~ as8 b as gs | %24
  \barNumberCheck #25
    fss gs as4 ds, gs ~ | %25
    gs8 fs es2 ds4 ~ | %26
    ds gs4. as8 gs fs | %27
    es fs gs4 cs, fs ~ | %28
    fs8 e ds gs cs, fs4 es8 | %29
  \barNumberCheck #30
    fs4 cs ~ cs8 bs cs ds | %30
    es ds cs4 gs' cs, ~ | %31
    cs8 ds es4 fs2 ~ | %32
    fs8 es ds cs bs4 css | %33
    ds2 cs | %34
  \barNumberCheck #35
    b8 cs ds e as, b cs ds | %35
    b as gs fs es4 fs8 gs | %36
    as4 bs8 css ds4. cs8 | %37
    bs css ds2 css4 | %38
    ds4 css8 ds es gs fs es | %39
  \barNumberCheck #40
  \oneVoice
    ds[ cs] b as16 b as8 bs css ds | %40
    es as, as' gs fs gs as b | %41
    es,4 fss
  \voiceOne
      gs8 fs es ds | %42
    css4 ds ~ ds8 cs b as | %43
    b as gs4 ~ gs8 fs16 es fs8 gs | %44
  \barNumberCheck #45
    as4 ds,4 ~ ds8 css8 ds es | %45
    fs es ds4 as' ds, ~ | %46
    ds8 es fss4 gs \oneVoice gs' | %47
    ds4. cs8 ds4. es8 | %48
    fs4. es8 ds4 as' | %49
  \barNumberCheck #50
  \voiceOne 
    ds,4. ds8 css ds es css | %50
    ds es fs gs as as, ds es | %51
    css4 r as ds ~ | %52
    ds8 e ds cs b cs ds4 | %53
    gs,8 as16 b as8 b cs4 fs, ~ | %54
  \barNumberCheck #55
    fs8 es fs gs as gs fs4 | %55
    e'2 ~ e8 css ds4 ~ | %56
    ds8 fs es ds css es as4 ~ | %57
    as8 b as gs fs gs as4 | %58
    ds, gs ~ gs8 fs es4 | %59
  \barNumberCheck #60
    ds cs b as | %60
    gs fs es r8 bs' | %61
    css ds es4 ~ es8 ds cs16 b cs fss | %62
    gs as b4 as16 gs as8 ds, es fss | %63
    gs4 r as ds, ~ | %64
  \barNumberCheck #65
    ds8 b cs ds e ds cs4 | %65
    gs' ds ~ ds8 es fss4 | %66
    gs8 as gs fs es fs gs4 ~ | %67
    gs8[ fs] es fs16 gs as gs as4 gs16 fs | %68
    es8 fs4 es8 fs cs fs4 ~ | %69
  \barNumberCheck #70
    fs8 gs fs e ds e fs4 | %70
    b, e ~ e8 ds cs4 | %71
    b e ~ e8 css ds4 ~ | %72
    ds gs ~ gs8 gs fss fs ~ | %73
    fs fs es e ds4 cs | %74
    %# si4. si8 lad4. fad'8 |
  \barNumberCheck #75
    b4. b8 \once \override NoteColumn  #'force-hshift = #0.3 as4. fs'8 | %75
    gs,2 ~ gs8 fs16 es fs8 gs | %76
    as4 r es'2 | %77
    as2. b4 | %78
    as gs fs gs | %79
  \barNumberCheck #80
    as2 ds, | %80
    gs2. fs4 | %81
  \oneVoice
    e2 ds2 ~ | %82
    ds8 b gs4 ~ gs8 as b4 ~ | %83
    b8 gs es4 ~ es8 fs gs4 ~ | %84
  \barNumberCheck #85
    gs8 es css4 ~ css8 css ds es | %85
  \voiceOne
    fs fss gs as b bs css ds | %86
    ds4 css ds2^\fermata | %87
  \bar "|."
}

vTwo = \relative c' {
  \barNumberCheck #1
    \so ds4 as'4. b8 as gs | %1
    fs gs as4 ds, gs ~ | %2
    gs8 fs es4 ds4. es8 | %3
    fs4 gs as4. gs8 | %4
  \barNumberCheck #5
    fs8[ es] fs[ es16 ds] es8 as4 gss8 | %5
    as4 ~ as8 gs fss ds gs4 ~ | %6
    gs8 fs es ds es4 fs8 gs | %7
    as bs css ds es css ds es | %8
    fs es ds css ds cs b4 | %9
  \barNumberCheck #10
    as gs fs gs8 fs | %10
    es4. ds16 es fs8 gs16 as gs8. fs32 gs | %11
    as8 gs fs es ds4 css8 ds | %12
    es ds css bs css4 ds8 es | %13
    fs4 gs8 fs es cs fs4 ~ | %14
  \barNumberCheck #15
    fs es2 ds4 | %15
    cs8 es fs gs as b cs b | %16
    as gs fs es ds es fs as | %17
    ds cs bs2 as4 ~ | %18
    as gss as, es' ~ | %19
  \barNumberCheck #20
    es8 fs es ds cs ds es4 | %20
    as, r8 ds ~ ds cs bs4 | %21
    as r8 gs' ~ gs fs es4 | %22
    ds r8 cs as' gss as4 | %23
    gss as ds4. es8 | %24
  \barNumberCheck #25
    ds4. cs8 bs4. cs8 | %25
    ds4 gs, cs2 | %26
    bs4 r gs cs ~ | %27
    cs8 ds cs b as b cs4 | %28
    fs, b ~ b8 as gs4 | %29
  \barNumberCheck #30
  fs8 es fs gs as gs as bs | %30
    cs b4 as8 b as gs b | %31
    as2 ~ as8 bs cs ds | %32
    gs,4 as ~ as8 gs fs es | %33
    ds fs b4 ~ b8 as gs fss | %34
  \barNumberCheck #35
    gs2. fss4 | %35
    gs ds ~ ds8 css ds es | %36
    fs es ds4 as' ds, ~ | %37
    ds8 es fs4 gs2 | %38
    fs8 gs as bs css \st as, bs css | %39
  \barNumberCheck #40
    %{ \so%}  ds4. es8 fs4 es8 ds | %40
    css ds es4 ~ es8 ds16 css ds4 ~ | %41
    ds8 \st cs b as b \so ds gs4 ~ | %42
    gs8 fs es ds es4 fss | %43
    gs8 fs es ds css4 ds8 es | %44
  \barNumberCheck #45
    fs es fs gs as[ gs fs es16 ds] | %45
    css8 gs'4 fs16 es fss8 gs as cs, | %46
    b cs ds e ds4 \st gs, ~ | %47
    gs8 fss gs as b as gs4 | %48
    ds' as ~ as8 b cs4 ~ | %49
  \barNumberCheck #50
    cs8 \so cs' b as gs fs gs es | %50
    fs gs as gs ~ gs fs16 es fs8 gs | %51
    as4 \st as, \so ds4. e8 | %52
    ds cs b cs ds4 \st gs,8 fs | %53
    es4 cs' fs,4. es8 | %54
  \barNumberCheck #55
    fs gs as gs fs4 b8 as | %55
    gs4 \so cs' fs,2 | %56
    b8 as gs fs es ds css es | %57
    \st as, \so gs' fs es ds4 ds'8 cs | %58
    b as gs b as ds4 cs8 ~ | %59
  \barNumberCheck #60
    cs b4 as8 ~ as gs4 fs8 ~ | %60
    fs es4 ds8 css es as4 ~ | %61
    as8 b as gs fs gs as4 | %62
    ds, gs ~ gs8 fss es e | %63
    ds b' as gs fss ds16 es fss8 gs16 as | %64
  \barNumberCheck #65
    b4. as8 gs fss gs as | %65
    ds, es fss gs as16 b cs4 b16 as | %66
    b4 r gs2 | %67
    cs2. ds4 | %68
    cs b as b | %69
  \barNumberCheck #70
    cs2 fs, | %70
    b2. as4 | %71
    gs2 fs4 b ~ | %72
    b8 ds cs b as b cs4 | %73
    gs cs ~ cs8 b as4 ~ | %74
  \barNumberCheck #75
    as8 ds, gs4 ~ \once \override NoteColumn  #'force-hshift = #-0.8 gs8 gs fs4 ~ | %75
    fs8 fs e ds css4 ds ~ | %76
    ds8 css16 bs css8 es as4. b8 | %77
    as4. gs8 fs4. gs8 | %78
    as2
  \staffTwo\voiceOne
      ds,4 gs ~ | %79
  \barNumberCheck #80
    gs8 fs es4 fss8 as, ds4 ~ | %80
    ds8 e ds cs b cs ds4 | %81
    \st gs, cs ~ cs8 b as4 | %82
    gs4. as8 b as gs fs | %83
    es4. fs8 gs fs es ds | %84
  \barNumberCheck #85
    css4. ds8 es4 fs8 gs | %85
    %\once \override Beam.positions = #'(5 . 5)
    as as b \so cs ds ds es fs | %86
    es b' as gs fss2 | %87
  \bar "|."
}

vThree = \relative c {
  \global
  \barNumberCheck #1
  \oneVoice
    R1*5 | %1-5
  \barNumberCheck #6
    R1 | %6
    R1 | %7
    ds4 as'4. b8 as gs | %8
    fs gs as4 ds, gs ~ | %9
  \barNumberCheck #10
    gs8 fs es4 ds ds' | %10
    css cs bs b | %11
    as8 as, ds4 ~ ds8 fs es ds | %12
    css ds es4 as, ds ~ | %13
    ds8 cs b2 as4 | %14
  \barNumberCheck #15
    gs8 as b cs ds es fs gs | %15
    as gs as b cs4 cs, | %16
    fs, fs' ~ fs8 es ds cs | %17
    bs as gss es as bs cs ds | %18
    es ds es es, as gss as bs | %19
  \barNumberCheck #20
    cs bs cs ds es[ ds cs ds16 es] \allowPageTurn | %20
    \voiceTwo fs es fs8 \oneVoice gss,4 as bs | %21
    \voiceTwo cs8 as es' ds \oneVoice css ds4 css8 | %22
    \oneVoice ds bs' gss as fs es fs4 | %23
    es r fs b ~ | %24
  \barNumberCheck #25
    b8 cs b as gs fss gs as | %25
    bs4 cs8 b as gs fss ds | %26
    gs as gs fs es fs es ds | %27
    cs b' as gs fs gs fs e | %28
    ds cs b gs as fs cs' cs, | %29
  \barNumberCheck #30
    fs gs as gs fs fs' es ds | %30
    cs4 fs2 es4 | %31
    fs8 es ds css ds4 as8 bs | %32
    cs4 fs, gs as | %33
    b8 as gs fs e4 ds | %34
  \barNumberCheck #35
    gs8 as b cs ds4 r8 ds | %35
    gs as b gs as gs fs es | %36
    ds4 gs4. fss16 es fss4 | %37
    gs8 fs es ds es fs gs as | %38
    \voiceTwo ds,16 ds' cs b as4 ~ as8 fs gs as | %39
  \barNumberCheck #40
    \oneVoice b as gs4 ds' \once \tieDown as ~ | %40
    as8 bs css4 ds8 b fs gs | %41
    \voiceTwo as4 ds, gs8 as b4 | %42
    \oneVoice as2 r %{ \pageBreak %} | %43
    r as,4 ds, ~ | %44
  \barNumberCheck #45
    ds8 css ds es fs es ds4 | %45
    as' ds, ~ ds8 es fss4 | %46
    gs as \voiceTwo b8 cs b as | %47
    gs[ as] b es16 cs gs'4 b,8 cs | %48
    ds css ds es fs gs es fss | %49
  \barNumberCheck #50
    gs as gs fs \oneVoice es ds css b' | %50
    as gs fs es ds cs b4 | %51
    \voiceTwo as ds4. e8 ds cs | %52
    b cs ds4 gs,8 as b4 | %53
    cs fs, ~ fs8 es fs gs | %54
  \barNumberCheck #55
    as gs fs e' ds2 ~ | %55
    ds8 cs b as b4 b'8 as | %56
    gs as b gs as4. gs8 | %57
    fs gs as4 ds,8 es fss4 | %58
    \oneVoice gs8 fs es ds css ds as as' | %59
  \barNumberCheck #60
    b ds, es fss gs es css ds | %60
    bs css ds ds, as'4 r | %61
    as'2 ds ~ | %62
    ds4 e ds cs | %63
    b cs ds2 | %64
  \barNumberCheck #65
    gs, cs ~ | %65
    cs4 b as2 | %66
    gs4 cs ~ cs8 ds cs b | %67
    as b cs4 fs, b ~ | %68
    b8 as gs4 fs8 e ds16 cs ds e | %69
  \barNumberCheck #70
    as,8 fs gs as b[ cs] ds e16 fs | %70
    gs8 as16 b cs,8 ds16 e fs,8 fs'4 fss8 | %71
    gs fss gs as b as gs fs | %72
    es fs es ds css css'16 ds e8 as, | %73
    b \once \override Script #'padding = #1 bs\prallmordent cs as fss gs4 fss8 | %74
  \barNumberCheck #75
    gs fs e ds cs css ds as | %75
    b bs cs gs as2 ~ | %76
    as8 es' as4 ~ as8 b as gs | %77
    fs gs as4 ds,8 es16 fs gs4 ~ | %78
    gs8 fs es css'
  \voiceTwo
       ds es16 fs es8 ds | %79
  \barNumberCheck #80
    css ds4 cs8 ~ cs ds16 e ds8 cs | %80
    b cs b as gs fs e ds | %81
    \voiceTwo cs cs'16 b as8 gs fss gs4 fs8 | %82
    es2 ~ es8 fs es ds | %83
    css2 ~ css8 ds css bs | %84
  \barNumberCheck #85
    as2 ~ as8 gs fs es | %85
    ds cs' b as gs fs' es ds | %86
    \oneVoice as'4 as, ds,2_\fermata | %87
  \bar "|."
}

fugueEight = \score {
  \new PianoStaff \with { }
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff ="Up" \with { } <<
      \new Voice \vOne %soprano
      \new Voice \vTwo %tenor
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vThree %bass
    >>
  >>
  \layout {  
    \context {
      \Score
      \editionID ##f fugue.eight
    }

  }
}
%\fugueEight
