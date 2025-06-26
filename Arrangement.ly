
\include "swing.ly"

global= {
  \time 4/4
  \key c \major
  \tempo 4 = 120
  \version "2.24.4"
  \set Score.voltaSpannerDuration = #(ly:make-moment 1)
}

\header {
  title = "I Could Write a Book"
  composer = "Rodgers"
  tagline = "@ 2025"
}

text = \lyricmode {

  % Teil A
  If they asked me I could write a book. 
  A -- bout the way you walk and whis -- per and look, 

  % Teil B 
  % Added: write, finally, oh
  I coul write, write a pre -- face on how we sud -- den -- ly met, 
  so the world oh would ne -- ver for -- get

  % Teil A
  And the sim -- ple se -- cret of the plot
  is just to tell them that I love you a lot. 

  % Teil C
  % Adeed: whole, finally
  Then the whole world dis -- cov -- ers as my book fi -- nal -- ly ends, 
  how to make two lo -- vers of friends.

}



melodyOne = \relative c' {
\tripletFeel 8 {
  % Upbeat
  \partial 2.  r8 e8~ e8 f4 g8~ |

  % A Teil (aa)
  \sectionLabel \markup { \rounded-box \line { A } }
  \section

  g4. b8~ b2 | a4 g4 e4 d8 e8~ | e4 r4 r2 | r4 r8 g8 e d4 e8~ | 
  \break
  e8 g4 e8~ e4 d | e8 c'4. r8 e,4 g8~ | g4 r4 r2 | r4 r8 a8~ a b4 c8~ | 
  \break


  % B Teil (bb)
  \sectionLabel \markup { \rounded-box \line { B } }
  \section

  c4 r4 r8 c4 c8 | c8 d4. r8 b4 a8~ | a4. a8 b a e g~ | g4 r8 e8~ e8 fis4 g8~ | 
  \break 
  g4 r4 e4 g4  | g8 a4. r8 fis8~ fis g~ | g2 r2 | r4  r8 e8~ e8 f4 g8~ |
  \break

  % A Teil (aa)
  % Changed Rhythm to fit text; i.e. love needs more time that whis-, or Is
  % just more time that A-bout
  \sectionLabel \markup { \rounded-box \line { A } }
  \section

  g4. b8~ b2 | a4 g4 e4 d8 e8~ | e2 r2 | r4 g4 e4 d8 e8~ |
  \break
  e8 g4 e8~ e8 d4 e8~ | e8 c'4. r8 e,4 g8~ | g2 r2 | r4 r8 a8~ a b4 c8~ |
  \break

  % C Teil (cc)
  \sectionLabel \markup { \rounded-box \line { C } }
  \section

  c4. c8~ c4 c4 | c8 d4. r8 b4 bes8~ | bes4 bes bes8 g e a8~ | a4 r8 g8~ g8 f4 e8~ |
  \break
  e4 r4 r8 e4 d8~ | d c'4. r8 b4 c8~ | c4 r4 r2 | r2 r2 |
  \break


  % Solo
  \sectionLabel \markup { \rounded-box \line { Solo } }
  \section

  g4. b8~ b2 | a4 g4 e4 d8 e8~ | e4 r4 r2 | r4 r8 g8 e d4 e8~ | 
  \break
  e8 g4 e8~ e4 d | e8 c'4. r8 e,4 g8~ | g4 r4 r2 | r4 r8 a8~ a b4 c8~ | 
  \break
  c4 r4 r8 c4 c8 | c8 d4. r8 b4 a8~ | a4. a8 b a e g~ | g4 r8 e8~ e8 fis4 g8~ | 
  \break 
  g4 r4 e4 g4  | g8 a4. r8 fis8~ fis g~ | g2 r2 | r1 |
  \break

  \break

  % Blocksatz
  \sectionLabel \markup { \rounded-box \line { Blocksatz } }
  \section

  g4. b8~ b2 | a4 g4 e4 d8 e8~ | e4 r4 r2 | r4 r8 g8 e d4 e8~ | 
  \break
  e8 g4 e8~ e4 d | e8 c'4. r8 e,4 g8~ | g4 r4 r2 | r4 r8 a8~ a b4 c8~ | 
  \break
  c4 r4 r8 c4 c8 | c8 d4. r8 b4 a8~ | a4. a8 b a e g~ | g4 r8 e8~ e8 fis4 g8~ | 
  \break 
  g4 r4 e4 g4  | g8 a4. r8 fis8~ fis g~ | g2 r2 | r1 |
  \break

  \bar "|."

  
}}


