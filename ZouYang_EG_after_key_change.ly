\header {
  title = "走樣 after key change"
  composer = "張宇"
}

instEGI = \relative c {
  \tempo 4 = 54
  \key a \major
  \clef treble
  \set Staff.midiInstrument = #"overdriven guitar"
  { r2 r4 r16 e' a e}
  \mark \markup { \musicglyph #"scripts.segno" }
  {cis'2 b | a1 | r1 | r2 r8 fis16 a cis e fis a ~| a2 b2 | r1}
}

instEGII = \relative c {
  \clef bass
  \key a \major
  \set Staff.midiInstrument = #"distorted guitar"
  {R1} 
  {a'2 gis4. e'8 }
  { fis,4 \tuplet 3/2 {r8 fis8 f} e4 \tuplet 3/2 {r8 e8 dis} }
  {d2 cis | b e4. cis16 b | a2 gis | fis2 cis'2}
}

\score {
  <<
  \time 4/4
  \new Staff \with {instrumentName = #"E.Guitar I"} \instEGI 
  \new Staff \with {instrumentName = #"E.Guitar II"} \instEGII 
  >>
  \layout {}
  \midi {}
}