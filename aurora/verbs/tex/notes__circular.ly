\version "2.13.30"

\include "notes__include_bowing.ly"
        
\new Score { 
    \new Staff { 
        \clef percussion
        \once \override Glissando #'style = #'zigzag
        c'1 \glissando
        c'1
    }   
}