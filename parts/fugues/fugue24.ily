\version "2.20.0"
\language "english"

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

global = {
  \key b \minor
  \time 4/4
  \tempo "Largo"
}

soprano = \relative c'' {
  \global
  \barNumberCheck #1
  \voiceOne
  \teeny
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
    R1 | % m. 4
  \once\override MultiMeasureRest.staff-position = #6
    R1 | % m. 5
    R1 | % m. 6
  \override MultiMeasureRest.staff-position = #8
    R1 | % m. 7
    R1 | % m. 8
    R1 | % m. 9
    R1 | % m. 10
    R1 | % m. 11
  \revert MultiMeasureRest.staff-position
    R1 | % m. 12
  \normalsize
  \barNumberCheck #13
    r8 b a fs \once \slurDashed d'[( b]) \once \slurDashed e[( ds]) | % m. 13
    \once \slurDashed a8( gs) f'( e) \once \slurDashed  b([ as]) \once \slurDashed g'([ fs]) | % m. 14
    es8[ fs] d[ b] cs2~ | % m. 15
    cs16 cs d e fs g b, as b2~ | % m. 16
    b16 es, fs gs a b cs fs, d' e fs8~ fs e16 d | % m. 17
    cs16 d e8~ e d16 cs b cs d8~ d cs16 b | % m. 18
    a4 r8 fs'~ fs e16 d cs d e8~ | % m. 19
  \barNumberCheck #20
    e8 d16 cs b cs d8~ d cs16 b as b cs8~ | % m. 20
    cs8 b16 as b4~ b16 as b d cs4 | % m. 21
    b4 a gs \once \tieDown fs~ | % m. 22
    fs8 es \once\tieDown fs4~ \once \shiftOn fs16 gs a b cs d fs, es | % m. 23
    fs4 fs'~ fs8 e ds fs | % m. 24
    g2~ g8 fs es gs | % m. 25
    cs,8 d16 e d e fs8~ fs e16 d cs d e8~ | % m. 26
    e8 d16 cs b cs d8~ d cs16 b as b cs8~ | % m. 27
    cs8 b r b'~ b a16 g fs g a8~ | % m. 28
    a8 g16 fs e fs g8~ g fs16 e ds e fs8~ | % m. 29
  \barNumberCheck #30
    fs8 e16 ds e fs g b a8 g fs4 | % m. 30
    e4 d cs \once\tieUp\shape #'((0 . 1.5) (0 . 1.25) (0.5 . 1.25) (0.5 . 1.5)) Tie b~ | % m. 31
    b8 b16 as b4~ b16 cs d e fs g b, as | % m. 32
    d2 cs4. ds8 | % m. 33
    es4 r8 fs~ fs16 es fs a gs4 | % m. 34
    r8 fs d b g'[ fs] b[ as] | % m. 35
    e8 ds g4~ g16 fs gs as b g fs es | % m. 36
    fs4 f~ f16 e fs gs a b e, ds | % m. 37
    e16 fs, g a b cs d fs e cs d fs g e fs as | % m. 38
    b4 a gs fs~ | % m. 39
  \barNumberCheck #40
    fs16 es fs es fs4~ fs16 a, b cs d e fs, es | % m. 40
    fs8[ fs'] d[ b] g'[ fs] b[ as] | % m. 41
    e8 ds r e~ e16 ds e g fs4 | % m. 42
    e16 d cs b a b cs e d b cs e fs d e gs | % m. 43
    a16 g fs e d cs b a g e fs a b g a cs | % m. 44
    d16 e d e fs g a fs d f e d c b c d | % m. 45
    c16 b8. a4~ a8 d16 e fs g a, gs | % m. 46
    e'16 fs g, fs d' e fs, e cs' b cs d e fs g e | % m. 47
    a2 g4 f | % m. 48
    e4 d~ d16 cs d cs d4~ | % m. 49
  \barNumberCheck #50
    d16 e fs g a b d, cs d2~ | % m. 50
    d4 cs8 fs~ fs16 b, cs d e fs b, as | % m. 51
    d4 cs8 b cs2 | % m. 52
    r16 fs, gs a b cs fs, es a4 r | % m. 53
    r4 gs' fs e | % m. 54
    ds4 cs ~ cs8 bs cs4~ | % m. 55
    cs16 ds e fs gs a cs, bs e2~ | % m. 56
    e16 e fs gs a b ds, cs ds4 r | % m. 57
    r4 fs e d | % m. 58
    cs4 b~ b16 as b as b4~ | % m. 59
  \barNumberCheck #60
    b16 cs d e fs g b, as d4~ d16 cs d cs | % m. 60 % shift b,
    e16 d fs e g4~ g8. fs16 a4~ | % m. 61
    a8. gs16 b8 a gs4~ gs16 es fs8~ | % m. 62
    fs16 fs gs a b gs fs es a2~ | % m. 63
    a2~ a16 fs g a b c fs, e | % m. 64
    fs4~ fs16 fs d b g' a b8~ b a16 g | % m. 65
    fs16 g a8~ a g16 fs e fs g8~ g fs16 e | % m. 66
    d4~ d16 e fs8~ fs e16 d cs d e8~ | % m. 67
    e8 d16 cs b cs d8~ d cs16 b as b cs8~ | % m. 68
    cs16 fs, gs as b cs d fs e cs d fs g e fs as | % m. 69
  \barNumberCheck #70
    b16 a g fs e d c b a fs g b c a b ds | % m. 70
    e4 d cs b~ | % m. 71
    b16 as b as b4~ b16 cs d e fs g b, as | % m. 72
    b16 d e fs g a c, b c e fs g as b d, cs \break | % m. 73
    d2 cs~ | % m. 74
    cs4 c16 as b8~ b4 as | % m. 75
    b1 \fermata | % m. 76
  \bar "|."
}

alto = \relative c' {
  \global
  \barNumberCheck #1
  \voiceTwo
    r8 fs d b \slurUp g'(fs) b (as) | % m. 1
    e8 (ds) c' (b) fs (es) d' (cs) | % m. 2
    bs8 cs a fs gs2 \trill | % m. 3
    fs8. es16 fs gs a cs b gs a c fs4 | % m. 4
    e4 d cs b~ | % m. 5
    b8 as b4~ b16 cs d e fs g b, as | % m. 6
  \voiceThree
    d2~ d8 c b ds | % m. 7
    e2~ e8 d cs es | % m. 8
    fs8. g16 fs e d b cs e d b fs8 fs'~ | % m. 9
    fs8. g16 fs e ds cs b cs32 d cs8~ cs16 b a d | % m. 10
    gs,4 a b2~ | % m. 11
  \voiceTwo
  \barNumberCheck #12
    b4 a g2 | % m. 12
    fs2 es8 ds r ds' | % m. 13
    ds8 e r4 r8 e d16 cs d b | % m. 14
    cs4 b8 fs g2~ | % m. 15
    g8 cs,~ cs4 fs gs~ | % m. 16
    gs4 fs8 r r2 | % m. 17
    \once\small R1 | % m. 18
    r8 fs
  \staffTwo \voiceOne
      d b
  \staffOne \voiceThree
  \teeny
      b'2\rest | % m. 19
    \once \override MultiMeasureRest.staff-position = #-2
    R1 | % m. 20
  \normalsize
  \voiceTwo
  \barNumberCheck #21
    r8 fs d b g' fs b as | % m. 21
    e[ ds] c'[ b] fs[ es] d'[ cs] | % m. 22
    bs[ cs] a[ fs] \once \shiftOff gs2 | % m. 23
    a2~ a8 c b ds | % m. 24
    e2~ e8 d cs es | % m. 25
    fs4 r8 b,16 a g a b8~ b a16 g | % m. 26
    fs16 g a8~ a g16 fs e fs g8~ g fs16 e | % m. 27
    d16 e fs8~ fs e16 d c d e8~ e d16 c | % m. 28
    b16 c d8~ d c16 b a b c8~ c b16 a | % m. 29
  \barNumberCheck #30
    g4 r8  \once\slurUp e'16( ds) \once\slurUp ds (e fs g) a g a b | % m. 30 %slurUp?
    c16 a b8~ b16 a gs fs e g fs as b cs d e | % m. 31
    d16 cs8. r16 a g fs e2 | % m. 32
    r16 fs gs as b cs fs, es a2 | % m. 33
    gs8[ cs] a[ fs] d'[ cs] fs[ es] | % m. 34
    b8 as r b~ b16 as b d cs4~ | % m. 35
    cs8[ b] e[ as,] b2~ | % m. 36
    b16 as b cs d e a, gs a2~ | % m. 37
    a8 g fs4 r2 | % m. 38
    r16 fs' a g fs e ds cs b d cs b a gs a fs | % m. 39
  \barNumberCheck #40
    gs4 r16 e' d cs b a gs a b4~ | % m. 40
    b8 as r b~ b16 as b d cs4 | % m. 41
    r8 b g e c'[ b] e[ ds] | % m. 42
    a gs a4~ a8 gs cs b | % m. 43
    e8 r r fs, d4 r8 g | % m. 44
    a8 d c4 b a~ | % m. 45
    a8 a16 gs a g fs e d cs b cs d4 | % m. 46
    cs4 b a2 | % m. 47
  \teeny
    \once \override MultiMeasureRest.staff-position = #2
    \once \override MultiMeasureRest.extra-offset = #'(-0.625 . 0)
    R1 | % m. 48
    \once \override MultiMeasureRest.staff-position = #-2
    R1 | % m. 49
  \normalsize
  \barNumberCheck #50
    \once\small R1 | % m. 50
    r16 e' fs g a b e, ds g2~ | % m. 51
    g8[ fs] es[ gs] ~ gs16 es fs gs a b d, cs | % m. 52
    ds4 es8 gs~ gs16 gs fs es fs gs a cs | % m. 53
    b16 gs a cs b d cs b cs d e d cs b as gs | % m. 54
    fs16 a gs bs cs ds e fs e ds r a gs b a gs | % m. 55
    fs2 gs~ | % m. 56
    gs16 cs, ds e fs gs a b a fs gs a b cs ds e | % m. 57
    fs16 ds e gs fs cs b a b cs d cs b a gs fs | % m. 58
    e16 g fs e d cs d b cs4 r16 a' g fs | % m. 59
  \barNumberCheck #60
    e4 r8 cs'~ cs16 cs b as b4 | % m. 60 %shift cs'~
    cs8 d r16 e d cs b as b8 r16 fs' e ds | % m. 61
    cs16 bs cs8 r16 gs'8 fs16~ fs fs es gs cs,8. d16 | % m. 62
    b2 cs~ | % m. 63
    cs16 fs, g a b c e, ds e2~ | % m. 64
    e16 e d cs d8 r r e'16 d cs d e8~ | % m. 65
    e8 d16 cs b cs d8~ d cs16 b as b cs8~ | % m. 66
    cs4 b8 a g16 a b8~ b8 a16 g | % m. 67
    fs16 g a8~ a g16 fs e fs g8~ g fs16 e | % m. 68
    d4 b'~ b8 as d cs | % m. 69
  \barNumberCheck #70
    fs8 r r4 r r8 b,~ | % m. 70
    b16 cs b a gs4 r16 g fs8~ fs16 e d e | % m. 71
    cs4 r16 fs e d cs2 | % m. 72
    b4 r8 fs' e4 r | % m. 73
    r8 fs d b g'[ fs] b[ as] | % m. 74
    e8 ds r gs fs es fs8. e16 | % m. 75
    ds1 \bar "|." | % m. 76 \fermata
}

