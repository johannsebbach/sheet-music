\header {
  title = "你怎麼捨得我難過 (中段Solo)"
  composer = "黄品源"
}

instEGI = \relative c' {
  {r2 r4 \tuplet 7/4 {a'16 b c d e f g}}
  { a8 a4 c,8 b16 d b8 ~ b4}
  { g'16 g8. ~ g8 b, a16 c a8 ~ a16 c d e }
  { f4. a,8 gis16 b gis8 ~ gis b}
  { a4 ~ a16 b a e a4 b16 cis e8}
  
}
instEGII = \relative c {
}

instStrII = \relative c {
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