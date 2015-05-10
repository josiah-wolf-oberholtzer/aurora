\header {
	composer = #"Josiah Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	subtitle = #"for String Orchestra"
	tagline = \markup { "" }
	title = #"mbrsi/aurora"
}

\paper {
	#(define page-breaking ly:minimal-breaking)
	evenFooterMarkup = \markup { \fill-line { ""mbrsi/aurora" - josiah wolf oberholtzer" } }
	indent = #0
	left-margin = 1.5\in
	max-systems-per-page = #1
	oddFooterMarkup = \markup { \fill-line { "josiah wolf oberholtzer - "mbrsi/aurora"" } }
	print-page-number = ##t
	ragged-bottom = ##f
	ragged-last-bottom = ##f
	ragged-right = ##f
	right-margin = 1.0\in
	tagline = ##f
}

\layout {
    \context {
        \Staff
        \name BowingStaff
        \type Engraver_group
        \alias Staff
        \remove Bar_engraver
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
        \override NoteHead #'text = \markup { \halign #0.7 \draw-circle #0.6 #0.4 ##f }
        \override Rest #'transparent = ##t
        \override StaffSymbol #'line-positions = #'(-4 0 4)
        \override StaffSymbol #'staff-space = #(magstep -3)
        \override Stem #'stencil = ##f
        \override TimeSignature #'stencil = ##f
        fontSize = #-3
    }
    \context {
        \Staff
        \name FingeringStaff
        \type Engraver_group
        \alias Staff
        \override Glissando #'zigzag-length = #2
    }
    \context {
        \StaffGroup
        \name PerformerStaffGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts BowingStaff
        \accepts FingeringStaff
    }
    \context {
        \StaffGroup
        \name SectionStaffGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts PerformerStaffGroup
    }
    \context {
        \Score
        \accepts SectionStaffGroup
		\override BarLine #'layer = #5
		\override BarNumber #'break-visibility = #'#(#f #t #t)
		\override BarNumber #'font-size = #4
		\override BarNumber #'padding = #5
		\override BarNumber #'self-alignment-X = #CENTER
		\override BarNumber #'stencil = #(make-stencil-boxer 0.1 1.0 ly:text-interface::print)
		\override Beam #'auto-knee-gap = #10
		\override Beam #'breakable = ##t
		\override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
		\override DynamicLineSpanner #'staff-padding = #2
		\override Glissando #'breakable = ##t
		\override Glissando #'dash-fraction = #0
		\override Glissando #'dash-period = #1.5
		\override Glissando #'minimum-length = #6
		\override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods
		\override Glissando #'thickness = #2
		\override Hairpin #'minimum-length = #5
		\override InstrumentName #'font-series = #'bold
		\override InstrumentName #'font-shape = #'upright
		\override InstrumentName #'font-size = #2
		\override InstrumentName #'padding = #4
		\override MetronomeMark #'font-series = #'bold
		\override MetronomeMark #'font-size = #4
		\override MetronomeMark #'padding = #5
		\override NoteColumn #'ignore-collision = ##t
		\override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 32)
		\override SpanBar #'layer = #5
		\override StaffSymbol #'layer = #1
		\override Stem #'stemlet-length = #1.5
		\override TextScript #'staff-padding = #4
		\override TextSpanner #'thickness = #2
		\override TrillPitchAccidental #'layer = #4
		\override TrillPitchAccidental #'whiteout = ##t
		\override TrillPitchHead #'layer = #4
		\override TrillPitchHead #'whiteout = ##t
		\override TupletBracket #'padding = #2
		\override TupletNumber #'font-size = #2
		harmonicDots = ##t
		subdivideBeams = ##t
    }
}