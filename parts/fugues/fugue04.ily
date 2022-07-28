\version "2.20.0"
\language "english"

global = {
  \key cs \minor
  \time 2/2
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

%soparno
vOne = \relative c'' {
  %\override NoteHead.color = #red
  \global
  \override Score.StaffSymbol.layer = #4
  \oneVoice
  \barNumberCheck #1
    R1*6 | %1-6
    \teeny
      R1*5 | %7-11
  \voiceOne
  \barNumberCheck #12
      \override MultiMeasureRest.staff-position = #2
        R1*2 | %12-13
      \revert MultiMeasureRest.staff-position
    \normalsize
    \once\small r2 cs | %14
  \barNumberCheck #15
    bs2  e | %15
    ds1 | %16
    \once \shiftOn \once\override NoteColumn.force-hshift = #1.4 cs2. ds4 | %17
    e4 ds cs2 | %18
    b2 cs | %19
  \barNumberCheck #20
    ds2 r | %20
    r4 e ds cs | %21
    b4 ds gs2~ | %22
    gs4 fs gs a | %23
    b1~ | %24
  \barNumberCheck #25
    b4 a gs fs | %25
    gs8 fs e ds cs2~ | %26
    cs2 b~ | %27
    b4 cs b a | %28
    gs2 as4 b | %2
  \barNumberCheck #30
    cs2 b~ | %30
    b2 as | %31
    b1~ | %32
    b4 cs ds e~ | %33
    e2 ds | %34
  \barNumberCheck #35
    e4 ds e fs | %35
    gs8 fs gs a gs fs e gs | %36
    fs8 e fs gs fs e ds fs | %37
    e8 ds e fs e ds cs e | %38
    ds cs ds e ds cs b ds | %39
  \barNumberCheck #40
    cs8 b cs ds cs b as cs | %40
    b2 ~ b8 cs ds b | %41
    cs2. e4 | %42
    ds2. fs4 | %43
    e1~ | %44
  \barNumberCheck #45
    e4 ds2 cs4~ | %45
    cs4 bs8 as bs4 ds | %46
    gs8 fs gs a gs fs e gs | %47
    fs e fs gs fs e ds fs | %48
    es2 a | %49
  \barNumberCheck #50
    gs1~ | %50
    gs4 fs8 e d2 | %51
    r4 cs fs fs | %52
    fs4 e8 d e2~ | %53
    e4 d8 cs d2~ | %54
  \barNumberCheck #55
    d2 cs | %55
    fs2 e~ | %56
    e4. fs8 e d cs e | %57
    d8 cs d e d cs b d | %58
    cs1 | %59
  \barNumberCheck #60
    bs2 e | %60
    ds1~ | %61
    ds4 gs, cs cs | %62
    cs4 b8 a b2~ | %63
    b2 a | %64
  \barNumberCheck #65
    gs2 r | %65
    ds'1 | %66
    css2 fs | %67
    es2 e | %68
    ds8 cs ds e ds cs b ds | %69
  \barNumberCheck #70
    cs8 b cs ds cs e ds cs | %70
    bs2 b | %71
    as2 a | %72
    gs2 r | %73
    R1 | %74
  \barNumberCheck #75
    R1 | %75
    cs1 | %76
    bs2 e | %77
    ds1~ | %78
    ds2 cs~ | %79
  \barNumberCheck #80
    cs2 bs | %80
    r4 cs8 ds e4 fs | %81
    gs8 fs gs a gs fs e gs | %82
    fs8 e fs gs fs e ds fs | %83
    e8 ds e fs e d cs e | %84
  \barNumberCheck #85
    d8 cs d e d cs b d | %85
    cs8 b cs d cs b a cs | %86
    b8 a b cs b a gs b | %87
    a2 r | %88
    cs1 | %89
  \barNumberCheck #90
    bs2 e | %90
    ds1~ | %91
    ds4
  \voiceTwo
      cs8 bs cs2~ | %92 %voices cross
    cs4 as ds ds | %93
    ds4 cs8 b cs2 | %94
  \barNumberCheck #95
    b2 b | %95
    as2 d | %96
  \voiceOne
    cs1 | %97
    \once\teeny R1 | %98
    r4 bs fs' fs | %99
  \barNumberCheck #100
    fs4 <e cs>8 <ds bs> e4 ds8 cs | %100
    ds4 bs cs2~ | %101
    cs1 | %102
    bs2 b | %103
    as2 a | %104
  \barNumberCheck #105
    gs1 | %105
    as2 bs | %106
    cs1 | %107
    bs2 e~ | %108
    e2 ds4 cs | %109
  \barNumberCheck #110
    bs2 cs~ | %110
    cs2
      \once \override NoteHead.whiteout = #3
      \once \override Accidental.whiteout = #3
      \once \override Staff.NoteHead.layer = #3
      \once \override Staff.Accidental.layer = #3
      \once \override Staff.Stem.layer = #4
      bs | %111
    cs1~ | %112
    cs1~ | %113
    cs1~ | %114
  \barNumberCheck #115
    cs1 \fermata | %115
  \bar "|."
}

vTwo = \relative c'' {
  \global
  \voiceThree
  %\override NoteHead.color = #green
  \barNumberCheck #1
    s1*6
    \teeny
      R1*5
    \normalsize
  \barNumberCheck #12
    gs2\rest gs2
    es2 a |
    gs2 fs ~ | %Collison
  \barNumberCheck #15
    fs2 \once \tieDown cs' ~ |
    cs2 \once \tieDown b ~ |
    \once \shiftOff b2 a | % 17
    gs2 \once \tieDown a ~ | %18
    a4 gs fs e | %19
  \barNumberCheck #20
    ds2 gs~ | %20
  \voiceTwo % not what bach wrote...
    gs2 fss | %21
    gs2 b, | %22
    cs2. cs4 | %23
    ds4 cs ds es | %24
  \barNumberCheck #25
    fs2 a | %25
    gs2 r8 b a gs | %26
    fs4 a gs fs | %27
    es2 fs~ | %28
    fs4 e2.~ | %29
  \barNumberCheck #30
    e2 ds | %30
  \voiceThree
    \once \tieDown e1~ | %31
    e4 ds e fs8 gs | %32
    fs2 b~ | %33
    b4 cs b a | %34
  \barNumberCheck #35
    gs2 gs\rest | %35
    \override MultiMeasureRest.staff-position = #-2
      R1*2 |
      \teeny
        R1*2 | %36-39
  \barNumberCheck #40
        R1*3 | %40-42
        \override MultiMeasureRest.staff-position = #0
          R1 | %43
      \normalsize
    \revert MultiMeasureRest.staff-position
  \stemDown
  \tieDown
    b2\rest cs | %44
  \barNumberCheck #45
    bs2 e | %45
    ds1~ | %46
    ds2 cs~ | %47
  \stemNeutral
  \tieNeutral
  \voiceTwo
    cs2 bs4 b~ | %48
    b8 b cs d cs b a cs | %49
  \barNumberCheck #50
    b8 a b cs b a gs b | %50
    a2~ a8 cs b a | %51
    gs2 r | %52
    R1 | %53
    r2 a | %54
  \barNumberCheck #55
    gs2 cs | %55
    b1~ | %56
    b4 e, a a | %57
    a4 gs8 fs gs2~ | %58
    gs4 cs,8 ds e4 fs | %59
  \barNumberCheck #60
    gs8 fs gs a gs fs e gs | %60
    fs8 e fs gs fs e ds fs | %61
    e8 ds e fs e ds cs e | %62
    ds8 cs ds e d cs b d | %63
    cs8 b cs d cs e ds cs | %64
  \barNumberCheck #65
    bs2 cs | %65
    ds4 ds gs8 as b4~ | %66
    b4 as ds ds | %67
    ds4 cs8 bs cs2~ | %68
    cs2 b | %69
  \barNumberCheck #70
    as2 a~ | %70
    a4 ds, gs gs~ | %71
    gs4 fs8 es fs2~ | %72
  \voiceThree
    fs2 e | %73
    ds2 cs | %74
  \barNumberCheck #75
    ds1 | %75
    R1 | %76
  \voiceFour
    \once \override NoteColumn.X-offset = #2 f4\rest gs cs cs | %77
    cs4 bs8 as bs cs ds bs | %78
    gs8 fs gs a gs fs e gs | %79
  \barNumberCheck #80
    fs e fs gs fs e ds fs | %80
    e8 gs a b cs ds bs cs | %81
    ds4 r r2 | %82
    R1*2 | %83-84
  \barNumberCheck #85
    r4 fs, b b | %85
    b4 a8 gs a2 | %86
    gs1~ | %87
    gs8 gs fs es fs2 | %88
    gs2~ gs8 gs fs e | %89
  \barNumberCheck #90
    ds8 a' gs fs e gs cs b | %90
    a8 gs a fs gs2~ | %91
    gs4\voiceOne cs gs' gs | %92 %voice cross
    \revert Glissando.style
    gs fs8 e fs2 | %93
    e1 | %94
  \barNumberCheck #95
    ds2 g | %95
    fs2 fs, | %96
  \voiceThree
    es2 a | %97
    gs4 gs cs cs | %98
  \stemDown
    cs4 bs8 as bs cs \once\tieDown ds4 ~ | %99
  \barNumberCheck #100
  \stemUp
    ds s8 s cs2 | %100
    fs,2 gs~ | %101
    \once\override NoteColumn.force-hshift = #0.6 gs2 fs~ | %102
    %fs4 es8 fs gs4 gs | %103
    %gs4 fs8 e fs4 fs | %104
    fs4 b\rest \once\small \once\override NoteColumn.X-offset = #1 c,2\rest | %103
    b4\rest cs fs fs | %104
  \barNumberCheck #105
    \once\override NoteColumn.force-hshift = #1.4
    fs4 e8 ds e2~ | %105
    e4 fs8 gs a4 gs~ | %106
    gs4 e a a | %107
    a4 gs8 fs gs4 as8 bs | %108
    cs2 as | %109
  \barNumberCheck #110
    gs2 gs~ | %110
    gs1~ | %111
    \once\override Stem.length = #4.5 gs2 fs | %112
    es2 \once\override Stem.length = #5 a | %113
    gs1~ | %114
  \barNumberCheck #115
    gs1 \fermata | %115
  \bar "|."
}

vThree = \relative c' {
  \global
  \voiceTwo
  %\override NoteHead.color = #blue
  \barNumberCheck #1
    s1*6 | % 1-6
  \barNumberCheck #7
    r2 cs | %7
    bs2 e | %8
    ds1 | %9
  \barNumberCheck #10
    cs2 fs~ | %10
    fs4 e ds cs | %11
    cs2 b | %12
    cs2 fs~ | %13
    fs4 e ds cs | %14
  \barNumberCheck #15
    ds2 gs | %15
    r4 a gs fs | %16
    es cs fs2 | %17
    e1~ | %18
    e2 gs | %19
  \barNumberCheck #20
    as2 r | %20
    \once \override MultiMeasureRest.staff-position = #-13
    R1 | %21
    \teeny
    \override  MultiMeasureRest.staff-position = #-14
      R1*3 | %22-24
    \revert MultiMeasureRest.staff-position
    \normalsize
  \staffTwo
  \voiceOne
  \barNumberCheck #25
    r2 cs, | %25
    bs2 e | %26
    ds1 | %27
    cs1~ | %28
    cs1 | %29
  \barNumberCheck #30
    fs,4 gs as b | %30
  \staffOne
  \voiceTwo
    cs1 | %31
    r2 e | %32
    ds2 gs | %33
    fs1 | %34
  \barNumberCheck #35
    e2 c\rest | %35
    R1*2 | %36-37
    r2 gs' | %38
    fss2 b | %39
  \barNumberCheck #40
    as1~ | %40
    as4 ds, gs2~ | %41
    gs4 fs8 e fs2~ | %42
    fs4 e8 fs gs2~ | %43
    gs1~ | %44
  \barNumberCheck #45
    gs1 | %45
    \override MultiMeasureRest.staff-position = #-8
    R1 | %46
    \override MultiMeasureRest.staff-position = #-10
    R1 | %47
    \revert MultiMeasureRest.staff-position
  \staffTwo
  \voiceThree
    R1 | %48
    r4 cs, fs fs | %49
  \barNumberCheck #50
    fs4 es8 ds es2 | %50
    fs4 fs,8 gs a4 b | %51
    cs8 b cs d cs b a cs | %52
    b8 a b cs b a gs b | %53
    a8 gs a b a b cs d | %54
  \barNumberCheck #55
    e8 d e fs e d cs e | %55
    d8 cs d e d cs b d | %56
    cs8 b cs d cs b a cs | %57
    b1 | %58
    a8 gs fs e ds cs bs cs | %59
  \barNumberCheck #60
  \voiceOne
    ds2 r | %60
  \override MultiMeasureRest.staff-position = #6
    \tiny
    R1*3 | %61
    \normalsize
    r4 cs fs fs | %64
  \barNumberCheck #65
    fs4 e8 ds e2 | %65
    fss2 gs | %66
    R1*2 | %67-68
  \revert MultiMeasureRest.staff-position
    f4\rest ds gs gs | %69
  \barNumberCheck #70
    gs4 fs8 e fs2~ | %70
    fs8 a gs fs es ds es cs | %71
    fs8 es fs gs a gs a b | %72
    cs8 bs cs \staffOne \voiceTwo ds e ds e fs | %73
    gs8 fs gs a gs fs e gs | %74
  \barNumberCheck #75
    fs8 e fs gs fs e ds fs | %75
    e ds e fs e ds cs e | %76
    ds2 r | %77
  \staffTwo \voiceOne
  \override MultiMeasureRest.staff-position = #6
    R1*2 | %78-79
  \barNumberCheck #80
    R1 | %80-81
  \once\tiny
    R1 |
  \revert MultiMeasureRest.staff-position
    a4\rest gs cs cs | %82
    cs4 bs8 as bs2 | %83
    cs1 | %84
  \barNumberCheck #85
    b2. fs'4 | %85
    es2 fs | %86
    b,2 cs~ | %87
    cs~ cs8 cs b a | %88
    gs1 | %89
  \barNumberCheck #90
  \override MultiMeasureRest.staff-position = #8
  \teeny
    R1*4 | %90-93
  \override MultiMeasureRest.staff-position = #10
    R1
  \normalsize
  \revert MultiMeasureRest.staff-position
  \barNumberCheck #95
    r4 b e e | %95
    e4 d8 cs b4 r4 | %96
  \staffOne \voiceTwo
    r4 cs fs fs | %97
    fs4 e8 ds e2 | %98
    fs2.~ fs8 gs | %99
  \barNumberCheck #100
    a4 gs8 fs gs4 fs8 e | %100
    ds2 e~ | %101
    e2 ds4 cs | %102
    %ds4 r \once\teeny r2 | %103
    %r4 cs ds cs | %104
    ds4 es8 fs gs4 gs | %103
    gs4 fs8 e ds4 cs | %104
  \barNumberCheck #105
    bs2 cs~ | %105
    cs2 ds | %106
    cs4 cs fs fs | %107
    fs4 e8 ds e4 fs8 gs | %108
    as2 ds,~ | %109
  \barNumberCheck #110
    ds2 e | %110
    ds2. e8 fs | %111
    es4 cs2.~ | %112
    cs4 cs fs fs | %113
    fs2 es4 ds | %114
  \barNumberCheck #115
    es1 | %115 %\fermata
  \bar "|."
}


