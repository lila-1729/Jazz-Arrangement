global= {
  \time 4/4
  \key c \major
  \version "2.24.4"
}

\header {
  title = "I COULD WRITE A BOOK"
  composer = "Rodgers"
  tagline = "@ 2025"
}

% Basis Melody
%
%melodyOne = \new Voice \relative c' {
%  \partial 2 e8 f4 g8~ |
%
%  \repeat volta 2 {
%    	\set Score.voltaSpannerDuration = #(ly:make-moment 1)
%  	g4 r4 b2 | a4 g e d | 
%  	e1~ | e4 g e d | e g e d | e c'2 e,4 | g1~ | g2 a4 b |
%    	\alternative {
%      	\volta 1 { c2 c | c4 d2 b4 | a2 a | g e4 fis | g2 g | 
%		g4 a2 fis4 | g1~ | g4 r4 e f | }
%      	\volta 2 { c'2 c | c4 d2 b4 | bes2 bes | a g4 f | e2 e |
%		d4 c'2 b4 | c1 | r2 e,4 f |}
%    }
%  }
%}

melodyOne = \new Voice \relative c' {
  \partial 2 r8 e8 f8 g8~ |

  \repeat volta 2 {
    	\set Score.voltaSpannerDuration = #(ly:make-moment 1)
  	g4 r4 r8 b8 ais b | a8 g4 r8 r8 e8 d e8~| 
  	e2 r4 r8 dis8 | e8 g r8 g4 e8 d8 e~ | e8 g4 e d e8 | r8 e c'4~ c8 cis8
	r8 e,8 | g2 r4 r8 fis8 | g4 r4 r8 a8 b c~ |
    	\alternative {
      	\volta 1 { c4 r4 r4 r8 c8~  | c8 d4 r8 r8 d8 b8 a~ | a2 r4. a8 |
	g2 r8 e8 fis g~ | g2 r4. g8~ | 
		g8 a8~ a4 r4 r8 fis8 | g2 r2 | r2 r8 e8 f g | }
      	\volta 2 { c4 r4 r4 r8 c8~ | c8 d8~ d4 r4 r8 b8 | bes4 r4 r4 r8
	bes8 | a4 r4 r8 g8 f8 e8~ | e2 r2 |
		r8 d8 c'4 r4 r8 b8 | c1 | r2 e,4 f |}
    }
  }
}

melodyTwo = \new Voice \relative c' {
}

bass = \new Voice \relative c {
  \clef bass
  \partial 2 r2 | 
  c4 g a cis | d fis, g b | c c, c' b | c fis, g b | c e, g d'| c b cis a | 
  d a d, fis | g a g d | e g es c | d f g d | a' c d fis, | g a b dis |
  e g, e gis |  % Hier V-I 
  a cis d a | d, a' d as |  g a ais b |
  a b a gis | a b a f | g b c e, | f e f bes | c b a g | d f g b | c2 c4 a |
  d f, g  g |
}

chordProgression = \chordmode {
   \set noChordSymbol = ""
   r2 | c2:maj7 a:m7 | d:m7 g:7 | c1:maj7 | r2 g2:7 | c:maj7 g:7 | c:maj7
   cis:m7-.5- | d1:m7 | g1:7 |

   c2/e as:7/es | d:m7 g:7 | a:m7  d:7.9- | g:7+ b:7 | e1:m | a2:m7 d:7 |
   d1:m7 | g:7 |

   a2:m a:m7+ | a:m a:m6 | g:m7 c:7 | f:7+ f4:m7 bes:7 | c2:7+ a:7 |
   d2.:m7 g4:7 | c1:6 | d2:m7 g:7|
}

\score {
  \new StaffGroup <<
    \new ChordNames \chordProgression
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
