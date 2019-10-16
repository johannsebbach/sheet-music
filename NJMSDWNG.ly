\header {
  title = "你怎麼捨得我難過"
  composer = "黄品源"
}

instPiano = \relative c {
  \set Staff.midiInstrument = #"piano" 
  \clef bass
  % bar 1 ~ 3
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
  {\repeat unfold 2 R1}
}    
 instViol = \relative c {
    \set Staff.midiInstrument = #"string ensemble 1" 
    R1 R1
    { r8. e'16 a16 e b' e, c'4 a16 e d'8} 
    % bar 4
    { e8 f d e d a ~ a4 } 
    % bar 5
    { r16 g b g d' g, f' g, g'8 a4 g8}
    { d8 e ~ e2. } 
    % bar 7
    { r8 a ~ a8. e16} {c' e, b' e,} {a e a c }
    { e8 d d c ~ c2 }
    {r4 c16 b a f d4. c8} 
    \time 2/4
    \tuplet 3/2 {c16 d c} {b8 ~ b4 ~}
    \time 4/4
    {b1}
    {R1 R1}
}
instPianoTwo = \relative c' {
  \set Staff.midiInstrument = #"acoustic piano" 
  \clef bass
  {r1}
  {r2 r4 r8 e,,8}
  {a2. ~ a8 e8}
  {d1}
  \repeat unfold 5 {r1}
  \time 2/4
  {r2}
  \time 4/4
  \clef treble
  \relative c' {
  {e'16 f gis d} {e b d gis,} {b f gis d} {e gis b f}
  {e2. gis,8 b8}
  {<a c e>2 r2}
  }
}

\score {
  <<
  \time 4/4
  \new Staff \instViol
  \new Staff \instPianoTwo
  \new Staff \instPiano
  >>
  \layout {}
  \midi {}
}