vFour = \relative c' {
  \global
  \voiceOne
  \teeny
  \barNumberCheck #1
    R1*3 | %1-3
  \normalsize
    gs1 | %4
  \barNumberCheck #5
    fss2 b | %5
    as1 | %6
    gs2 a~ | %7
    a4 gs8 fs gs4 cs | %8
    fs,4 gs8 a b2~ | %9
  \barNumberCheck #10
    b4 a gs fs | %10
    gs2 fs4 e | %11
    ds2. d4 | %12
    cs1~ | %13
    cs1 %\break | %14
  \barNumberCheck #15
    R1*4 | %15-18
    r2 gs' | %19
  \barNumberCheck #20
    fss2 b | %20
    as1 | %21
    gs4 a gs fs | %22
    es2 a | %23
    gs1 | %24
  \voiceThree
  \barNumberCheck #25
    \once \tieDown
    fs1~ | %25
    fs4 gs8 fs e4 fs8 gs | %26
    a4 fs gs2 | %27
  \voiceThree
    cs,1~ | %28
    cs1~ | %29
  %-FIX TIE
  \barNumberCheck #30
    cs2 fs | %30
  \voiceOne
    e4 ds e fs | %31
    gs4 fs gs a | %32
    b1~ | %33
    b1~ | %34
  \barNumberCheck #35
    b2 cs | %35
    bs2 e | %36
    ds1 | %37
    cs1~ | %38
    cs4 b as gs~ | %39
  \barNumberCheck #40
    gs fss8 es fss2 | %40
    gs8 as gs fss gs a%{ -\markup{\teeny\sharp}%}  b gs | %41 %sharp is common in some editions but is missing in manuscript
    a8 b a gs as b cs as | %42
    b8 cs b as bs cs ds bs | %43
    cs1 | %44
  \barNumberCheck #45
    \override MultiMeasureRest.staff-position = #6
    R1*4 | %45-49
    \revert MultiMeasureRest.staff-position
    R1
  \barNumberCheck #50
    R1 | %50
    \voiceTwo
    b,2\rest fs' | %51
    es2 a | %52
    gs1 | %53
    fs1 | %54
  \barNumberCheck #55
    \voiceThree
    \teeny
    R1 | %55-59
    %\once \override MultiMeasureRest.staff-position = #4
    R1
    R1*2
    \once \override MultiMeasureRest.staff-position = #0
    R1
    \normalsize
  \barNumberCheck #60
  \voiceFour
    \once \override NoteColumn.X-offset = #2 b,4\rest gs' cs cs | %60
    cs4 bs8 as bs2 | %61
    cs2 a | %62
    fs2 gs | %63
    es2 fs | %64
  \barNumberCheck #65
    gs1 | %65
  \voiceThree
    ds1 | %66
    es4 f\rest f2\rest | %67
    R1 | %68-69
  \override MultiMeasureRest.staff-position = #-2
    R1 |
  \barNumberCheck #70
    \tiny
      R1
      \once \override MultiMeasureRest.X-offset = #-0.75 R1
      R1
      R1
      %\pageBreak
    \normalsize | %70-73
  \revert MultiMeasureRest.staff-position
  \stemNeutral
    f4\rest gs, cs cs | %74
  \barNumberCheck #75
    cs4 bs8 as8 bs2 | %75
    cs2 r | %76
  \voiceThree
  \override MultiMeasureRest.staff-position = #4
    R1*3 | %77-79
  \barNumberCheck #80
    R1 | %80
  \revert MultiMeasureRest.staff-position
    cs1 | %81
    bs2 e | %82
    ds1 | %83
  \voiceFour
    cs4 e a a | %84
  \barNumberCheck #85
    a4 gs8 fs gs2~ | %85
  \voiceThree
    gs2 fs | %86
    gs1 | %87
    a2 \once \tieDown fs2~ | %88
    fs8 fs e ds e4 cs | %89
  \barNumberCheck #90
    gs'1 | %90
    fs2 ds | %91
    e8 ds e fs e ds cs e | %92
    ds8 cs ds e ds cs bs ds | %93
    cs4 r \once\teeny r2 | %94
  \barNumberCheck #95
    \once\teeny R1 | %95
  \voiceFour
    d4\rest fs b b | %96
    b a8 gs
  \voiceThree
      a gs fs e | %97
    ds2 r4 gs | %98
    ds'4 ds ds cs8 bs | %99
  \barNumberCheck #100
    cs1 | %100
    bs2 e~ | %101
    e4 cs, fs fs | %102
    fs4 es8 ds cs2~ | %103
    cs2 ds~ | %104
  \barNumberCheck #105
    ds4 ds gs gs | %105
    gs4 fs8 e fs4 fs | %106
    fs4 e8 ds e4 ds8 cs | %107
    ds4 gs, cs cs | %108
    cs4 b8 as ds2~ | %109
  \barNumberCheck #110
    ds8 e fs4~ fs8 e ds cs | %110
    gs'1 | %111
    a2. gs8 a | %112
    b4 a gs fs | %113
    cs'4 b8 a gs4 fs | %114
  \barNumberCheck #115
    gs1 | %115 %\fermata
  \bar "|."
}

