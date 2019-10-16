\header {
  title = "你怎麼捨得我難過"
  composer = "黄品源"
}

instPiano = \relative c {
  \set Staff.midiInstrument = #"piano" 
  \clef bass
  {<e a b c>4 <e a b c> <e a b c> <e a b c> }
  {<e a b c>  <e a b c> <e a b c> <e a b c> }
  {<e a b c>  <e a b c> <e a b c> <e a b c> }
  {<d f a c>  <d f a c> <d f a c> <d f a c> }
  {<d g f b>  <d g f b> <d g f b> <d g f b> }
  {<c e g b>  <c e g b> <c e g b> <c e g b> }
  {<d f a c>  <d f a c> <d f a c> <d f a c> } % should be 2m9 instead of 2m7
  {<e a b c>  <e a b c> <e a b c> <e a b c> }
  {<f a c d>  <f a c d> <b, d f a> <b d f a> }
  {<e gis b>  <e gis b> <e gis b d> <e gis b d> }
  %\repeat percent 1 {r1}
  \clef treble
  {e''16 f gis d} {e b d gis,} {b f gis d} {e gis b f}
  {e2. gis,8 b8}
  {<a c e>2 r2}
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
    \tuplet 3/2 {c16 d c} {b8 ~ b2.}
    {R1 R1 R1}
}
instPianoTwo = \relative c'{
    \set Staff.midiInstrument = #"piano" 
    
  }

\score {
    <<
    \new Staff \instViol
    \new Staff \instPiano 
        %\new Staff {
    %  \tempo 4 = 68 
    %  \partcombine \instPiano \instViol
    %  }
    >>
  \layout {}
  \midi {}
}