melodyTwo = \new Voice \relative c {
\tripletFeel 8 {
  \clef bass 
  % Upbeat
  \partial 2. r4 r2 |

  % A Teil (aa)
  \section
  e4 r4 r8 b c d8~ | d2 r8 g b, c~ | c4 r8 g'8 a g d' c8~ | c4 r4 r2 |
  b2 g4 f | c4. bes'8~ bes2 | r8 a8 c8 a8 f8 c d b'~ | b2 r2 | 

  % B Teil (bb)
  \section
  % Should there be rest 4.
  r8 g8 e8 as8~ as4 r4 | f4. e8 f4 r4 | r8 a g e d4 r4 | g4-. r4 r2 |
  r8 d dis e~ e4 r4 | r8 a, b c~ c r8 r4 | r8 a g a g es e g~ | g4 r8 c8~ c d4 e8~ | 

  % A Teil (aa)
  \section
  e4 r4 r8 b c d8~ | d2 r8 g b, c~ | c4 r8 g'8 a g d' c8~ | c4 r4 r2 |
  b2 g8 f4 c8~  | c4. bes'8~ bes2 | r8 a8 c8 a8 f8 c d b'~ | b4 r8 f8~ f g,4 as8 | 

  % C Teil (cc)
  \section
  a4. r8 gis'4 r4 | a4. g8 a4 r4 | r8 g f d c4 r4 | f4-. r4 r2 |
  r8 bes, b c~ c4 a'4~ | a4 r4 r8 g4 c,8~ | c4 r4 r2 | r1 |

  \section

  
}}

melodyThree = \new Voice \relative c' {

  % Upbeat
  \partial 2. r4 r8 e8 f8 g8~ |

  % A Teil (aa)
  \section
  g4 r4 r8 c8 b c | a8 g4. r8 e8 d e8~| 
  e4 r4 r8 dis8~ \accent dis e8~ | e8 g8 r4 r8  d8 dis e~ |
  e4 r4  r8 g8 e d | e8 c'4. r8 dis,8 e g~ |
  g4 r4 r8 fis8~ \accent fis a~ | a8 g r4 r8 a8 c b | \break

  % B Teil (bb)
  \section
  d8 c4. r4 r8 c8~  | c8 d4.  r8  b8 a b | 
  a8 a4. r8 es8~ \accent es d8~ | d8 g8 r4 r8 e!8 fis b | 
  a8 g4. r4 r8 g8~ | g8 a4.  r8 e g fis8 | a8 a4. r8 a8 \accent  b8 g~ |
  g4 r4 r8 e8 f g |  \break

  % A Teil (aa)
  \section
  g4 r4 r8 c8 b c | a8 g4. r8 e8 d e8~| 
  e4 r4 r8 dis8~ \accent dis e8~ | e8 g8 r4 r8  d8 dis e~ |
  e4 r4  r8 g8 e d | e8 c'4. r8 dis,8 e g~ |
  g4 r4 r8 fis8~ \accent fis a~ | a8 g r4 r8 a8 c b~ | \break

  % C Teil (cc)
  \section
  b8 c4. r8 gis c8 d8~ |  d8 c8 r4  r8 f8 d b8~ | 
  b8 bes4. r4 r8 bes8~ \accent | bes a4. r8 g8 g8 f8~ | 
  f8 e4. r8 e g e~ | e8 d r4 r8 c' d b~ | 
  b c4. r4 r8 g~ \accent | g8 f4. r8 e8 f g | \break

  % Solo
  \section

  c1

  \break

  % Blocksatz
  \section

  c1

  \bar "|."

  
}



bass = \new Voice \relative c {
  \clef bass

  % Upbeat
  \partial 2. r4 r2 | 

  % A Teil 
  \section
  c4 g a c | d f, g b | c e c b | c e g, b | 
  c e g g,| c b cis a | d a f a | g b g' d |

  % B Teil
  \section
  e c es c | d f g g, | a c d fis, | g a b dis | 
  e g e b | a c d a | d e f d |  g f d b | 

  % A Teil
  \section
  c4 g a c | d f, g b | c e c b | c e g, b | 
  c e g g,| c b cis a | d a f a | g b g' e |

  % C Teil
  \section
  a e c e | a b a f | g b, c e | f e f bes | 
  c b a g | d f g b | c4 r4 r2 | r1 |

  \section
}


chordProgression = \chordmode {
   \set noChordSymbol = ""

   % Upbeat
   \partial 2. r4 r2 |  

   % A Teil (aa)
   c2:maj7 a:m7 | d:m7 g:7 | c1:maj7 | c2:maj7 g2:7 | c:maj7 g:7 | c:maj7
   cis:m7-.5- | d1:m7 | g1:7 |

   % B Teil (bb)
   % Changed d:7.9
   c2/e as:7/es | d:m7 g:7 | a:m7  d:7.9 | g:7+ b:7 | e1:m | a2:m7 d:7 |
   d1:m7 | g:7 |

   % A Teil (aa)
   c2:maj7 a:m7 | d:m7 g:7 | c1:maj7 | c2:maj7 g2:7 | c:maj7 g:7 | c:maj7
   cis:m7-.5- | d1:m7 | g1:7 |

   % C Teil (cc)
   a2:m a:m7+ | a:m a:m6 | g:m7 c:7 | f:7+ f4:m7 bes:7 | c2:7+ a:7 |
   d2.:m7 g4:7 | c1:6 | d2:m7 g:7|
}

\score {
  \new StaffGroup <<
    \new ChordNames \chordProgression
    \new Voice = "melSimple" \melodyOne
    \new Lyrics \lyricsto melSimple \text
    \new Staff \with { instrumentName = "Piano " }
    << \global \melodyTwo >>
    \new Staff \with { instrumentName = "Cello " }
    << \global \bass >>
  >>
  \layout { }
  \midi { }
}
