\book {
  \paper {
    print-all-headers = ##t
  }

  \score {
    \header {
      title = "LKK-JOXF 舊愛新歡"
      composer = "李宗盛"
    }
    \relative c'
    \new Staff {
      \tempo 4 = 80
      \set Staff.midiInstrument = #"alto sax"
      \clef treble
      \key d \major
      \partial 4
      % pick up bar
      \tuplet 6/4 {g'16_\markup {\italic {alto sax}} a b cis d e}
      % bar 1
      g4.. fis16 e4. \tuplet 7/4 {d,32 e fis a b cis d}
      % bar 2
      {e16 cis cis8 ~ cis32 a fis a ~} a8 ~ a2
      % bar 3
      \tuplet 6/4 {d16 d ~ d e e ~ e}
      \tuplet 6/4 {d d ~ d e e ~ e}
      \tuplet 6/4 {d d ~ d e e ~ e}
      {d4}
      % bar 4
      {r8 \tuplet 3/2 {cis16 d e} cis 8 \tuplet 3/2 {a16 a fis} a4. d16 e}
      % bar 5
      {r8 g16 fis e d e8} 
      \tuplet 7/4 {cis16 d cis b a g fis} \tuplet 6/4 {d e fis a b a ~}
      % bar 6
      {a4} \tuplet 11/4 {a,16 b d e fis a b d e fis a~} a2~
        % bar 7
      {a16 g fis e g fis e d} {g fis e fis~} fis4~
      % bar 8
      {fis16 g fis e} {g fis e32 d e16~} e2_\markup {\italic {switch to piano}}
      \break
      \set Staff.midiInstrument = #"Piano"
      % bar 9 - switch to piano
      \clef bass
      {<b,, d g d'>16 q8.~} {q8 <b e a cis>16 q16~} q2
      % bar 10
      {<cis e a e'>16 q8.~} {q8 <cis fis b dis>16 q16~} q2
      % bar 11
      {<f, c' f a>16 q8.~} {q8 <g b d g>16 q16~} q2
      \bar "||"
      % bar 12
      {<c g' c e>1_\markup {\italic {back to main}} } 
      % \bar "|."
    }
    \layout {}
    \midi {}
  }

  \score {
    \relative c
    \new staff {
      \key e \major
      \set Staff.midiInstrument = #"Piano"
      {<b' e gis b>8 q16 <b dis fis b> ~ q2.}
      \bar "||"
      \key c \major
      {<c f a c>8 q16 <c e g c> ~ q2.}
      \bar "||"
    }
    \layout {} 
    \midi {}
  }

  \score {
    \header {
      title = "再回首"
    }
    \relative c''
    \new staff {
      \tempo 4 = 80
      \clef treble
      \key g \major
      \set Staff.midiInstrument = #"Piano"
      <<
      \chords { g1 e:m1 c1 g2 d}
      {g'4. fis8 g2 | g4. a8 g2 | g8. fis16 fis8. e16 e4 \tuplet 3/2 {e8 d c} | b4 g a r}
      {b4. a8   b2 | b4. c8 b2 | b8. a16   a8.   g16 g4  }
      >>
      \bar "||"
      \break
      <<
      \chords {g1  | c1  | g2 a:m7 | c4 d c d | 
               c1 | b:7 | a:7 | d2 d:7}
      { d''4. cis8 d4. e8 | d4. c16 b c2 | b4. ais8 b4. e,8 | g4 fis g a | 
        c2 g4 c | b2. \tuplet 3/2 {e,8 fis g} | b4 a a g | g2 fis4 r4
      }
      { d4. cis8 d4. e8 | d4. c16 b c2 | b4. ais8 b4. e,8 | g4 fis g a | 
        c2 g4 c | b2. \tuplet 3/2 {e,8 fis g} | b4 a a g | g2 fis4 r4
      } 
      >>
      \bar "||"
    }
    \layout {} 
    \midi {}
  }


}