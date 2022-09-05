\version "2.20.0"
\language "english"

global = {
  \key cs \major
  \time 3/8
  \set Score.tempoHideNote = ##t
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

%soparno / right hand
vOne = \relative c'' {
  \global
  \barNumberCheck #1
    es16 cs gs cs es cs | %1
    fs16 cs fs cs fs cs | %2
    gs'16 cs, gs' cs, gs' cs, | %3
    as'16 cs, as' cs, as' cs, | %4
    gs'16 cs, gs' cs, gs' cs, | %5
    fs16 es ds es fs ds | %6
    es16 ds cs ds es cs | %7
    ds16 es ds cs bs as | %8
    gs4 gs'8 | %9
    as,4 gs'8 | %10
    bs,4 gs'8 | %11
    cs,4 gs'8 | %12
    bs,4 gs'8 | %13
    as,4 fss'8 | %14
    gs,4 gs'8 ~ | %15
    gs8 fs16 es ds es | %16
    fs16 ds as ds fs ds | %17
    gs16 ds gs ds gs ds | %18
    as'16 ds, as' ds, as' ds, | %19
  \barNumberCheck #20
    b'16 ds, b' ds, b' ds, | %20
    as'16 ds, as' ds, as' ds, | %21
    gs16 fs es fs gs es | %22
    fs16 es ds es fs ds | %23
    es16 fs es ds cs bs | %24
    as4 as'8 | %25
    bs,4 as'8 | %26
    cs,4 as'8 | %27
    ds,4 as'8 | %28
    cs,4 as'8 | %29
    bs,4 gss'8 | %30
    as,4 as'8 ~ | %31
    as8 gs fss | %32
    gs8 gs, gs' ~ | %33
    gs8 fs es | %34
    fs16 es ds es fs ds | %35
    gss16 fss es fss gss es | %36
    as16 gss as bs as gs | %37
    fss16 es ds es fss ds | %38
    gs8 gs, gs' ~ | %39
  \barNumberCheck #40
    gs8 fs es | %40
    fs8 fs, fs' ~ | %41
    fs8 es ds | %42
    es16 ds cs ds es cs | %43
    fss16 es ds es fss ds | %44
    gs16 fss gs as  gs fs | %45
    es16 ds cs ds es cs | %46
    fs,4 fs'8 | %47
    gs,4 fs'8 | %48
    as,4 fs'8 | %49
    b,4 fs'8 | %50
    as,4 fs'8 | %51
    gs,4 es'8 | %52
    fs,4 fs'8 ~ | %53
    fs8 es16 ds cs ds | %54
    es16 cs gs cs es cs | %55
    fs16 cs fs cs fs cs | %56
    gs'16 cs, gs' cs, gs' cs, | %57
    as'16 cs, as' cs, as' cs, | %58
    gs'16 cs, gs' cs, gs' cs, | %59
  \barNumberCheck #60
    fs16 es ds es fs ds | %60
    es16 ds cs ds es cs | %61
    ds16 es ds cs bs as | %62
    bs16 gs r gs r gs | %63
    bs16 gs r gs r gs | %64
    cs16 gs r gs r gs | %65
    cs16 gs r gs r gs | %66
    fs'16 gs, r gs r gs | %67
    fs'16 gs, r gs r gs | %68
    es'16 gs, r gs r gs | %69
    es'16 gs, r gs r gs | %70
    fss'16 as, r as r as | %71
    fss'16 as, r as r as | %72
    gs'16 bs, r bs r bs | %73
    gs'16 bs, r bs r bs | %74
    gs'16 cs, r gs r cs | %75
    r16 es r gs r as | %76
    b16 as gs fs es ds | %77
    es16 fs gs b as gs | %78
    as16 ds, r fs, r as | %79
  \barNumberCheck #80
    r16 ds r fs r gs | %80
    a16 gs fs e ds cs | %81
    ds16 e fs a gs fs | %82
    gs16 cs, r e r cs | %83
    r16 a r fs r ds' | %84
    r16 gs, r e r cs' | %85
    r16 a r fs r ds | %86
  \staffTwo \voiceOne
    bs16 gs r gs r gs | %87
    bs16 gs r gs r gs | %88
    cs16 gs r gs r gs | %89
    cs16 gs r gs r gs | %90
    \staffOne \once\stemDown fs'16  \staffTwo gs, r gs r gs | %91
    \staffOne \once\stemDown fs'16  \staffTwo gs, r gs r gs | %92
    \staffOne \once\stemDown es'16  \staffTwo gs, r gs r gs | %93
    \staffOne \once\stemDown es'16  \staffTwo gs, r gs r gs | %94
    \staffOne \once\stemDown fss'16 \staffTwo as, r as r as | %95
    \staffOne \once\stemDown fss'16 \staffTwo as, r as r as | %96
    s8 s16 fs a bs | %97
    s8 s16
  \staffOne\oneVoice
      as'16 cs e | %98
    bs16 ds fs ds bs gs | %99
  \barNumberCheck #100
    s4. | %100
    es16 gs cs gs es cs | %101
    s4. | %102
  \voiceOne
    s8 cs' bs | %103
    cs4. | %104
  \bar "|."
}

vTwo = \relative c' {
  \barNumberCheck #1
    s4.*102 |
  \barNumberCheck #103
  \voiceTwo
    r8 <es gs> <ds gs> | %103
    <cs gs'>4. | %104
}

