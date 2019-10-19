\header {
  title = "你怎麼捨得我難過 (v1.1)"
  composer = "黄品源"
}
instStrI = \relative c' {
  \set Staff.midiInstrument = #"string ensemble 1"
  R1 R1
  % bar 3
  { e'2 a4. e8}
  { g8 a f g f d4 c8}
  % bar 5
  { b2 c4 d8 g | f e ~ e4 ~ e8 d c d }
  % bar 7
  { d c ~ c8. a16 f16 a e a f'8 g}
  % bar 8
  { g8 f f e ~ e4 d16 c b c}
  { d4. e8 f4. d8 }
  \time 2/4
  % bar 10
  { e2 }
  \time 4/4
  % bar 11
  {r2 r4} 
  \clef bass 
  { e,16 d32 c b a gis f} {e1}
  {R1}
}
instStrII = \relative c {
  \set Staff.midiInstrument = #"string ensemble 1" 
  R1 R1
  { r8. e'16 a16 e b' e, c'4 a16 e d'8} 
  % bar 4
  { e8 f d e d a ~ a4 } 
  % bar 5
  { r16 g b g d' g, f' g, g'8 a4 d,8}
  { d8 e ~ e2. } 
  % bar 7
  { r8 a ~ a8. e16} {c'16 e, b' e,} {d'8 e }
  { e8 d d c ~ c2 }
  % bar 9
  {r4 c16 b a f d4. c8} 
  \time 2/4
  % bar 10
  \tuplet 3/2 {c16 d c} {b8 ~ b4 ~}
  \time 4/4
  {b2}
  %\set Staff.midiInstrument = #"cello" 
  \clef bass
  {e,,8\staccato d\staccato  c\staccato b\staccato  | gis2\tenuto e2}
  {a1}
}

instPianoI = \relative c' {
  \set Staff.midiInstrument = #"acoustic grand" 
  \clef bass
  {R1}
  {r2 r4 r8 e,,8}
  {a2. ~ a8 e8}
  {d2. ~ d8 a'8}
  {g2. ~ g8 d8}
  {c2. ~ c8 e8}
  {d2. ~ d8 d8}
  {a'2. ~ a8 e8}
  {f2 b,2}
  \time 2/4
  {e2}
  \clef treble
  \time 4/4
  \relative c'' {
  {e'16 f gis d} {e b d gis,} {b f gis d} {e gis, b f}
  {e2 ~ e8 gis,8 b4}
  {a1}
  }
}
instPianoII = \relative c {
  \set Staff.midiInstrument = #"bright acoustic" 
  \clef bass
  % bar 1 ~ 3
  \tempo 4 = 68
  {\repeat unfold 12 {<e a b c>4} }
  % bar 4
  {\repeat unfold 4 {<d f a c>}}
  % bar 5
  {\repeat unfold 4 {<d g f b>}}
  % bar 6
  {\repeat unfold 4 {<c e g b>}}
  % bar 7 (should be 2m9 instead of 2m7)
  {\repeat unfold 4 {<d f a c>}}
  % bar 8
  {\repeat unfold 4 {<e a b c>}}
  % bar 9
  {\repeat unfold 2 {<f a c d>} \repeat unfold 2 {<b, d f a>}}
  % bar 10
  \time 2/4
  {<e gis b>  <e gis b>} 
  \time 4/4
  {<e gis b d>1 }
  {R1}
  {\repeat unfold 4 {<e a b c>4} }
}
\score {
  <<
  \time 4/4
  \new Staff 
    \with {instrumentName = #"String I" shortInstrumentName = #"StrI"} 
    \instStrI
  \new Staff
    \with {instrumentName = #"String II" shortInstrumentName = #"StrII"} 
    \instStrII
  \new Staff 
    \with {instrumentName = #"Piano I" shortInstrumentName = #"PnI"} 
    \instPianoI
  \new Staff 
    \with {instrumentName = #"Piano II" shortInstrumentName = #"PnII"} 
    \instPianoII
  >>
  \layout {}
  \midi {}
}