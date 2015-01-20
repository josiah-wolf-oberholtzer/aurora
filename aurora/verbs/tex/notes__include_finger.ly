\layout {
    \context {
        \Score
        \override Glissando #'breakable = ##t
        \override Glissando #'dash-fraction = #0
        \override Glissando #'dash-period = #1.75
        \override Glissando #'minimum-length = #8
        \override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods
        \override Glissando #'thickness = #3
        \override Glissando #'zigzag-length = #1
        \override Glissando #'zigzag-width = #2
    }
}
