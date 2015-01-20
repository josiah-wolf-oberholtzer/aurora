\version "2.13.30"

\include "notes__include_finger.ly"

\new Score { 
    \new Staff { 
        \once \override Glissando #'style = #'zigzag
        c'2 \glissando 
        c''32
    }   
}
