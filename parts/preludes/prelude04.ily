\version "2.20.0"
\language "english"

global = {
  \key cs \minor
  \time 6/4
  \set Staff.connectArpeggios    = ##t
  \set Score.tempoHideNote       = ##t
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

%soparno
vOne = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    gs8 fs e ds e cs <cs'>4.\arpeggio b8 a4 | %1
    \shape #'((0.5 . -2) (0.5 . -2) (0.25 . -2) (0.25 . -2)) Slur
    \appoggiatura a8 gs2.\prall ~ gs2 fs4 | %2
    ds'8 cs bs as bs gs <gs'>4.\arpeggio fs8 e4 | %3
    \appoggiatura e8 ds2. ~ ds2 gs4 | %4
    \shape #'((0.75 . -1) (0.75 . -1) (0.25 . -1) (0 . -1.5)) Slur
    \appoggiatura ds8 cs bs cs e a4 ~ a8 gs fs e ds cs | %5
    \shape #'((0 . 0.25) (0 . 0.25) (0 . 0) (0 . 0)) Slur
    \appoggiatura cs b a b ds gs4 ~ gs8 fs e ds cs b | %6
    \shape #'((0.75 . -1.5) (0.75 . -1.5) (0.25 . -1.5) (0.25 . -1.5)) Slur
    \appoggiatura b a gs a cs fs4 ~ fs8 e ds cs b a | %7
    gs2.\prall ~ gs4. fs8 a4\mordent ~ | %8
    \oneVoice a8 gs fs e fs ds ds' cs bs as bs gs | %9
  \barNumberCheck #10
    a' gs fs e fs ds \voiceOne e2. ~ | %10
    e4. ds8 cs4 cs4. b8 as4 ~ | %11
    as8 gs fss es fss ds <ds'>2.\arpeggio ~ | %12
    ds8 bs cs ds e ds \appoggiatura cs b4. cs8 as4\turn | %13
    \oneVoice <b, ds gs>2.\arpeggio ~ <b ds gs>2 b'4\mordent ~ | %14
    b8 gs as cs e4 ~ e8 ds e gs fs4 | %15
  \voiceOne
    %avoid collision with stem
    \shape #'((0 . 0.5)(0 . 0.75)(0 . 0.75)(0 . 0.5)) Tie
    ds2. ~ ds2 cs4 ~ | %16 %end 16
    cs8 as bs ds fs gs \oneVoice a gs fs e fs ds | %17
  \voiceOne
    \shape #'((0 . 0.5)(0 . 0.75)(0 . 0.75)(0 . 0.5)) Tie
    e2. ~ e2. ~ | %18 %end 18
  \oneVoice
  \allowPageTurn
    e8 d es gs b4 ~ 8 d, cs b a gs | %19
  \barNumberCheck #20
    a2.\mordent ~ a8 gs a cs fs4 ~ | %20
    fs8 e ds cs b a \appoggiatura a gs fs gs b e4 ~ | %21
    e8 ds cs b a gs \appoggiatura gs fs e fs a ds4 ~ | %22
    ds8 cs bs as gs fs \appoggiatura fs e ds e gs cs4 ~ | %23
    cs8  b a gs a fs fs' e d cs d a | %24
  \voiceOne
    s2. bs'2 gs4 | %25
    gs2.  ~ gs8 fs e ds e cs | %26
    fs2.  ~ fs8 e ds cs ds gs, | %27
    e'2. ~ e8 ds e fs gs a | %28
    bs,4.\downprall cs8 ds4 <fs,>2.\arpeggio ~ | %29
  \barNumberCheck #30
    fs8 e ds cs ds bs a' gs fs e fs ds | %30
  \oneVoice
    bs'8 a gs fs gs ds ds' cs bs as bs gs | %31
    gs'4 fs8 e ds cs bs cs ds gs a,4 ~ | %32
    a8 gs a fs a'4 ~ a gs8 fs e ds | %33
  \voiceOne
    e2 ~ e8 a
      <e>4.\arpeggio fs8 ds4\turn | %34
    cs2. ~ cs4. e8 ds4 | %35
    e2.  ~ e4. bs8
      \shape #'( ((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ((0.375 . -0.375) (0.25 . -0.5)(-0.625 . -0.5)(-0.75 . -0.375)) ) Tie
      cs4 ~ | %36
      \once \override NoteColumn.force-hshift = #0.875
      cs8 ds e ds cs b s2 <bs gs'>4 | %end 37
    cs2. ~ cs4. ds8 bs4 | %end 38
  \barNumberCheck #39
  \voiceOne
      \shape #'((0 . 1)(0 . 1.25)(0 . 1.25)(0 . 0.75)) Tie
      cs2 ~ cs8 bs cs2. | %end 39
  \bar "|."
}