tenor = \relative c' {
  \global
  \barNumberCheck #1
  \oneVoice
    R1 | % m. 1
    R1 | % m. 2
    R1 | % m. 3
  \voiceOne
    r8 b a fs d' b \slurDown e( ds) | % m. 4
    \slurDashed
    a8 (gs) f' (e) b (as) g' (fs) \slurSolid | % m. 5
    es8 fs d b cs2 | % m. 6
    b16
  \staffOne \voiceTwo
      fs' gs as b cs fs, es a2~ | % m. 7
    a8 g fs as b2~ | % m. 8
    b8 as b4 r cs | % m. 9
    b4 a gs fs~ | % m. 10
    fs8 es fs4~ fs16 gs a b cs d
  \staffTwo \voiceOne
      fs, es | % m. 11
    fs2~ fs4 e~ | % m. 12
    e8. d16 cs b a fs gs b a fs c'8 b16 a | % m. 13
    b2 e,4 b'8 a | % m. 14
  \barNumberCheck #15
    gs8[ fs] fs'[ d] e2~ | % m. 15
    e8 cs as fs d'2 | % m. 16
    cs2~ cs8 b16 a gs a b8~ | % m. 17
    b8 a16 gs fs gs a8~ a gs16 fs es fs gs8 | % m. 18
    fs16
  \staffOne \voiceTwo
      b' \once \shiftOn cs8~  cs b16 a g a b8~ b a16 g | % m. 19
    fs16 g a8~ a g16 fs e fs g8~ g
  \staffTwo \voiceOne
      fs16 e | % m. 20
    d4 r r2 | % m. 21
  \teeny
    \once \override MultiMeasureRest.staff-position = #4
    R1 | % m. 22
    R1 | % m. 23
    \once \override MultiMeasureRest.staff-position = #6
    R1 | % m. 24
    R1 | % m. 25
    R1 | % m. 26
    R1 | % m. 27
  \normalsize
    r8 b g e \once \tiny r2 | % m. 28
    \once \tiny \once \override MultiMeasureRest.staff-position = #4
    R1 | % m. 29
    r8 b' g e c' b e ds | % m. 30
  \barNumberCheck #31
  \clef treble
    a8[ gs] f'[ e] b[ as] g'[ fs] | % m. 31
    es8[ fs] d[ b] cs2 | % m. 32
    b2 r16 cs ds es fs gs cs, bs | % m. 33
    cs16 b a gs fs gs a cs b gs a cs d b cs es | % m. 34
    fs16 e d cs b cs d fs e cs d fs g e fs as | % m. 35
    b16 a g fs e d e cs d2~ | % m. 36
    d8[ cs] b[ d]
  \clef bass
      c2~ | % m. 37
    c8 b r b~ b16 as b d cs4 | % m. 38
    fs,4 r r2 | % m. 39
  \barNumberCheck #40
  \teeny
    \once \override MultiMeasureRest.staff-position = #6
    R1 | % m. 40
    \once \override MultiMeasureRest.staff-position = #4
    R1 | % m. 41
    \once \override MultiMeasureRest.staff-position = #6
    R1 | % m. 42
    \once \override MultiMeasureRest.staff-position = #4
    R1 | % m. 43
    \revert MultiMeasureRest.staff-position
  \normalsize
    r8 a fs d b'[ a] d[ cs] | % m. 44
    g8[ fs] ef'[ d] a[ gs] f'[ e] | % m. 45
    ds8[ e] cs[ a] b2~ | % m. 46
    b8 a4 g8~ g fs e cs | % m. 47
  \once \showStaffSwitch
  \staffOne \voiceTwo
    r16 g''' fs e d c b c d e d c b cs d b | % m. 48
    g16 bf a g f e f d e4 r16 c' b a | % m. 49
    g16
  \barNumberCheck #50
  \staffTwo \voiceOne
      fs e d  cs b a g fs a b cs d e a, gs | % m. 50
    a2 b8 as16 b cs8 e, | % m. 51
    b'8 r r4 r16 cs, ds es fs gs a es | % m. 52
    fs4 gs r8
  \clef treble
      cs a fs | % m. 53
    d'8 cs fs es b as g' fs | % m. 54
    cs8[ bs] a'[ gs] fss[ gs] e[ cs] | % m. 55
  \clef bass
    ds2~ ds16 gs, as bs cs ds fs, e | % m. 56
    fs4 r r2 | % m. 57
  \teeny
    R1 | % m. 58
    \once \override MultiMeasureRest.staff-position = #4
    R1 | % m. 59
  \normalsize
    r2 r8
  \barNumberCheck #60
  \clef treble
      fs' d b | % m. 60
    g'8[ fs] b[ as] e[ ds] c'[ b] | % m. 61
    fs8[ es] d'[ cs] bs[ cs] a[ fs] | % m. 62
    gs2~ gs16 cs, ds es fs gs b, a | % m. 63
    b1 | % m. 64
    as8[ fs] b[ d] e[ g] a[ cs,] | % m. 65
    d8[ fs] g[ b,] cs[ e] fs[ as,] | % m. 66
  \clef bass
    b16 fs g a b c e, ds e8[ g] a[ cs] | % m. 67
    d8[ fs,] g[ b] cs[ e,] fs[ as] | % m. 68
    b8[ fs] d[ b] g'[ fs] b[ as] | % m. 69
  \barNumberCheck #70
    e8 ds e2 fs4 | % m. 70
    e4 r16 b' cs d e8. e16 d cs b a | % m. 71
    gs8 fs~ fs16 a g fs e2 | % m. 72
    fs4 r8 a g4 r8 b | % m. 73
    as16 fs gs as b cs d b~ b b as b cs d e cs | % m. 74
    fs4 r8 d cs2 | % m. 75
    b1 | % m. 76 \fermata
  \bar "|."
}

bass = \relative c {
  \global
  \barNumberCheck #1
  \voiceTwo
    s1 | % m. 1
    s1 | % m. 2
    s1 | % m. 3
  \teeny
    R1 | % m. 4
    R1 | % m. 5
    R1 | % m. 6
    R1 | % m. 7
    R1 | % m. 8
  \normalsize
  \slurUp
    r8 fs d b g' (fs) b (as) | % m. 9
  \barNumberCheck #10
    \once \slurDashed e8( ds) c'( b) \once \slurDashed fs (es) \once \slurDashed d'( cs) | % m. 10
    \slurNeutral
    bs8 cs a fs gs2 | % m. 11
    fs16 fs g a b c e, ds e fs g e as b d, cs | % m. 12
    d8 b fs'4~ fs fs | % m. 13
    e4 d cs b~ | % m. 14
    b8 as b4~ b16 cs d e fs g b, as | % m. 15
    d2~ d16 as b cs d e fs, es | % m. 16
    fs4 fs'8 a b[ d,] e[ gs] | % m. 17
    a8[ cs,] d[ fs] gs[ b,] cs[ es] | % m. 18
    fs8[ a,] b[ d] e[ g,] a[ cs] | % m. 19
  \barNumberCheck #20
    d8[ fs,] g[ b] cs[ e,] fs[ as] | % m. 20
    b4~ b16 cs d fs e cs d fs g e fs as | % m. 21
    b16 g fs e ds8. cs16 d e d cs b a gs fs | % m. 22
    gs16 b a gs fs a d cs b8[ gs] cs[ cs,] | % m. 23
    fs'16 g a b c d e, ds g2~ | % m. 24
    g16 b, cs d e fs b, as b2~ | % m. 25 %pageTurn?
    b8 as b d e[ g,] a[ cs] | % m. 26
    d8[ fs,] g[ b] cs[ e,] fs[ as] | % m. 27
    b8 d e g a[ c] d[ fs,] | % m. 28
    g8[ b] c[ e,] fs[ a] b[ ds,] | % m. 29
  \barNumberCheck #30
    e4 r r2 | % m. 30
  \teeny
  \override MultiMeasureRest.staff-position = #-12
    R1 | % m. 31
    R1 | % m. 32
    R1 | % m. 33
    R1 | % m. 34
    R1 | % m. 35
    R1 | % m. 36
  \revert MultiMeasureRest.staff-position
    R1 | % m. 37
  \normalsize
    r8 e d b g'[ fs] b[ as] | % m. 38
    e8[ ds] c'[ b] fs[ es] d'[ cs] | % m. 39
  \barNumberCheck #40
    bs8[ cs] a fs gs2 | % m. 40
    fs16 e d cs b cs d fs e cs d fs g e fs as | % m. 41
    b16 a g fs e fs g b a fs g b c a b ds | % m. 42
    e8[ e,] cs[ a] fs'[ e a gs] | % m. 43
    d8 cs d2.~ | % m. 44
    d4 r r2 | % m. 45
    R1 | % m. 46
    r2 r8 d cs a | \noBreak % m. 47
    fs'8[ d] g[ fs] c[ b] a'[ gs] | % m. 48
    d8[ cs] bf'[ a] gs[ a fs d] | % m. 49
  \barNumberCheck #50
    e2 d4 r8 b | % m. 50
    a4 r8 fs' e4 r8 cs | % m. 51
    b16 fs gs a b cs fs, es a2~ | % m. 52
    a4 gs fs8 r r4 | % m. 53
  \small
    \once \override MultiMeasureRest.staff-position = #-12
    R1 | % m. 54
    R1 | % m. 55
    R1 | % m. 56
  \normalsize
    r2 r8 b gs e | % m. 57
    cs'[ b] e[ ds] a[ gs] f'[ e] | % m. 58
    b8[ as] g'[ fs] es[ fs] d[ b] | % m. 59
  \barNumberCheck #60
    cs2 b8 r r4 | % m. 60
  \teeny
    \override MultiMeasureRest.staff-position = #-10
    R1 | % m. 61
    R1 | % m. 62
    R1 | % m. 63
    R1 | % m. 64
    R1 | % m. 65
    %\once \override MultiMeasureRest.staff-position = #-12
    R1 | % m. 66
    \revert MultiMeasureRest.staff-position
    R1 | % m. 67
    R1 | % m. 68
    R1 | % m. 69
  \normalsize
  \barNumberCheck #70
    r8 b g e c'[ b] e[ ds] | % m. 70
    a8[ gs] f'[ e] b[ as] g'[ fs] | % m. 71
    es8[ fs] d[ b] cs2 | % m. 72
    d4 r8 ds e4 r8 es | % m. 73
    <<
      { s1 | s2 f16\rest b, cs d e cs fs8~ | fs1 | }
      \\
      { fs1~ | fs16 as, b cs ds es fs, es fs2 | b1\fermata | }
    >> | % m 74
  \bar "|."
  \mark\markup{\normalsize \musicglyph #"scripts.ufermata" }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

fugueTwentyfour = \score {
  \new PianoStaff \with {
    % edition-id = fugue.twentyfour
  } <<
    \new Staff = "Up" \with { } <<
      \new Voice \soprano
      \new Voice \alto
    >>
    %\new Dynamics { s1*75 s1^\markup{"S.D.G"}^\markup{"Fine"}}
    \new Staff = "Down" \with { \clef bass \consists "Mark_engraver" } <<
      \new Voice \tenor
      \new Voice \bass
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f fugue.twentyfour
    }
  }
}
%\fugueTwentyfour
