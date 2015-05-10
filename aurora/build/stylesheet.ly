\version "2.17.19"

\header {
    composer = \markup {
        \column {
            \override #'(font-name . "Didot")
                \fontsize #3 "Josiah Wolf Oberholtzer (1984)"
            " "
        }
    }
    tagline = \markup { }
    title = \markup {
        \column {
            \center-align {
                \override #'(font-name . "Didot")
                    \fontsize #16 {
                        \line { AURORA }
                    }
                \vspace #1
                \override #'(font-name . "Didot Italic")
                    \fontsize #4 {
                        \line { for Ensemble Kaleidoskop }
                        \null
                        \null
                    }
            }
        }
    }
}

\paper {
    indent = 20\mm
    short-indent = 15\mm

    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 10\mm

    oddHeaderMarkup = \markup {}
    evenHeaderMarkup = \markup {}
    oddFooterMarkup = \markup
        \fill-line {
            \override #'(font-name . "Didot")
                \bold \fontsize #3 "Aurora"
            \concat {
                \override #'(font-name . "Didot")
                    \bold \fontsize #3
                        \on-the-fly #print-page-number-check-first
                        \fromproperty #'page:page-number-string
                }
            }
    evenFooterMarkup = \markup
        \fill-line {
            \concat {
                \override #'(font-name . "Didot")
                    \bold \fontsize #3
                        \on-the-fly #print-page-number-check-first
                        \fromproperty #'page:page-number-string
                }
            \override #'(font-name . "Didot")
                \bold \fontsize #3 "Aurora"
            }
    print-first-page-number = ##t
    print-page-number = ##t
    max-systems-per-page = 1
    page-breaking = #ly:optimal-breaking
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 12)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 12)
        (minimum-distance . 18)
        (padding . 12)
        (stretchability . 20)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 8)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 10)
        (padding . 0)
        (stretchability . 0)
    )
}

\layout {
    \context {
        \Staff
        \name BowingStaff
        \type Engraver_group
        \alias Staff
        \remove Bar_engraver
        \override Beam.stencil = ##f
        \override BreathingSign.font-size = #5
        \override Clef.transparent = ##t
        \override Dots.transparent = ##t
        \override Glissando.bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
        \override Glissando.zigzag-length = #1
        \override Glissando.zigzag-width = #2
        \override MultiMeasureRest.transparent = ##t
        \override MultiMeasureRestNumber.stencil = ##f
        \override NoteHead.stencil = #ly:text-interface::print
        \override NoteHead.text = \markup { \halign #0.7 \draw-circle #0.6 #0.4 ##f }
        \override Rest.transparent = ##t
        \override StaffSymbol.line-positions = #'(-4 0 4)
        \override StaffSymbol.staff-space = #(magstep -3)
        \override Stem.stencil = ##f
        \override Flag.stencil = ##f
        \override TimeSignature.stencil = ##f
        fontSize = #-3
    }
    \context {
        \Staff
        \name FingeringStaff
        \type Engraver_group
        \alias Staff
        \override Glissando.zigzag-length = #2
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
		\override BarLine.layer = #5
		\override BarNumber.break-visibility = #'#(#f #t #t)
		\override BarNumber.font-size = #4
		\override BarNumber.padding = #5
		\override BarNumber.self-alignment-X = #CENTER
		\override BarNumber.stencil = #(make-stencil-boxer 0.1 1.0 ly:text-interface::print)
		\override Beam.auto-knee-gap = #10
		\override Beam.breakable = ##t
		\override DynamicLineSpanner.Y-extent = #'(-1.5 . 1.5)
		\override DynamicLineSpanner.staff-padding = #2
		\override Glissando.breakable = ##t
		\override Glissando.dash-fraction = #0
		\override Glissando.dash-period = #1.5
		\override Glissando.minimum-length = #6
		\override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
		\override Glissando.thickness = #2
		\override Hairpin.minimum-length = #5
		\override InstrumentName.font-series = #'bold
		\override InstrumentName.font-shape = #'upright
		\override InstrumentName.font-size = #2
		\override InstrumentName.padding = #4
		\override MetronomeMark.font-series = #'bold
		\override MetronomeMark.font-size = #4
		\override MetronomeMark.padding = #5
		\override NoteColumn.ignore-collision = ##t
		\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/32)
		\override SpanBar.layer = #5
		\override StaffSymbol.layer = #1
		\override Stem.stemlet-length = #1.5
		\override TextScript.staff-padding = #4
		\override TextSpanner.thickness = #2
		\override TrillPitchAccidental.layer = #4
		\override TrillPitchAccidental.whiteout = ##t
		\override TrillPitchHead.layer = #4
		\override TrillPitchHead.whiteout = ##t
		\override TupletBracket.padding = #2
		\override TupletNumber.font-size = #2
		harmonicDots = ##t
		subdivideBeams = ##t
    }
}