%tenor / left hand
vThree = \relative c {
  \global
  \barNumberCheck #1
    cs4 cs'8 | %1
    ds,4 cs'8 | %2
    es,4 cs'8 | %3
    fs,4 cs'8 | %4
    es,4 cs'8 | %5
    ds,4 bs'8 | %6
    cs,4 cs'8 ~ | %7
    cs8 bs16 as gs as | %8
    bs16 gs ds gs bs gs | %9
    cs16 gs cs gs cs gs | %10
    ds'16 gs, ds' gs, ds' gs, | %11
    es'16 gs, es' gs, es' gs, | %12
    ds'16 gs, ds' gs, ds' gs, | %13
    cs16 bs as bs cs as | %14
    bs16 as gs as bs gs | %15
    as16 b as gs fs es | %16
    ds4 ds'8 | %17
    es,4 ds'8 | %18
    fs,4 ds'8 | %19
  \barNumberCheck #20
    gs,4 ds'8 | %20
    fs,4 ds'8 | %21
    es,4 css'8 | %22
    ds,4 ds'8~ | %23
    ds8 cs16 bs as bs | %24
    cs16 as es as cs as | %25
    ds16 as ds as ds as | %26
    es'16 as, es' as, es' as, | %27
    fs'16 as, fs' as, fs' as, | %28
    es'16 as, es' as, es' as, | %29
    ds16 cs bs cs ds bs | %30
    cs16 bs as bs cs as | %31
    dss16 css bs css dss bs | %32
    es16 dss es fss es ds | %33
    css16 bs as bs css as | %34
    ds8 ds, ds' ~ | %35
    ds8 cs bs | %36
    cs8 cs, cs' ~ | %37
    cs8 bs as | %38
    bs16 as gs as bs gs | %39
  \barNumberCheck #40
    css16 bs as bs css as | %40
    ds16 css ds es ds cs | %41
    bs16 as gs as bs gs | %42
    cs8 cs, cs' ~ | %43
    cs8 b as | %44
    b8 b, b' ~ | %45
    b8 as gs | %46
    as16 fs cs fs as fs | %47
    b16 fs b fs b fs | %48
    cs'16 fs, cs' fs, cs' fs, | %49
    ds'16 fs, ds' fs, ds' fs, | %50
    cs'16 fs, cs' fs, cs' fs, | %51
    b16 as gs as b gs | %52
    as16 gs fs gs as fs | %53
    gs16 as gs fs es ds | %54
    cs4 cs'8 | %55
    ds,4 cs'8 | %56
    es,4 cs'8 | %57
    fs,4 cs'8 | %58
    es,4 cs'8 | %59
  \barNumberCheck #60
    ds,4 bs'8 | %60
    cs,4 cs'8 | %61
    fs,8 es ds | %62
    gs8 fs' ds | %63
    gs,8 fs' ds | %64
    gs,8 es' cs | %65
    gs8 es' cs | %66
    gs8 ds' bs | %67
    gs8 ds' bs | %68
    gs8 es' cs | %69
    gs8 es' cs | %70
    gs8 e' cs | %71
    gs8 e' cs | %72
    fs,8 ds' bs | %73
    gs8 ds' bs | %74
    es,8 es' cs | %75
    gs8 es ds | %76
    css8 es as | %77
    css8 es gs | %78
    fs8 ds as | %79
  \barNumberCheck #80
    fs8 ds cs | %80
    bs8 ds gs | %81
    bs8 ds fs | %82
    e8 cs a | %83
    fs8 ds' bs | %84
    e,8 cs' a | %85
    fs8 ds bs | %86
  \voiceTwo
    gs8 fs' ds | %87
    gs,8 fs' ds | %88
    gs,8 es' cs | %89
  \barNumberCheck #90
    gs8 es' cs | %90
    gs8 ds' bs | %91
    gs8 ds' bs | %92
    gs8 es' cs | %93
    gs8 es' cs | %94
    gs8 e' cs | %95
    gs8 e' cs | %96
    gs16 bs ds s8 s16 | %97
  \staffOne \voiceTwo
    cs'16 e fss
  \staffTwo \oneVoice
    s8. | %98
    gs,,8 r r | %99
  \barNumberCheck #100
    fs''16 ds bs gs bs ds | %100
    gs,8 r r | %101
    as16 fss e cs e fss | %102
    \voiceOne
    r8 <cs es gs> <ds fs gs> | %103
    <es gs>4.| %104
  \bar "|."
}

vFour = \relative g, {
  \barNumberCheck #1
    s4.*102
  \barNumberCheck #103
  \voiceTwo
    gs4. | %103
    cs4. | %104
}

preludeThree = \score {
  \new PianoStaff \with {} <<
    \new Staff = "Up" <<
      \new Voice = "vOne" \vOne
      \new Voice = "vTwo" \vTwo
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice = "vThree"  \vThree
      \new Voice = "vFour"   \vFour
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.three
    }
  }
}
%\preludeThree
