
leadSheet = {
  \clef "treble"
  \key C \major
  \time 4/4

  \set ChordNames.restrainOpen = ##t
  \chordmode {
    \set minimumFret = #1
    <c e g>1
    <f a c>1
    <g b d>1
    <c e g>1
  }

  \relative c' {
    \voiceOne
    c4 d e f g a b c
  }
}

\score {
  <<
    \new ChordNames {
      \leadSheet
    }
    \new Staff {
      \leadSheet
    }
  >>
}