%alto
vTwo = \relative c'{
  \global
  \barNumberCheck #1
    \voiceTwo
    s2. <e gs>2\arpeggio fs4 | %1
    e2.~ e2 fs4 ~ | %2
    fs2. <gs ds'>2\arpeggio <gs cs>4 | %3
    <gs bs>2. ~ <gs bs>2 <gs bs>4 | %4
    a r r a2. | %5
    gs4 r r gs2. | %6
    fs4 r r fs2. | %7
    e2. s | %8
    s1. | %9
  \barNumberCheck #10
    s2. r8 ds' cs b cs as | %10
    \appoggiatura gs fss4. gs8 as4\mordent ds,4. es8 fss4\mordent ~ | %11
    fss8 s s s4. <fss as>2\arpeggio gs4 ~ | %12
    gs2. ~ gs2 fss4 | %13
    s1. | %14
    s1. | %15
    r8 cs'8 b as b \tieDashed fs ~ \tieSolid <fs ~ ds>2. | %16  %chord to tenor?
    fs4 s2 s2. | %17
    r8 ds'8 cs bs cs gs ~ <gs e>2. |  %FIX tie (move up) %chord to tenor?
  \barNumberCheck #19
    s1.*6 | %19-24
  \barNumberCheck #25
    a'8 gs fs e fs ds ~ ds2. ~ | %25
    ds4. e8 bs4 cs2. ~ | %26
    cs4. bs8 ds4 gs,2. ~ | %27
    gs4. cs8 fs, gs a2. | %28
    gs2. <ds bs>2.\arpeggio | %29
  \barNumberCheck #30
    s1.*4 | %30-33
    r8 ds'8 cs bs cs4 <cs>2\arpeggio bs4 | %34
  \barNumberCheck #35
    r8 b as gs fss gs
      \shape #'( (-0.375 . 0.75)(-0.5 . 0.5)(-0.625 . 0)(-0.625 . 0) ) Slur
      \appoggiatura { gs } fss2. ~ | %35
    fss8 gs as( gs) b( as) as2. ~ | %36
    as8 s4. s4 as8 gs fss es fs ds | %37
    e b' a gs fs a e4. fs8 \once\override NoteColumn.force-hshift = #0.4 ds4 | %38 %adjust notehead to overlap
    cs2 ds4 es2. | %39
  \bar "|."
}
mezzo = \relative c'' {
  \voiceOne
    s4*6*15
    s2
      %smaller stem avoid collision with Tie
      \once \override Stem.length = #(lambda (grob) (- (ly:stem::calc-length grob) 1))
        b4 ~ b2 s4 | % 16
    s4*6 | % 17
    s2
      \shape #'((0 . -0.5)(0 . -0.5)(-0.5 . -0.5)(-0.75 . -0.5)) Tie
      \once \override Stem.length = #(lambda (grob) (- (ly:stem::calc-length grob) 1.75))
        cs4 ~ cs2. | % 18
   s4*6*18
      \shape #'((0 . 1.5)(0 . 2)(0.5 . 2)(0.5 . 1.5)) Tie
      \once\override Dots.extra-offset = #'(-0.25 . 0)
      fss2. ~ fss2 s4 %FIX tie %FIX dot placement
  \voiceThree
   s2. s2 \once\override NoteColumn.force-hshift = #0.4 ds,8[ fs] ~ |
   fs8 gs a fs ~ fs4 gs2.
}
%tenor
vThree = \relative c' {
  \global
  \voiceOne
  \barNumberCheck #1
    s1. | %1
    gs8 fs e ds e cs \appoggiatura { e gs } cs4. b8 a4 | %2
    gs2. ~ gs2 cs4 | %3
    ds8 cs bs as bs gs \appoggiatura { bs ds } fs4. e8 ds4 | %4
    e2.  ds ~ | %5
    ds2. cs ~ | %6
    cs2. b  ~ | %7
    b8 a gs fs gs e \appoggiatura { gs b } e4. ds8 cs4 | %8
    bs1. ~ | %9
  \barNumberCheck #10
    bs4. cs8 ds4 cs2. | %10
    s1.*2 | %11-12
    s2. ds,2. ~ | %13
    ds8 cs b as b gs b ds gs e fs ds | %14
    e2. fs4.\mordent gs8 as4 | %15
    s1. | %16
    s2 ds,4 ~ ds2. | %17
    s1. | %18
    r4 r8 cs' d4 ~ d gs, cs ~ | %19
  \barNumberCheck #20
    cs8 b a gs a fs fs'4. e8 ds cs | %20
    b4. cs8 ds4 ~ ds4. gs,8 cs bs | %21
    cs2.\mordent ~ cs4. bs8 cs as | %22
    bs4.\mordent cs8 ds4 cs2. | %23
    a4. b8 cs4 d2.\mordent | %24
    bs2. fs'4 r r | %25
    s1.*8 | %26-33
  \barNumberCheck #34
    s2. gs,2. ~ | %34
    gs8 gs fss gs as ds, e2. ~ | %35
    e8 ds cs b cs e fss2. | %36
    s1. | %37
    s2. s2 gs,8 gs' ~ | %38
    gs4 fs a gs2. | %39
  \bar "|."
}
%bass
vFour = \relative c {
  \global
  \voiceTwo
  \barNumberCheck #1
  \shape  #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie
    cs1. ~ | %1
    cs1. | %2
    bs2. ~ bs2 cs4 | %3
    gs'1. ~ | %4
    gs2. fs ~ | %5
    fs2. e  ~ | %6
    e2. ds | %7
    e1. | %8
    ds2. gs4. fs8 gs4 | %9
  \barNumberCheck #10
    cs,2. ~ cs4. ds8 e4 | %10
  \oneVoice
    as,8 ds cs b cs as fss b as gs as fss | %11
    cs2. ~ cs8 cs' b as b gs | %12
    e'4.\mordent ds8 cs4
  \voiceTwo
      \mergeDifferentlyDottedOn ds2 ds,4 | %13
    gs2. ~ gs 2. | %14
    cs8 ds cs b cs as ~ as2. | %15
    \once\tieUp b'2.^\mordent ~ b8 b a gs a fs | %16
    ds8 e ds cs ds bs gs4. as8 bs4 | %17
    cs2. ~ cs8 ds e fs gs a \allowPageTurn | %18
    b2 ~ b8 b es,2. | %19
  \barNumberCheck #20
    fs1. | %20
    gs4. a8 b4 e,2. ~ | %21
    e4. ds8 cs4 ds2. | %22
    gs4. as8 bs4 cs4. b8 a gs | %23
    fs2. ~ fs4. e8 fs4 | %24
    ds4. fs8 a4 ~ a8 gs fs e fs ds | %25
  \oneVoice
    e8 ds cs b cs a a'2.\mordent ~ | %26
    a8 gs fs e fs ds bs'2.\mordent | %27
    cs8 b a gs a fs fs'2. ~ | %28
    fs8 e ds cs bs as gs fs e ds cs b | %29
  \barNumberCheck #30
    a4. b8 gs4 fs4. gs8 e4 | %30
    ds4. e8 fs4 bs,4. ds8 fs4 | %31
    e8 e' fs gs a fs ds e fs ds bs cs | %32
    ds8 bs gs as bs cs ds e fs gs as bs | %33
    cs8 b a gs a fs
  \voiceTwo
      gs2 gs,4 | %34
  \barNumberCheck #35
    as2. ~ as4. b8 cs4 | %35
    fss,2. ~ fss4. gs8 as4 | %36
  \oneVoice
    ds,2 r4 r2. | %37
    r8 ds'' cs b a fs
  \voiceTwo
      gs ds e cs gs4 | %38
    cs2. ~ cs | %39
  \bar "|."
}

preludeFour = \score {
  \new PianoStaff \with { \consists "Span_arpeggio_engraver"  } <<
    \new Staff ="Up" \with { \consists "Span_arpeggio_engraver" } <<
      \new Voice = "vOne" \vOne %soprano
      \new Voice = "vTwo" \vTwo %alto
      \new Voice = "mezzo" \mezzo
    >>
    \new Staff = "Down" \with { \consists "Span_arpeggio_engraver" \clef bass } <<
        \new Voice = "vThree" \vThree %tenor
        \new Voice = "vFour"  \vFour %bass
      >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.four
    }
    \context {
      \PianoStaff
                \remove "Dot_column_engraver"

      %\override StaffGrouper.staff-staff-spacing = #'((basic-distance . 0)(minimum-distance . 0)(padding . 0)(stretchability . 0))
    }
  }
}
%\preludeFour
