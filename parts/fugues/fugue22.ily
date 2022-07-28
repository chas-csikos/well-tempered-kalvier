\version "2.20.0"
\language "english"

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"


% \include "include/tweaks.ly"
% \include "include/B4-condensed-header.ly"
% \include "include/wtk-header-condensed.ly"
%
%
%     \header{
%       title       = "FUGA 22 â 5"
%       titleRunner = "Fugue 22"
%       key         = "Bf Minor"
%       opus        = "BWV 867"
%     }
%     \paper {
%       page-count       = #2
%       systems-per-page = #7
%     }

global = {
  \key bf \minor
  \time 2/2
}

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
    bf2 f | % m. 1
    r4 gf' f ef | % m. 2
    df c df ef | % m. 3
    f4 e8 f g2~ | % m. 4
    g4 af8 g f2~ | % m. 5
    f4 ef8 df ef4 f | % m. 6
    gf2. f8 ef | % m. 7
    f4 g af2~ | % m. 8
    af4 g8 f g4 a | % m. 9
  \barNumberCheck #10
    bf2. a8 g | % m. 10
    a4 bf c2~ | % m. 11
    c4 bf8 a bf4 af | % m. 12
    gf4 f ef2~ | % m. 13
    ef4 f8 gf f4 ef | % m. 14
    \once\shiftOn df1 | % m. 15
    \once\shiftOn c1 | % m. 16
    \once\shiftOn bf1~ | % m. 17
    \once \shiftOff bf2. ef4 | % m. 18
    \once\shiftOn af,1~ | % m. 19
  \shiftOff
  \barNumberCheck #20
    af2 df | % m. 20
    c2 f ~ | % m. 21
    f2 ef4 df | % m. 22
    c2 df~ | % m. 23
    df2 c | % m. 24
    df2 af | % m. 25
    c'4\rest cf bf af | % m. 26
    gf4 f gf af | % m. 27
    bf4 a8 \once\override NoteColumn.X-offset = #1.25 bf c2~ | % m. 28
    c4 bf2 a4 | % m. 29
  \barNumberCheck #30
  \voiceThree
    bf1~ | % m. 30
    bf2 af | % m. 31
    gf1 | % m. 32
    f2 ff | % m. 33
    ef1~ | % m. 34
    ef2 af~ | % m. 35
    af2 g | % m. 36
    af2 r | % m. 37
  \voiceOne
  \teeny
  \override MultiMeasureRest.staff-position = #8
    R1 | % m. 38
    R1 | % m. 39
    R1 | % m. 40
    R1 | % m. 41
    R1 | % m. 42
    R1 | % m. 43
    R1 | % m. 44
    R1 | % m. 45
    R1 | % m. 46
    R1 | % m. 47
    R1 | % m. 48
    R1 | % m. 49
  \revert MultiMeasureRest.staff-position
  \normalsize
  \barNumberCheck #50
    f2 \once\shiftOff bf, | % m. 50
    r4 cf' bf af | % m. 51
    gf2 ff4 ef | % m. 52
    d2 ef~ | % m. 53
    ef2 d | % m. 54
    ef2 r | % m. 55
  \teeny
  \override MultiMeasureRest.staff-position = #8
    R1 | % m. 56
    R1 | % m. 57
    R1 | % m. 58
    R1 | % m. 59
  \barNumberCheck #60
    R1 | % m. 60
    R1 | % m. 61
    \once \override MultiMeasureRest.staff-position = #10
    R1 | % m. 62
  \revert MultiMeasureRest.staff-position
    R1 | % m. 63
    R1 | % m. 64
    R1 | % m. 65
    R1 | % m. 66
  \normalsize
    r2 bf | % m. 67
    \once \override NoteColumn.force-hshift = #0 f2 r4 gf' | % m. 68
    f4 ef df c | % m. 69
  \barNumberCheck #70
    df4 ef f ef | % m. 70
    df4 c bf2~ | % m. 71
    \once \override NoteColumn.force-hshift = #0 bf4 c df2~ | % m. 72
    df4 df c bf | % m. 73
    bf2 a | % m. 74
    bf1 \fermata  | % m. 75
  \bar "|."
}

