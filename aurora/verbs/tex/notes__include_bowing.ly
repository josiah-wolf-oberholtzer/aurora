\layout {
    \context {
        \Score        
        \override Glissando #'breakable = ##t
        \override Glissando #'dash-fraction = #0
        \override Glissando #'dash-period = #1.5
        \override Glissando #'minimum-length = #16
        \override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods
        \override Glissando #'thickness = #5
        \override TextScript #'padding = #1.5
        \override TextScript #'staff-padding = #4
        \override TextSpanner #'thickness = #5
    }
    \context {
        \Staff
        \remove Bar_engraver
        \consists Bar_number_engraver  
        \override BarNumber #'outside-staff-priority = #1000
        \override Beam #'stencil = ##f  
        \override BreathingSign #'font-size = #5
        \override Clef #'transparent = ##t
        \override Dots #'transparent = ##t
        \override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
        \override Glissando #'zigzag-length = #1
        \override Glissando #'zigzag-width = #2
        \override MultiMeasureRest #'transparent = ##t
        \override MultiMeasureRestNumber #'stencil = ##f
        \override NoteHead #'stencil = #ly:text-interface::print
        \override NoteHead #'text = \markup { \halign #-0.7 \draw-circle #0.6 #0.4 ##f }
        \override Rest #'transparent = ##t
        \override StaffSymbol #'line-positions = #'(-4 0 4)
        % \override StaffSymbol #'staff-space = #(magstep -3)
        \override Stem #'stencil = ##f
        \override TimeSignature #'stencil = ##f
        % fontSize = #-3
    }
}
