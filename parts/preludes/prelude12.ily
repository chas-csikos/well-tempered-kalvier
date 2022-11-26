\version  "2.20.0"
\language "english"

global = {
  \key f \minor
  \time 4/4
}

vOne = \relative f' {
  \global
  \barNumberCheck #1
  \voiceOne
    f16 af c f g, f' e g af, c f e f4 |
    df4 ~ df16 df c bf af8. bf16 bf8.\prall af32 bf |
    c4 r16 df g, bf e,8. f16 f8.\prall e32 f |
    g16 c bf df ~ df df c bf a8. bf16 bf8.\prall a32 bf |
  \barNumberCheck #5
    c2 ~ c16 c bf df g,8 af\prall |
    bf2 ~ bf16 af c8 ~ c16 bf df8 ~ |
    df16 c ef8 ~ ef16 df f8 ~ f16 ef df c bf g af df |
    \once \stemDown bf4\prall ~ bf16 ef, f g af g af f' ef8. df16 |
  \oneVoice
    c16 af c e f g e f g2 ~ |
  \barNumberCheck #10
    g16 c, f af d, f b, c b8.\prall c16 c8.\prall b32 c |
  \voiceOne
    d16 g f af ~ af af g f r c'8 b16 c4 |
    ef,4 ~ ef16 c d8 c2 |
    f,16 a c ef ~ ef gf c, ef df4. c8 ~ |
    c16 bf g e c e f b << { c4 }\\{ \voiceThree e,16\rest f e g } >> bf16 df c bf |
  \barNumberCheck #15
    a16 f a c f8. ef16 df4 ~ df16 c8 bf16 ~ |
    bf16 df c8 af8. g16 f af c f ~ f f e g |
    af,16 c f e f4 df ~ df16 df c bf |
    af4 ~ af16 af g f e2 |
  \oneVoice
    r16 c' bf df e, df' c bf af g' f af b, af' g f |
  \barNumberCheck #20
    e16 f g e bf' df, c bf af bf c f, d' af g f
  \voiceOne
    e4 f ~ f e16\rest bf c e |
    f1\fermata
  \bar "|."

}

vTwo = \relative f' {
  \barNumberCheck #1
  \voiceTwo
    f4 g af f'16 c bf af |
    df16 af g bf e,4 f8 r s4 |
    c'16 af e f df4 c8 b\rest s4 |
    g'4 e ef df |
  \barNumberCheck #5
    r16 f ef gf ~ gf gf f ef df2 ~ |
    df16 c df f ~ f f ef df c4 df |
    ef f g8 r s4 |
    s4 s s r16 af g8 |
    s1 |
  \barNumberCheck #10
    s1 |
    d'4 b ef8 g r16 g af f |
    ef16 b c fs, g8. f16 ~ f f e g c,4 |
    f4 a r8 bf e,4 |
    f8 r r f s e8 ~ e4 |
  \barNumberCheck #15
    s4 \mergeDifferentlyDottedOn f'16 bf, a8 r16 af g bf e,8 f |
    e8. f16 ~ f f e8 f4 g |
    af4 f'16 c bf af df af g bf e,4 |
    f16 ef d f b,4 r16 c bf df g, df' c bf |
    s1 |
  \barNumberCheck #20
    s1 |
    r16 c g bf s4 r16 d b c s  << { \stemDown bf8. } \\ { \stemDown s16 c8 } >> |
    <a c>1 |
  \bar "|."
}

vThree = \relative f {
  \global
  \voiceOne
  \barNumberCheck #1
  af4 bf c af |
  bf4 g f16 af c f g, f' e g |
  af,8 r s4 c,16 e g c df, c' bf df |
  e,8 g c4 f,,16 a c f gf, f' ef gf |
  \barNumberCheck #5
    a,8 c a4 \once \tieDown bf ~ bf16 bf c df |
    g,8[ bf] g' r af,16 c ef af bf, af' g bf |
    c,16 ef af c df, c' bf df ef, g bf ef f, ef' df f |
    g,16 f' ef df c2  bf4\prall |
    af4 ~ af16 r r8 e4 c16 f e g |
  \barNumberCheck #10
    af2 g16 b d g af, g' f af |
    b,8 d g4 c,2 ~ |
    c4. b8 c g ~ g16 f e g |
    r8 f4 f8 bf,16 df f bf ~ bf bf af c |
    f,8 g af4 g2 |
  \barNumberCheck #15
    f8 r r4 bf4 g |
    r16 g af b c2 bf4 |
    c4 af bf g |
    af4 f g e |
    << { af4 bf c af } \\ { \voiceThree f4 g af f } >> | %chords?
    << { bf4 g c b   } \\ { \voiceThree g4 e f2   } >> |
    g4 af g8 f g4 |
    f1
  \bar "|."
}

vFour = \relative f {
  \global
  \voiceTwo
  \barNumberCheck #1
    f1 ~ |
    f2 f4 g |
    af4 bf c, df |
    e4 c'8 c, f,4 gf |
    a4 a8 f s2 |
    s4 ef'8 ef, af4 bf |
    c4 df ef f |
    g4 af8 g f df ef4 |
    g,4 ~ g16 af' g f e g bf df c,4 |
    f4 ~ f16 f ef d g4 af |
    b4 g'8 g, c[ af] ef[ f] |
    g2 c, |
    a4 f bf c |
    d8 e f4 c ~ c8. df16 |
  \barNumberCheck #15
    ef8[ ef'] df[ c] bf16 f df bf ~ bf c df bf |
    c4. c8 df2 |
    \once \tieDashed
    c1 ~ |
    c1 ~ |
    c1 ~ |
    c1 ~ |
    c4 r16 f b, d c,2 |
    f1\fermata |
  \bar "|."
}

preludeTwelve = \score {
  \new PianoStaff \with { } <<
    \new Staff = "Up" \with {  } <<
      \new Voice \vOne
      \new Voice \vTwo
    >>
    \new Staff = "Down" \with { \clef bass } <<
      \new Voice \vThree
      \new Voice \vFour
    >>
  >>
  \layout{
    \context {
      \Score
      \editionID ##f prelude.twelve
    }
  }
}

%\preludeTwelve