alto = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    \once \teeny R1 | % m. 1
    R1 | % m. 2
    f2 bf, | % m. 3
    r4 df' c bf | % m. 4
    af4 g af bf | % m. 5
    c2. bf8 a | % m. 6
    bf4 c df2~ | % m. 7
    df4 c8 bf c4 d | % m. 8
    ef2. df8 c | % m. 9
  \barNumberCheck #10
    df4 ef f2~ | % m. 10
    f4 ef8 df ef2 | % m. 11
    ef4 f8 ef df4 c | % m. 12
    bf2. a8 bf | % m. 13
    c4 a bf c~ | % m. 14
  \voiceThree
    \once\shiftOff c4 bf8 a bf2~ | % m. 15
    \once\shiftOff bf2 af~ | % m. 16
    \once\shiftOff af1 | % m. 17
    gf1~ | % m. 18
    \once\shiftOff gf1 | % m. 19
  \shiftOn
  \barNumberCheck #20
    f2 bf | % m. 20
    af2 df ~ | % m. 21
    df4 c bf2 | % m. 22
    af1~ | % m. 23
    af4 bf af gf | % m. 24
    f4 ef f gf | % m. 25
    af2 \once \shiftOff f | % m. 26
    bf2 \once \shiftOff ef, | % m. 27
    d'4\rest gf f ef | % m. 28
    df2 c | % m. 29
  \voiceTwo
  \tieDown
  \barNumberCheck #30
    \once \override NoteColumn.force-hshift = #0.5
    bf1 ~ | % m. 30
    bf1 ~ | % m. 31
    bf1 ~ | % m. 32
    bf1 ~ | % m. 33
    bf1 | % m. 34
  \voiceThree
    af4 bf cf2 | % m. 35
    bf1 | % m. 36
    af2 df, | % m. 37
    r4 f' ef df | % m. 38
    c4 af bf c | % m. 39
  \barNumberCheck #40
    df1~ | % m. 40
    df2 c | % m. 41
    df4 cf8 bf cf2~ | % m. 42
    cf4 bf8 af bf4 c | % m. 43
    df2. c8 bf | % m. 44
    c4 d ef2~ | % m. 45
    ef4 df8 c df ef df ef | % m. 46
    f2 ef~ | % m. 47
    ef4 ef df c | % m. 48
    bf8 c df bf gf2 \trill | % m. 49
  \barNumberCheck #50
    \once \shiftOff f2 \once \stemDown  \once\shiftOff bf | % m. 50
    ef,2 d'4\rest f | % m. 51
    ef4 df cf2 | % m. 52
    bf1~ | % m. 53
    bf1 | % m. 54
    bf2 ef, | % m. 55
    r4 f' ef df | % m. 56
    c4 bf c df | % m. 57
    ef4 gf f ef | % m. 58
    d4 f ef df | % m. 59
  \barNumberCheck #60
    c2 df~ | % m. 60
    df4 c2 bf4 | % m. 61
    a4 gf' f ef | % m. 62
    df2 c | % m. 63
    bf1 | % m. 64
    af1 | % m. 65
    gf1 | % m. 66
    f1 | % m. 67
    \once \stemDown \once \shiftOff f2 bf, | % m. 68
    g'4\rest c bf \once \shiftOff a | % m. 69
  \barNumberCheck #70
    bf4 a bf c | % m. 70
    bf4 a s2 | % m. 71
    af4 gf f2 | % m. 72
     \once \override NoteColumn.force-hshift = #0.2 g2 ~ g | % m. 73
    \stemUp f4 gf f ef | % m. 74
    d1 \fermata | % m. 75
  \bar "|."
}

