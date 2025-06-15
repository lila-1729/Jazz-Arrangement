global= {
  \time 4/4
  \key c \major
  \version "2.24.4"
  \set Score.voltaSpannerDuration = #(ly:make-moment 1)
}

\header {
  title = "I Could Write a Book"
  composer = "Rodgers"
  tagline = "@ 2025"
}


melodyOne = \new Voice \relative c' {

  % Upbeat
  \partial 2 r8 e8 f8 g8~ |

  % A Teil (aa)
  \sectionLabel \markup { \rounded-box \line { A } }
  \section
  g4 r4 r8 c8 b c | a8 g4. r8 e8 d e8~| 
  e4 r4 r8 dis8~ \accent dis e8~ | e8 g8 r4 r8  d8 dis e~ |
  e4 r4  r8 g8 e d | e8 c'4. r8 dis,8 e g~ |
  g4 r4 r8 fis8~ \accent fis a~ | a8 g r4 r8 a8 c b | \break

  % B Teil (bb)
  \sectionLabel \markup { \rounded-box \line { B } }
  \section
  d8 c4. r4 r8 c8~  | c8 d4.  r8  b8 a b | 
  a8 a4. r8 es8~ \accent es d8~ | d8 g8 r4 r8 e!8 fis b | 
  a8 g4. r4 r8 g8~ | g8 a4.  r8 e g fis8 | a8 a4. r8 a8~ \accent a8 b~ |
  b8 g8 r4 r8 e8 f g~ |  \break

  % A Teil (aa)
  \sectionLabel \markup { \rounded-box \line { A } }
  \section
  g4 r4 r8 c8 b c | a8 g4. r8 e8 d e8~| 
  e4 r4 r8 dis8~ \accent dis e8~ | e8 g8 r4 r8  d8 dis e~ |
  e4 r4  r8 g8 e d | e8 c'4. r8 dis,8 e g~ |
  g4 r4 r8 fis8~ \accent fis a~ | a8 g r4 r8 a8 c b~ | \break

  % C Teil (cc)
  \sectionLabel \markup { \rounded-box \line { C } }
  \section
  b8 c4. r8 gis c8 d8~ |  d8 c8 r4  r8 f8 d b8~ | 
  b8 bes4. r4 r8 bes8~ \accent | bes a4. r8 g8 g8 f8~ | 
  f8 e4. r8 e g e~ | e8 d r4 r8 c' d b~ | 
  b c4. r4 r8 g~ \accent | g8 f4. r8 e8 f g | \break

  % Solo
  \sectionLabel \markup { \rounded-box \line { Solo } }
  \section

  c1

  \break

  % Blocksatz
  \sectionLabel \markup { \rounded-box \line { Blocksatz } }
  \section

  c1

  \bar "|."

  
}

melodyTwo = \new Voice \relative c' {
	r2 r8 b' g b~ b 
}

bass = \new Voice \relative c {
  \clef bass

  % Upbeat
  \partial 2 r2 | 

  % A Teil 
  \section
  c4 g a c | d f, g b | c e c b | c fis, g b | 
  c e g g,| c b cis a | d a f a | g b f' d |

  % B Teil
  \section
  e c es c | d f g g, | a c d fis, | g a b dis | 
  e g, e gis | a c d a | d e f d |  g a ais b |

  % A Teil
  \section
  c4 g a c | d f, g b | c e c' b | c fis, g b | 
  c e, g d'| c b cis a | d a d, fis | g a g d |

  % C Teil
  \section
  a b a gis | a b a f | g b c e, | f e f bes | 
  c b a g | d f g b | c2 c4 a | d f, g  g |

  \section
}

chordProgression = \chordmode {
   \set noChordSymbol = ""

   % Upbeat
   \partial 2 r2 |  

   % A Teil (aa)
   c2:maj7 a:m7 | d:m7 g:7 | c1:maj7 | c2:maj7 g2:7 | c:maj7 g:7 | c:maj7
   cis:m7-.5- | d1:m7 | g1:7 |

   % B Teil (bb)
   c2/e as:7/es | d:m7 g:7 | a:m7  d:7.9- | g:7+ b:7 | e1:m | a2:m7 d:7 |
   d1:m7 | g:7 |

   % A Teil (aa)
   c2:maj7 a:m7 | d:m7 g:7 | c1:maj7 | r2 g2:7 | c:maj7 g:7 | c:maj7
   cis:m7-.5- | d1:m7 | g1:7 |

   % C Teil (cc)
   a2:m a:m7+ | a:m a:m6 | g:m7 c:7 | f:7+ f4:m7 bes:7 | c2:7+ a:7 |
   d2.:m7 g4:7 | c1:6 | d2:m7 g:7|
}

\score {
  \new StaffGroup <<
    \new ChordNames \chordProgression
    \new ChordGrid \chordProgression
    \new Staff \with { instrumentName = "Flute " }
    << \global \melodyOne >>
    \new Staff \with { instrumentName = "" }
    << \global \melodyTwo >>
    \new Staff \with { instrumentName = "Bass" }
    << \global \bass >>
  >>
  \layout { }
  \midi { }
}
