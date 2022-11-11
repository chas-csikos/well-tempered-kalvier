\version "2.20.0"
\language "english"

global = {
  \key fs \major
  \time 12/16
  \set Timing.baseMoment     = #(ly:make-moment 1/16)
}

right = \relative fs' {
  \global
  \barNumberCheck #1
    fs16 as cs as fs cs' cs4.\parenthesize\trill ~ |
    cs16[ as b8] cs16[ as8] ds16[ gs,8] as16[ fs] ~ |
    fs16[ b es,8] b'16[ ds,8] b'16[ cs,] es[ gs b] |
    as16[ fs bs8] fs16[ cs'8] fs,16[ ds'8] gs,16[ es'] ~ |
  \barNumberCheck #5
    es16[ gs cs,8] ds16[ bs] cs[ es cs] cs[ es32 ds cs16] ~ |
    cs16[ as' cs,8] ds16[ bs] cs[ es gs] es[ cs gs'] |
    gs4.\trill ~ gs16[ es fs8] gs16[ es] ~ |
    es16[ as ds,8] es16[ css] fs[ as, b8] cs16[ as] ~ |
    as16[ ds gs,8] as16[ fs8] b16[ e,8] fs16[ ds] | %9
    % \stemDown as16[ ds gs,8] \stemNeutral as16[ fs8] b16[ e,8] fs16[ ds] | %9 ?
  \barNumberCheck #10
    gs16[ css, ds8] css16[ gs'8] es16[ b'8] gs16[ es'] ~ |
    es16[ es, fs8] as16[ ds8] es,16[ gs8] as16[ css] |
    ds4.\trill ~ ds16[ fs as] fs[ ds gss] |
    gss4.\trill ~ gss16[ as bs] es,[ fs ds] |
    cs16[ es as,8] bs16[ gss] as[ cs as] as[ cs32 bs as16] ~ |
  \barNumberCheck #15
    as16[ fs' as,8] bs16[ gss] as[ cs es] cs[ as fss'] |
    fss4.\trill ~ fss16[ as ds,] cs[ b as] |
    b16[ ds gs,8] as16[ fss] gs[ b gs] gs[ b32 as \once\tieUp gs16] ~ |
    gs16[ e' gs,8] as16[ fss] gs[ b ds] b[ gs es'] |
    es4.\trill ~ es16[ cs es] gs16[ es gs] |
  \barNumberCheck #20
    b4. ~ b16[ gs as8] b16[ gs] ~ |
    gs16[ es fs8] gs16[ es] fs[ as, b8] cs16[ as] ~ |
    as16[ ds gs,8] as16[ fs8] es16[ b'8] gs16[ ds'] ~ |
    ds16[ b gs'8] es16[ b8] gs16[ cs8] as16[ fs] ~ |
    fs16[ ds b'8] gs16[ es ] fs4. ~ |
  \barNumberCheck #25
    fs16[ as, b8] cs16[ as8] ds16[ gs,8] as16[ fs] |
    b4. ~ b16[ es gs] es[ b gs'] |
    a,16[ cs fs] b,[es gs] cs,[ fs a] d,[ gs b] |
    es,16[ b' d8] b16[ es8] d16[ gs8] es16[ b'] |
    as16[ cs, fs8] gs16[ es] fs[ as, fs'] fs[ as32 gs fs16] ~ |
  \barNumberCheck #30
    fs16[ gs, fs'8] gs16[ es] fs[ cs as] fs8.
  \bar "|."
}

left = \relative fs {
  \global
  \barNumberCheck #1
    r4. fs16 as cs as fs ds' |
  \set Timing.beatStructure = 6,6
    ds8. cs b as |
    gs8. fs es cs |
    fs8. gs as bs |
  \barNumberCheck #5
    cs8. gs as es |
    fs gs cs, r |
    cs16[ es gs] es[ cs as'] as8. gs |
    fs8. es ds cs |
    b8. as gs fs |
  \barNumberCheck #10
    es8. ds' css as |
    ds8. fs gs as |
    ds,16[ fs as] fs[ ds bs'] bs4.\trill ~ |
    bs16[ ds fs] ds[ \once \hide Accidental bs fs'] fs[ es ds] cs[ ds es] |
    as,8. es fs cs |
  \barNumberCheck #15
    ds8. es as, r |
    ds16[ fss as] fss[ ds cs'] cs8. fss, |
    gs8. ds e b |
    cs8. ds gs, r |
    cs16[ es gs] es[ cs b'] b8. ~ b16[ gs b] |
  \barNumberCheck #20
    es16[ gs es] cs[ es cs] fs,8. b |
    bs8. cs ds, cs |
    b8. as gs fs' |
    es8. cs fs as, |
    b8. cs fs,16[ as cs] as[ fs ds'] |
  \barNumberCheck #25
    ds8. cs b as |
    gs16[ b ds] b[ gs es'] cs,4. ~ |
    cs8. cs' cs, cs' |
    cs,8. es' gs cs |
    fs,8. cs ds as |
    b8. cs fs,4.
  \bar "|."
    \override Staff.RehearsalMark.direction = #DOWN
    \override Staff.RehearsalMark.rotation = #'(180 0 0)
    \mark \markup {\fontsize #-2 \musicglyph #"scripts.ufermata" }
}

preludeThirteen = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with {  } <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \clef bass \consists "Mark_engraver" } <<
      \new Voice \left
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.thirteen
    }
  }
}
%\preludeThirteen