mezzo = \relative c' {
  \global
  \barNumberCheck #1
    s1 | % m. 1
    s1 | % m. 2
    s1 | % m. 3
    s1 | % m. 4
    s1 | % m. 5
    s1 | % m. 6
    s1 | % m. 7
    s1 | % m. 8
    s1 | % m. 9
  \voiceOne
  \barNumberCheck #10
    bf2 f | % m. 10
    r4 gf' f ef | % m. 11
    df4 c bf c8 df | % m. 12
    ef4 f gf2 | % m. 13
    f4 ef df c | % m. 14
  \once \showStaffSwitch
  \staffOne \voiceTwo
    df 4 ef f gf | % m. 15
    c,2 f~ | % m. 16
    f4 d ef f~ | % m. 17
    f4 ef8 d ef2~ | % m. 18
    ef1 | % m. 19
  \barNumberCheck #20
    df2 f~ | % m. 20
    f1 | % m. 21
    bf4 af gf f | % m. 22
    ef2 f | % m. 23
    ef1 | % m. 24
    df4 c df ef | % m. 25
    f2 d | % m. 26
    ef2. f4 | % m. 27
    gf4 ef a g8 f | % m. 28
    bf4 f' ef2 | % m. 29
    d2 ef | % m. 30
  %\voiceFour
    f1~ | % m. 31
    \once \override NoteColumn.force-hshift = #1.1
    f4 ef8 d ef2 ~ | % m. 32
    \once \override NoteColumn.force-hshift = #1.1
    ef2 df2 ~ | % m. 33
    \once \override NoteColumn.force-hshift = #1
    df4 ef8 ff ef4 df | % m. 34
    cf2 ff ~ | % m. 35
    ff8 ef df4~ df8 ff ef df | % m. 36
    c2 r | % m. 37
    R1 | % m. 38
  \teeny
  \override MultiMeasureRest.staff-position = #-2
  R1 | % m. 39
    R1 | % m. 40
    R1 | % m. 41
  \override MultiMeasureRest.staff-position = #-4
    \once \override MultiMeasureRest.force-hshift = #-0.5
    R1 | % m. 42
    \once \override MultiMeasureRest.force-hshift = #1
    R1 | % m. 43
    \once \override MultiMeasureRest.staff-position = #0
    R1 | % m. 44
    \once \override MultiMeasureRest.staff-position = #-2
  R1 | % m. 45
  \revert MultiMeasureRest.staff-position
  \normalsize
    r4 f,2 bf,4 | % m. 46
    r4 df' c bf | % m. 47
    a8 bf c a f4 af | % m. 48
    gf4 f ef2~ | % m. 49
  \barNumberCheck #50
    \once \shiftOn ef4 d8 c \once\override NoteColumn.force-hshift = #0.5 d2 | % m. 50
    ef2 d | % m. 51
    ef4 bf' af gf | % m. 52
    f2 gf | % m. 53
    f1 | % m. 54
    ef2 bf | % m. 55
    r4 df' c bf | % m. 56
    a4 g a bf | % m. 57
    c4 ef df cf | % m. 58
    bf4 d c bf | % m. 59
  \barNumberCheck #60
    a2 bf | % m. 60
    ef,2 e | % m. 61
    f4 a bf c~ | % m. 62
    c4 bf2 a4 | % m. 63
    bf4 af gf f | % m. 64
    ef4 d8 ef f2~ | % m. 65
    f4 f ef df | % m. 66
    c4 ef2 df4 | % m. 67
    \once \override NoteColumn.force-hshift = #0.5 c2 bf | % m. 68
    \staffTwo \voiceThree
    \once \stemDown \once \override NoteColumn.force-hshift = #0 f2
    \once \showStaffSwitch \staffOne \voiceTwo
       r4 gf' | % m. 69
  \barNumberCheck #70
    \break
    f4 ef df c | % m. 70
    df8 ef f4 ~ f gf4 | % m. 71
    f4 ef df2 | % m. 72
    \once \override NoteColumn.force-hshift = #0.2 g2 c,~ | % m. 73
    c1 | % m. 74
    bf1 \bar "|." | % m. 75 \fermata

}