vFive = \relative c {
  \global
  \voiceTwo
  \barNumberCheck #1
    cs1 | %1
    bs2 e | %2
    ds1 | %3
    cs4 ds e2~ | %4
  \barNumberCheck #5
    e4 ds8 cs ds4 gs | %5
    cs,4 ds8 e fs2~ | %6
    fs4 e ds cs | %7
    ds2 cs~ | %8
    cs4 b a gs | %9
  \barNumberCheck #10
    a2 as | %10
    bs2 cs | %11
    gs4 a b2~ | %12
    b4 a gs fs | %13
    cs'2 a ~ | %14
  \barNumberCheck #15
    a4 gs fs e | %15
    fs2 gs | %16
    a4 gs a b | %17
    cs b cs ds | %18
    e2 cs~ | %19
  \barNumberCheck #20
    cs4 b as gs | %20
    cs2 ds | %21
    gs,2 r | %22
    R1*2 | %23-24
  \barNumberCheck #25
    R1 | %25
  \override MultiMeasureRest.staff-position = #-9
    R1*3 | %26-28
  \revert MultiMeasureRest.staff-position
    r2 b | %29
  \barNumberCheck #30
    as2 ds | %30
    cs1 | %31
    b1~ | %32
    b4 gs' fs e | %33
    b'2 b, | %34
  \barNumberCheck #35
    e2 a | %35
    gs2 cs~ | %36
    cs2 bs | %37
    \once \shiftOnn cs2 r | %38
    R1 | %39
  \barNumberCheck #40
    R1*4 | %40-43
    r4 cs,8 ds e4 fs | %44
  \barNumberCheck #45
    gs8 fs gs a gs fs e gs | %45
    fs8 e fs gs fs e ds fs | %46
    e8 ds e fs e a gs a | %47
    ds,8 cs ds e ds gs fs gs | %48
    cs,2 r | %49
  \barNumberCheck #50
    R1*5 | %50-54
  \barNumberCheck #55
    r4 e a a | %55
    a4 gs8 fs gs2 | %56
    a2 fs | %57
    b,2 e | %58
    a,1 | %59
  \barNumberCheck #60
    gs2 r | %60
    R1*4 | %61-64
  \barNumberCheck #65
    r4 gs cs cs | %65
    cs4 b8 as b as gs b | %66
    as8 gs as b as gs fs as | %67
    gs8 fs gs as gs b as gs | %68
    fss2 gs | %69
  \barNumberCheck #70
    as2 ds | %70
    gs,2 r | %71
    R1 | %72
    cs,1 | %73
  %\pageBreak
    bs2 e | %74
  \barNumberCheck #75
    ds1 | %75
    cs4 cs8 ds e4 fs | %76
    gs8 fs gs a gs fs e gs | %77
    fs8 e fs gs fs e ds fs | %78
    e4 e' a a | %79
  \barNumberCheck #80
    a4 gs8 fs gs4 gs, | %80
    cs4 b a2 | %81
    gs4 g\rest r2 | %82
    R1*2 | %83-84
  \barNumberCheck #85
  \once\override MultiMeasureRest.staff-position = #-8
    R1 | %85
    r4 cs fs fs | %86
    fs4 es8 ds es2 | %87
    fs2 r | %88
    R1 | %89
  \barNumberCheck #90
    r4 gs, cs cs | %90
    cs4 bs8 as bs cs ds bs | %91
    e,2 r4 a | %92
    ds,2 r4 gs | %93
    cs,4 e' a a | %94
  \barNumberCheck #95
    a4 g8 fs e2 | %95
    R1 | %96
    r2 cs | %97
    bs2 e | %98
    ds1 | %99
  \barNumberCheck #100
    cs4 e a a | %100
    a4 gs8 fs e ds cs b | %101
    as2 a~ | %102
    a4 gs8 fs es2 | %103
    fs1 | %104
  \barNumberCheck #105
    gs1~ | %105
    gs1~ | %106
    gs1~ | %107
    gs1 | %108
    fss1 | %109
  \barNumberCheck #110
    gs1~ | %110
    gs1 | %111
    cs1~ | %112
    cs~ | %113
    cs1~ | %114
  \barNumberCheck #115
    cs \fermata | %115
  \bar "|."
}

fugueFour = \score {
  \new PianoStaff \with {
    edition-id = fugue.four
    %\accidentalStyle piano-cautionary
    \consists "Span_arpeggio_engraver"
  } <<
    \new Staff = "Up" \with { } <<
      \new Voice = "vOne"   \vOne %soprano
      \new Voice = "vTwo"   \vTwo %mezzo-soprano
      \new Voice = "vThree" \vThree %alto
    >>
    \new Staff = "Down" \with { \clef bass }
      <<
        \new Voice = "vFour" \vFour %tenor
        \new Voice = "vFive" \vFive %bass
      >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f fugue.four
      % \override NonMusicalPaperColumn #'line-break-permission = ##t
      % \consists #(custom-line-breaks-engraver '(7 7 7 7 7 4 4  5 4 4 4 5 4 4))
    }
  }
}
%\fugueFour
