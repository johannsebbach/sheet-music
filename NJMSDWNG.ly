\header {
  title = "你怎麼捨得我難過"
  composer = "黄品源"
}

\score {
  \relative c
  \new Staff {
     \key a \minor
    \tempo 4 = 68
    \set Staff.midiInstrument = #"string ensemble 1"
    \clef treble 
    % bar 1~2
    { r1 r1 } 
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
    \bar "||"
    \break
    \set Staff.midiInstrument = #"piano" 
    { e16 f gis d} {e b d gis,} {b f gis d} {e gis b f}
    {e2. gis,8 b8}
    {<a c e>2 r2}
  }

  \layout {}
  \midi {}
}