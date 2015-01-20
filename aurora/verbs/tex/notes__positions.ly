\version "2.13.30"

\include "notes__include_bowing.ly"

\new Score {
    \new Staff \with {
        \override TextScript #'staff-padding = #0
    } {
%        \textLengthOn
        \clef percussion
        g'1 ^ \markup { \italic "molto sul tasto" \null }
        e'1 ^ \markup { \italic "sul tasto" \null }
        c'1 ^ \markup { \italic "ordinary" \null }
        a1 _ \markup  { \italic "sul ponticello" \null }
        f1 _ \markup  { \italic "molto sul ponticello" \null }
    }
}
