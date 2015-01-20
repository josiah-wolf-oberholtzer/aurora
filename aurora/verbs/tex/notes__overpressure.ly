\version "2.13.30"

\include "notes__include_bowing.ly"
        
\new Score { 
    \new Staff { 
        \clef percussion
        \override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
        \override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
        \override TextSpanner #'bound-details #'right-broken #'text = ##f
        \override TextSpanner #'dash-fraction = #1
        \override TextSpanner #'direction = #up
        e'1 \glissando \startTextSpan
        c'1 \stopTextSpan
    }   
}
