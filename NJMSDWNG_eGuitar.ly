\header {
  title = "你怎麼捨得我難過 (中段Solo)"
  composer = "黄品源"
}

instEGI = \relative c' {
  \set Staff.midiInstrument = #"overdriven guitar"
  {r2 r4 \tuplet 7/4 {a'16 b c d e f g}}
  { a8 a4 c,8 b16 d b8 ~ b4}
  { g'16 g8. ~ g8 b, a16 c a8 ~ a16 c d e }
  { f4. a,8 gis16 b gis8 ~ gis b}
  { a4 ~ a16 b a e a4 b16 cis e8}
  % duet start (small numbers)
  {a16 f c a'  f c a' c, b'2}
  { b16 gis e b'  gis e b' e cis'4. e,32 f g a }
  { bes4 ~ bes16 a g a bes4 ~ bes a16 d f}
}
instEGII = \relative c'' {
  \set Staff.midiInstrument = #"overdriven guitar"
  \repeat unfold 5 {R1}
% duet start
  {f16 d a f'  d a f' a, d2}
  {gis16 e d gis  e d gis d a'4. c,32 d e f }
  { g4 ~ g16 f e f gis4 ~ gis16 f b, d} 
  \time 2/4
  { b8 b b b}
  \time 4/4
}

instStrII = \relative c {
  \tempo 4 = 68
  \set Staff.midiInstrument = #"string ensemble 1"
  {e'16 a b c e,16 a b c cis4 e }
}

\score {
 <<
  \time 4/4
  \new Staff 
    \with {instrumentName = #"E. Guitar I" shortInstrumentName = #"EGI"} 
    \instEGI
  \new Staff 
    \with {instrumentName = #"E. Guitar II" shortInstrumentName = #"EGII"} 
    \instEGII
  \new Staff
    \with {instrumentName = #"String II" shortInstrumentName = #"StrII"} 
    \instStrII
  >>
  \layout {}
  \midi {}
}