tenor = \relative c {
  \global
  \barNumberCheck #1
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
    R1 | % m. 5
    R1 | % m. 6
    R1 | % m. 7
    R1 | % m. 8
    R1 | % m. 9
    \override MultiMeasureRest.staff-position = #-2
    \teeny
    R1 | % m. 10
    R1 | % m. 11
    \normalsize
    \revert MultiMeasureRest.staff-position
  \voiceTwo
    f2 bf, | % m. 12
    f'4\rest df' c bf | % m. 13
    a4 f g a | % m. 14
  \voiceOne
  \barNumberCheck #15
    bf4 c, df ef | % m. 15
    f4 gf af2 | % m. 16
    bf1~ | % m. 17
    bf1 | % m. 18
    c4 c, df ef | % m. 19
    f4 ef f gf | % m. 20
    af4 bf8 c bf4 af | % m. 21
    gf4 af bf c8 df | % m. 22
    af1~ | % m. 23
    af1~ | % m. 24
    af2 r | % m. 25
    R1 | % m. 26
    R1 | % m. 27
    R1 | % m. 28
    bf2 f | % m. 29
  \barNumberCheck #30
    r4 gf' f ef | % m. 30
    d4 bf c d | % m. 31
    ef4 f, gf af | % m. 32
    bf4 cf df2 | % m. 33
    ef4 g, af bf | % m. 34
    cf4 bf af gf | % m. 35
    ff2 ef~ | % m. 36
    ef4 af gf f | % m. 37
  \barNumberCheck #38
    ef4 df bf'2 | % m. 38
    af4
  \once \showStaffSwitch
  \staffOne \voiceTwo
      gf' f ef | % m. 39
    df4 gf2 f4 | % m. 40
    ef1 | % m. 41
    \staffTwo \voiceOne af,2 \staffOne \voiceTwo af'4 gf8 f | % m. 42
    gf4 df2 ef4 | % m. 43
    \staffTwo \voiceOne af,4 \staffOne \voiceTwo af'8 gf af4 ef~ | % m. 44
    ef4 f
  \once \showStaffSwitch
  \staffTwo \voiceOne
    bf,2~ | % m. 45
    bf4 \tiny e\rest r2 | % m. 46
  \teeny
  \override MultiMeasureRest.staff-position = #6
    R1 | % m. 47
    R1 | % m. 48
  \once \override MultiMeasureRest.staff-position = #8
    R1 | % m. 49
    R1 | % m. 50
    R1 | % m. 51
  \revert MultiMeasureRest.staff-position
    R1 | % m. 52
  \normalsize
  \barNumberCheck #53
    f,2 bf, | % m. 53
    r4 cf' bf af | % m. 54
    gf4 f gf af | % m. 55
    bf4 c8 df ef2~ | % m. 56
    ef4 df c bf | % m. 57
    a2 af~ | % m. 58
    af2 gf~ | % m. 59
  \barNumberCheck #60
    gf4 f ef df | % m. 60
    bf'2. c4 | % m. 61
    df4 c df ef | % m. 62
    f1~ | % m. 63
    f2 ef4 df | % m. 64
    cf1 | % m. 65
    bf4 df c bf | % m. 66
    a2 bf | % m. 67
    a2 r | % m. 68
    f2 bf, | % m. 69
    %<< {\once\override NoteColumn.force-hshift = #0 bf, | a'4\rest} \\ {\hideNotes \once\override NoteColumn.force-hshift = #0 bf,2\glissando | a'4 |} >> | % m. 69
  \barNumberCheck #70
    r4 c' bf a | % m. 70
    bf4 c df ef | % m. 71
    bf1 | % m. 72
    R1 | % m.73
    c2 f,~ | % m. 74
    f1 | % m. 75 \fermata
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
    R1 | % m. 5
    R1 | % m. 6
    R1 | % m. 7
    R1 | % m. 8
    R1 | % m. 9
  \voiceTwo
  \barNumberCheck #10
    \teeny
    R1 | % m. 10
    R1 | % m. 11
    \once \override MultiMeasureRest.staff-position = #-12
    R1 | % m. 12
    R1 | % m. 13
    R1 | % m. 14
    \normalsize
    bf2 f | % m. 15
    r4 gf' f ef | % m. 16
    d bf c d | % m. 17
    ef4 f ef df | % m. 18
    c4 af bf c | % m. 19
  \barNumberCheck #20
    df2 bf | % m. 20
    f'2 df | % m. 21
    ef4 f gf2~ | % m. 22
    gf4 f ef df | % m. 23
    af'2 af, | % m. 24
    df2 r | % m. 25
    R1 | % m. 26
    R1 | % m. 27
    R1 | % m. 28
    R1 | % m. 29
  \barNumberCheck #30
    R1 | % m. 30
    R1 | % m. 31
    ef2 bf | % m. 32
    r4 cf' bf af | % m. 33
    g4 ef f g | % m. 34
    af4 gf ff ef | % m. 35
    df4 bf ef ef, | % m. 36
    af2 bf4 af | % m. 37
    gf2 gf'~ | % m. 38
    gf4 f gf af | % m. 39
  \barNumberCheck #40
    bf2 gf | % m. 40
    af4 bf af gf | % m. 41
    f2. ef8 df | % m. 42
    ef4 f gf2~ | % m. 43
    gf4 f8 ef f4 g | % m. 44
    af2. g8 f | % m. 45
    g4 a bf8 c bf c | % m. 46
    df8 c bf af gf f gf ef | % m. 47
    f2 bf, | % m. 48
    d4\rest df' c bf | % m. 49
  \barNumberCheck #50
    a4 af2 gf8 f | % m. 50
    gf4 af bf2 | % m. 51
    ef,2 af,~ | % m. 52
    af4 gf f ef | % m. 53
    bf'1 | % m. 54
    ef2. f4 | % m. 55
    gf1~ | % m. 56
    gf4 f ef df | % m. 57
    c2 f | % m. 58
    bf,2 ef2~ | % m. 59
  \barNumberCheck #60
    ef4 df c bf | % m. 60
    gf'2 g | % m. 61
    f1~ | % m. 62
    f2 f, | % m. 63
    gf1~ | % m. 64
    gf4 f ef d | % m. 65
    ef2 ef'~ | % m. 66
    ef4 df8 c df4 ef | % m. 67
    f4 ef df c | % m. 68
    \once \override NoteColumn.force-hshift = #0.5 df4 a bf2 | % m. 69
  \barNumberCheck #70
    f2 r4 gf' | % m. 70
    f4 ef df c | % m. 71
    d4 ef f8 gf e f | % m. 72
    e,1 | % m. 73
    f1 | % m. 74
    bf1 \fermata | % m. 75
  \bar "|."
}

fugueTwentytwo = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with { } <<
      \new Voice \soprano
      \new Voice \alto

    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \mezzo
      \new Voice \tenor
      \new Voice \bass
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f fugue.twentytwo
    }
  }
}
%\fugueTwentytwo
