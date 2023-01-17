\version "2.20.0"
\language "english"

global = {
  \key d \minor
  \time 4/4
}

staffOne = \change Staff = "Up"
staffTwo = \change Staff = "Down"

right = \relative c' {
  \global
  \set tupletSpannerDuration = #(ly:make-moment 1/8)
    r8 r16 a' %1
  \tuplet 3/2 {
    \set Voice.beamExceptions = #'()
    \set Voice.baseMoment = #(ly:make-moment 1/16)
    \set Voice.beatStructure = 2,2,2,2,2,2,2
      f16 d a'  f d d' bf g bf  g e g  e cs g'  e cs a' | %1
    \omit TupletBracket
    \omit TupletNumber
    f d a' \once\override Beam.auto-knee-gap = #2 f d a'' f d f d a d bf g d' bf g g' e c e c g c | %2
    a f c' a f f' d bf d bf g g' e c e c a a' f d f d bf bf' | %3
    g e g e c c' a f a f c a' f d f d a f' d bf d bf f d' | %4
  \barNumberCheck #5
    bf g bf g d bf' g c, bf' g e bf'a f a f c f d bf f' c bf e | %5
    c a f' c a c a f c' a f c' a fs c' a fs ef' a, fs d' a fs c' | %6
    bf g d' bf g d' bf g e' bf g fs' bf, g g' d bf g'  ef a, g' d a fs' | %7
    d bf g' d bf d bf g d' bf g d' b gs d' b gs f' b, gs e' b gs d' | %8
    c a e' c a e' c a fs' c a gs' c, a a' e c a' f b, a' e b gs' | %9
  \barNumberCheck #10
    e c a' e c c' f, d bf' g e bf' a f a c, a a' d, b g' e cs g' | %10
    f d d' a f f' bf, g ef' c a ef' d bf d f, d d' g, e c' a fs c' | %11
    bf g d' bf g g' ef g, g' d g, g' cs, a g' e cs bf' e, cs a' e cs g' | %12
    f d a f d a' f d b' f d cs' f, d d' f, d a' f d bf' e, cs a' | %13
    e cs g' d a f' d bf e c f, ef' bf f d' a f d' bf e, d' a e cs' | %14
  \barNumberCheck #15
    a fs a c a c ef c ef %15
  }
      fs8 %15
  \tuplet 3/2 {
      bf,16 g bf d bf d g d g %15
  }
      \once \stemDown bf8 ~ | %15
  \tuplet 3/2 {
    bf16 g e' bf g g' bf, g e' bf g cs bf g e' bf g g' bf, g e' bf g cs | %16
    a fs d' a fs ef' a, fs d' a fs c' a fs d' a fs ef' a, fs d' a fs c' | %17
    g d g bf g bf d bf d g d g bf a g f e d cs a cs e cs e | %18
    g e d cs b a g e g bf g bf cs g e' cs bf e cs a e' cs g e' | %19
  \barNumberCheck #20
    c a d bf g ef' a, fs d' a fs c' g d bf' g f bf g ef bf' g d bf' | %20
    g cs, bf' e, cs bf' e, cs a' e cs g' d b f' d cs f d b f' d a f' | %21
    cs g e' cs bf e cs a e' cs g e' b gs d' cs gs e' d gs, f' %22
  }
      g,8 ~ | %22
    \tuplet 3/2 { g16 e g cs g cs e cs e } g8 \tuplet 3/2 { f16 d f a f a \stemUp d[ a d] } \once \tieUp f8 ~ |
    \tuplet 3/2 { f16 b, d f d f gs f gs b gs f bf g e a fs ds gs f d g e cs |
    \stemNeutral
    fs ef c f d b e cs bf ef c a }
    <<
      {
        \stemUp d2 ~ d4 cs d2^\fermata
      } \\ {
        r4 \stemUp < b gs >4 \shiftOn a2 \shiftOff a
      } \\ {
        s4 \stemDown < d, f >4 | \shiftOn < d f >4 \shiftOff <e g> < d fs >2
      }
    >>
  \bar "|."
}


left = \relative c {
  \global
  \omit TupletNumber
  \omit TupletBracket
  \barNumberCheck #1
    d8 d d d d d d d | %1
    d8 d d' d
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
      g,8 g c c | %2
    f,8 f bf g c a d d, | %3
    e8 c f e d c bf a | %4
  \barNumberCheck #5
    g8 f e c f a bf c | %5
    f,4 r8 ef' d c bf a | %6
    g8 bf c d ef bf c d | %7
    g,4 r8 f' e d c b | %8
    a8 c d e f c d e | %9
  \barNumberCheck #10
    a,8 a' a g f f, f e | %10
    d8 d' d c bf bf' bf a | %11
    g4 r8 bf a g f e | %12
    d8 f g a bf f g a | %13
    bf,8 f g a bf f g a | %14 \stemNeutral
    d,4. ~ \tuplet 3/2 {d16 fs a} d4. ~
  \barNumberCheck #15
    %\set Score.tupletNumberFormatFunction = #'()
    \tuplet 3/2 {d16 g bf} | %15
    cs8 d, cs' d, cs' d, cs' d, | %16
    c'8 d, c' d, c' d, c' d, | %17
    bf'8 d, bf' d, g d g d | %18
    e8 d e d e d e d | %19
    <<
      \relative g {
        \barNumberCheck #20 %voice 1
        \set Timing.beamExceptions = #'()
        \set Timing.baseMoment = #(ly:make-moment 1/4)
        \set Timing.beatStructure = 2,2
        %\omit TupletNumber
        \omit TupletBracket
        s2 g8 a g f |  %20a
        e8[ g] f[ e] d e f4 | %21a
        e8 g f e f[ e] f ~ \tuplet 3/2 { f16[ e d] } | %22a
        cs8[ e] g[ bf] a[ \staffOne \stemDown d] f a | %23a
        gs8 g\rest g4\rest g2\rest | %24a
      } \\ \relative f {
        %\omit TupletNumber
        \omit TupletBracket
        \barNumberCheck #20 %voice 2
        fs8[ d] fs8[ d8] ~ d2 ~ | %20b
        d2 gs,4. a8 | %21b
        bf2 b4. bf8 | %22b
        a4. ~ \tuplet 3/2 { a16 cs e } a4. ~
          \tuplet 3/2 { \once \override TupletNumber.whiteout = #1 \once \override TupletNumber.Y-offset = #-1.5 a16 \staffOne d f } | %23b
        \staffTwo R1 | %24b
      }
    >>
  \stemNeutral
  \barNumberCheck #25
    << { r2 r4 <gs f d> } \\ { r2 r4 b, } >> | %25
    <<
      {
        \stemUp a'2
      } \\ {
        \stemUp \shiftOn < f d >4 \shiftOff e d2
      } \\ {
        \stemDown \shiftOn a2 \shiftOff d,_\fermata
      }
    >>
  \bar "|."  
  \mark\markup{ \fontsize #-2 \musicglyph #"scripts.ufermata" }
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

preludeSix = \score {
  \new PianoStaff \with { } <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff ="Up" \with { } <<
      \new Voice \right
    >>
    \new Staff = "Down" \with { \consists "Mark_engraver" \clef bass }
      <<
        \new Voice \left
      >>
  >>
  \layout {
    \context {
      \Score
      \editionID ##f prelude.six
    }
    \context {
      \Voice
      \consists "Melody_engraver"
      \override Stem #'neutral-direction = #'()
    }
  }
}
%\preludeSix
