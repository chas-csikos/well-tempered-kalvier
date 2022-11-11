\version "2.20.0"
\language "english"

global = {
  \key e \major
  \time 12/8
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

right = \relative e' {
  \global
  \barNumberCheck #1
    e8 gs b e ds e cs\prall b cs e4. |
    b8\prall a b e4. a,8 b cs b cs a |
    gs8 b e gs4. ~ gs8 fs e ds e cs |
    ds2.\upprall ~ ds8 e fs gs cs, e |
  \barNumberCheck #5
    fs,8 as cs fs e fs gs, b ds e4. |
    fs,8 as cs e ds e fs, as cs d4. ~ |
    d8 e d cs d b as\prall gs fs g' fs es |
    e8 ds d
  \voiceOne
      cs16 ds e8 as, b2. ~ |
  \oneVoice
    b8 ds fs b a b cs, es gs b4. ~ |
  \barNumberCheck #10
    b8 gs a ~ a fs gs ~ gs es fs es16 fs gs8 cs, |
    <<
      \relative d'' {
        \voiceOne
          d2. ~ d4. ~ d8 d cs |
          cs4. ~ cs8 b a gs a b ~ b a gs |
          a4. ~ a8 b gs a4. ~ a8 b16 a gs fs |
      }
      \\
      \relative b' {
        \voiceTwo
        r8 b gs es gs fs gs b a b4. ~ | %11
        b8 a gs fs4. ~ fs es4. |
        fs4. ~ fs4 e8 ds4. r |
      }
    >>
  \oneVoice
    gs16 fs e fs gs a b a gs a b cs d cs b a gs fs e8 r r |
  \barNumberCheck #15
    a8 cs e a gs a fs\prall e fs a4. |
    e8\prall d e a4. d,8 e fs e fs d |
    cs8 a b cs4. ~ cs8 b a gs a fs |
    gs8 e fs gs4. ~ gs8 a b cs fs, a |
    b,8 ds fs b a b cs, e gs a4. |
  \barNumberCheck #20
    b,8 ds fs a gs a b, ds fs g4. ~ |
    g8 a g fs g e ds cs b c' b as |
    a gs g fs16 gs a8 ds, %22
    <<
      \relative e' {
        \voiceOne
        e2. ~ | %22
        e2. ~ e4. ~ e4 ds8 |
      }
      \\
      \relative gs {
        \voiceTwo
        s2. | %22
        r8 gs b d cs d cs4. ~ cs4 c8 |
      }
    >>
    <b e>1.
}

left = \relative e {
  \global
  <<
    \new Voice = "left1"
    \relative e {
      \voiceOne
      r4. gs a ~ a8 gs fs | %1
      gs4. ~ gs8 a gs fs2. |
      e8 s s s4. r8 r cs'8 fs4. |
      s2. r8 r b, e4. ~ |
      e4. ds4. ~ ds ~ ds8 cs b | %5
      as2. ~ as4. b ~ |
      b8 cs d e4. ~ e ~ e8 ds cs |
      b4. ~ b8 as
    \staffOne\voiceTwo
        e' ds2. | %8
    \staffTwo\voiceOne
      s2. r8 gs, b d b cs ~ |
      cs4. b bs cs |
      r8 d, es gs b a s2. |
    }
    \new Voice = "left2"
    \relative e {
      \voiceTwo
      \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0)) Tie %% Injection by OpenLilyLib failed.
      e2. ~ e ~ | %1
      e2. ~ e4. ds |
      e8 gs b e ds e as,2. |
      b,8 ds fs b as b e,2. |
      fs2. ~ fs ~ | %5
      fs4. fs4 cs8 d4. ~ d8 e fs |
      g2. fs4. ~ fs8 gs as |
      b4 es,8 fs4. b,8 ds fs b a b |
      gs4. ~ gs8 fs gs es2. |
      fs4. d ds cs |
      b2. b'8 gs fs gs16 a b8 es, |

    }
  >>
  \oneVoice
  fs4. a, b cs |
  fs,8 a cs fs e fs b, ds fs b a b |
  e,8 gs b e d cs b4 a8 gs16 d' cs b a gs |
  <<
    \new Voice = "left3"
    \relative c'{
      \voiceOne
      r4. cs d ~ d8 cs b |
      cs4. ~ cs8 d cs b2. |
      \oneVoice a,8 cs e  a gs a \voiceOne r8 r fs8 b4. |
      \oneVoice e,,8 gs b e ds e \voiceOne r8 r e8 a4. ~ |
      a4. gs4. ~ gs ~ gs8 fs e |
      ds2. ~ ds4. e ~ |
      e8 fs g a4. ~ a ~ a8 gs fs |
      e4. ~ e8 ds a' gs e gs a gs a |
      e2. a,8 cs e a gs a |
    }
    \new Voice = "leftFour"
    \relative a{
      \voiceTwo
      a2. ~ a ~ |
      a2. ~ a4. gs |
      s2. ds2. |
      s2. a2. |
      b1. ~ |
      b4. ~ b4 fs8 g4. ~ g8 a b |
      c2. b4. ~ b8 cs ds |
      e4 as,8 b4. cs2.
      gs2. a2. |
    }
  >>
  <e, gs'>1.
  \bar "|."
    \override Staff.RehearsalMark.direction = #DOWN
    \override Staff.RehearsalMark.rotation = #'(180 0 0)
    \mark \markup {\fontsize #-2 \musicglyph #"scripts.ufermata" }
}

preludeNine = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with {} <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass } <<
      \new Voice \left
    >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.nine
    }
  }
}
%\preludeNine
