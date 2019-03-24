\header {
  title = "LKK-JOXF 李宗盛"
  composer = "Li"
}

\score {
  \relative c' {
    \key d \major
    % pick up bar
    \partial 4
    \tuplet 6/4 {g'16 a b cis d e} 
    % bar 1
    g4. f8 e2
    % bar 2
    \tuplet 7/4 {d,16 e fis a b cis d} \tuplet 6/4 {e cis cis a fis a} a2
    % bar 3
    {d16 d ~ d e e ~ e d d ~ d e e ~ e d8 e16 d}
    % bar 4
    {cis16 d e cis a a fis a ~ a4. d16 e}
    % bar 5
    {r8 g16 fis e d e8} 
    \tuplet 7/4 {cis16 d cis b a g fis} \tuplet 6/4 {d e fis a b a ~}
    % bar 6
    {a4} \tuplet 11/4 {a,16 b d e fis a b d e fis a~} a2~
    % bar 7
    {a16 g fis e g fis e d} {g fis e fis~} fis4~
    % bar 8
    {fis16 g fis e} {g fis e32 d e16~} e2
    \break
    % bar 9 - switch to piano
    \clef bass
    {<b,, d g d'>16 q8.~} {q8 <b e a c>16 q16~} q2
    % bar 10
    {<cis e a e'>16 q8.~} {q8 <cis fis b dis>16 q16~} q2
    % bar 11
    {<f, c' f a>16 q8.~} {q8 <g b d g>16 q16~} q2
  }
  \layout {}
  \midi {}
  }
