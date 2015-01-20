% Abjad revision 4356
% 2011-05-15 23:34

\version "2.13.37"
\include "english.ly"
\include "/media/Work/dev/scores/abjad/cfg/abjad.scm"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 10)

\header {
	composer = #"Josiah Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	instrument = #"Contrabass 01"
	tagline = \markup { "" }
	title = #"mbrsi/aurora"
}

\paper {
	#(define page-breaking ly:optimal-breaking)
	between-system-spacing = #'((space . 0) (padding . 2) (stretchability . 0) (minimum-distance . 0))
	bottom-margin = 0.75\in
	bottom-system-spacing = #'((space . 0) (padding . 4) (stretchability . 0) (minimum-distance . 0))
	evenFooterMarkup = \markup { \fill-line { "contrabass 01 - mbrsi/aurora - josiah wolf oberholtzer" } }
	left-margin = 0.75\in
	max-systems-per-page = #8
	oddFooterMarkup = \markup { \fill-line { "josiah wolf oberholtzer - mbrsi/aurora - contrabass 01" } }
	print-page-number = ##t
	ragged-bottom = ##f
	ragged-last-bottom = ##t
	ragged-right = ##t
	right-margin = 0.75\in
	top-margin = 0.75\in
	top-system-spacing = #'((space . 0) (padding . 4) (stretchability . 0) (minimum-distance . 0))
}

\score {
	\new Score \with {
		\remove Bar_number_engraver
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
		\override Glissando #'dash-period = #1.75
		\override Glissando #'minimum-length = #8
		\override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods
		\override Glissando #'thickness = #2.5
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
		\override TextScript #'padding = #1.5
		\override TextScript #'staff-padding = #4
		\override TextSpanner #'thickness = #3
		\override TrillPitchAccidental #'layer = #4
		\override TrillPitchAccidental #'whiteout = ##t
		\override TrillPitchHead #'layer = #4
		\override TrillPitchHead #'whiteout = ##t
		\override TupletBracket #'padding = #3.5
		\override TupletNumber #'font-size = #2
		\override TupletNumber #'padding = #1.5
		beatLength = #(ly:make-moment 1 4)
		harmonicDots = ##t
		subdivideBeams = ##t
	} <<
		\context StaffGroup = "Contrabass 01" \with {
			\remove Span_bar_engraver
			\remove System_start_delimiter_engraver
		} <<
			\new Staff \with {
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
				\override StaffSymbol #'staff-space = #(magstep -3)
				\override Stem #'stencil = ##f
				\override TimeSignature #'stencil = ##f
				fontSize = #-3
			} {
				\clef "percussion"
				\time 3/4
				\tempo 4 = 66
				\compressFullBarRests
				{
					% performer: Contrabass 01, offset: 0, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						e'32 \glissando \startTextSpan
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 3/16, magnitude: 15/32
					\stopStaff
					r16
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 21/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						e'32
					}
				}
				{
					% performer: Contrabass 01, offset: 13/16, magnitude: 1/4
					\stopStaff
					r16
					r8
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 17/16, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 41/32, magnitude: 13/16
					\stopStaff
					r16.
					r8
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 67/32, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 73/32, magnitude: 11/16
					\stopStaff
					r16.
					r8
					r4
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 95/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 25/8, magnitude: 21/32
					\stopStaff
					r8
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 121/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
						f32
					}
				}
				{
					% performer: Contrabass 01, offset: 63/16, magnitude: 29/32
					\stopStaff
					r16
					r4
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 155/32, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						e'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 159/32, magnitude: 5/32
					\stopStaff
					r32
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 41/8, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						e'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 21/4, magnitude: 3/2
					\stopStaff
					R2. * 2
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 27/4, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						c'32
					}
				}
				{
					% performer: Contrabass 01, offset: 223/32, magnitude: 133/32
					\stopStaff
					r32
					r4
					r4
					R2. * 4
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 89/8, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						e'32 \glissando
						s32
						s32
					}
					{
						g'32 \glissando
						g'32
					}
				}
				{
					% performer: Contrabass 01, offset: 91/8, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 369/32, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 375/32, magnitude: 9/32
					\stopStaff
					r32
					r4
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 12, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 195/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 99/8, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 25/2, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 101/8, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 409/32, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 413/32, magnitude: 3/8
					\stopStaff
					r16.
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 425/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						e'32
					}
				}
				{
					% performer: Contrabass 01, offset: 215/16, magnitude: 7/32
					\stopStaff
					r16
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 437/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						e'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 221/16, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						a32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 223/16, magnitude: 3/16
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 113/8, magnitude: 79/8
					\stopStaff
					r8
					R2. * 13
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 24, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						e'32 \glissando \startTextSpan
						s32
						s32
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 775/32, magnitude: 179/32
					\stopStaff
					r32
					r4
					r4
					R2. * 6
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 477/16, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 961/32, magnitude: 7/32
					\stopStaff
					r16.
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 121/4, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 975/32, magnitude: 11/16
					\stopStaff
					r32
					r4
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 997/32, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 1003/32, magnitude: 3/4
					\stopStaff
					r32
					r8
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1027/32, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 1031/32, magnitude: 233/32
					\stopStaff
					r32
					R2. * 9
					r2
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 79/2, magnitude: 29/32
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						f32
					}
				}
				{
					% performer: Contrabass 01, offset: 1293/32, magnitude: 7/8
					\stopStaff
					r16.
					R2. * 1
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1321/32, magnitude: 37/32
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
					{
						a32 \glissando
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 679/16, magnitude: 1/4
					\stopStaff
					r16
					r8.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 683/16, magnitude: 25/32
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						s32
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						f32 \glissando \startTextSpan
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
					{
						a32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Contrabass 01, offset: 1391/32, magnitude: 1/4
					\stopStaff
					r32
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1399/32, magnitude: 37/32
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						a32 \glissando \startTextSpan
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 359/8, magnitude: 1
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						s32
					}
					{
						e'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Contrabass 01, offset: 367/8, magnitude: 1/2
					\stopStaff
					r8
					r4
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 371/8, magnitude: 1
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						e'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
					{
						g'32 \glissando
						s32
						s32
						g'32
					}
				}
				{
					% performer: Contrabass 01, offset: 379/8, magnitude: 1
					\stopStaff
					r8
					r4
					r4
					r4.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 387/8, magnitude: 7/16
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
					}
					{
						c'32 \glissando
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 781/16, magnitude: 1/2
					\stopStaff
					r16
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 789/16, magnitude: 9/16
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 399/8, magnitude: 13/32
					\stopStaff
					r8
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1609/32, magnitude: 37/32
					{
						\override Glissando #'style = #'zigzag
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						s32
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
					{
						c'32 \glissando
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 823/16, magnitude: 15/32
					\stopStaff
					r16
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1661/32, magnitude: 17/16
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 1695/32, magnitude: 257/32
					\stopStaff
					r32
					r4
					R2. * 10
					r4
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 61, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 979/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 491/8, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 985/16, magnitude: 33/32
					\stopStaff
					r16
					r8
					r4
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 2003/32, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 2009/32, magnitude: 13/16
					\stopStaff
					r16.
					r8
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 2035/32, magnitude: 1/8
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 2039/32, magnitude: 509/32
					\stopStaff
					r32
					R2. * 21
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 637/8, magnitude: 23/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						f32
					}
				}
				{
					% performer: Contrabass 01, offset: 2571/32, magnitude: 69/32
					\stopStaff
					r32
					r8
					r4
					r4
					R2. * 2
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 165/2, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						a32 \glissando \startTextSpan
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 2647/32, magnitude: 59/16
					\stopStaff
					r32
					r4
					r4
					R2. * 4
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 2765/32, magnitude: 7/8
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Contrabass 01, offset: 2793/32, magnitude: 33/32
					\stopStaff
					r16.
					r8
					r4
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1413/16, magnitude: 35/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						f32
					}
				}
				{
					% performer: Contrabass 01, offset: 2861/32, magnitude: 19/32
					\stopStaff
					r16.
					r4
					r4
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 90, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 361/4, magnitude: 13/16
					\stopStaff
					r4
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1457/16, magnitude: 11/8
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						f32
					}
				}
				{
					% performer: Contrabass 01, offset: 1479/16, magnitude: 1
					\stopStaff
					r16
					r4
					r4
					r4..
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1495/16, magnitude: 9/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 2999/32, magnitude: 39/16
					\stopStaff
					r32
					R2. * 3
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3077/32, magnitude: 47/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 781/8, magnitude: 7/32
					\stopStaff
					r8
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3131/32, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						e'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Contrabass 01, offset: 3139/32, magnitude: 21/32
					\stopStaff
					r32
					r8
					r2
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 395/4, magnitude: 21/16
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 1601/16, magnitude: 1/2
					\stopStaff
					r16
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1609/16, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						e'32 \glissando
						s32
						s32
						c'32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 1613/16, magnitude: 45/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 3271/32, magnitude: 1
					\stopStaff
					r32
					r4
					r4
					r4...
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3303/32, magnitude: 15/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 1659/16, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 1663/16, magnitude: 7/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 3333/32, magnitude: 3/16
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						c'32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 3339/32, magnitude: 3/16
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						f32
					}
				}
				{
					% performer: Contrabass 01, offset: 3345/32, magnitude: 13/32
					\stopStaff
					r16.
					r8
					r8.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1679/16, magnitude: 17/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 3375/32, magnitude: 3/16
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 3381/32, magnitude: 7/16
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 3395/32, magnitude: 9/32
					\stopStaff
					r32
					r8
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 851/8, magnitude: 35/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 3439/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 215/2, magnitude: 21/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 3461/32, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 433/4, magnitude: 5/4
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 219/2, magnitude: 7/16
					\stopStaff
					r4..
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1759/16, magnitude: 7/16
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 883/8, magnitude: 3/16
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 1769/16, magnitude: 13/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 3551/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3557/32, magnitude: 23/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 895/8, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 112, magnitude: 13/16
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						f32
					}
				}
				{
					% performer: Contrabass 01, offset: 1805/16, magnitude: 7/16
					\stopStaff
					r16
					r8
					r4
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 453/4, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 3629/32, magnitude: 9/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 1819/16, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						a32 \glissando \startTextSpan
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 3643/32, magnitude: 7/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 1825/16, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						e'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 3655/32, magnitude: 3/32
					\stopStaff
					r32
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 1829/16, magnitude: 1/4
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
					{
						r32
						r32
						r32
						r32
					}
				}
				{
					% performer: Contrabass 01, offset: 1833/16, magnitude: 5/32
					\stopStaff
					r16
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3671/32, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						e'32 \glissando
						s32
						e'32
					}
				}
				{
					% performer: Contrabass 01, offset: 3677/32, magnitude: 13/16
					\stopStaff
					r16.
					r4
					r4
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3703/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 927/8, magnitude: 3/8
					\stopStaff
					r8
					r4
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 465/4, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						e'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 931/8, magnitude: 45/32
					\stopStaff
					r8
					r4
					r4
					R2. * 1
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3769/32, magnitude: 27/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 01, offset: 949/8, magnitude: 21/8
					\stopStaff
					r8
					r4
					r4
					R2. * 2
					r2
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 485/4, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						e'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 3887/32, magnitude: 1/2
					\stopStaff
					r32
					r4...
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3903/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						e'32
						\breathe
					}
				}
				{
					% performer: Contrabass 01, offset: 977/8, magnitude: 11/8
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 247/2, magnitude: 13/32
					\stopStaff
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 3965/32, magnitude: 3/16
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						e'32
					}
				}
				{
					% performer: Contrabass 01, offset: 3971/32, magnitude: 5/4
					\stopStaff
					r32
					r8
					r4
					R2. * 1
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 4011/32, magnitude: 7/32
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32
						s32
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 2009/16, magnitude: 1/2
					\stopStaff
					r16
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 2017/16, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 4041/32, magnitude: 17/32
					\stopStaff
					r16.
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 2029/16, magnitude: 7/32
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
						s32
						s32
						s32
						s32
						s32
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 01, offset: 4065/32, magnitude: 3/16
					\stopStaff
					r16.
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 4071/32, magnitude: 3/16
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Contrabass 01, offset: 4077/32, magnitude: 25/16
					\stopStaff
					r16.
					R2. * 1
					r4
					r4
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 4127/32, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Contrabass 01, offset: 4131/32, magnitude: 5/8
					\stopStaff
					r32
					r8
					r4
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 4151/32, magnitude: 7/32
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						e'32
					}
				}
				{
					% performer: Contrabass 01, offset: 2079/16, magnitude: 45/16
					\stopStaff
					r16
					r4
					r4
					R2. * 3
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 531/4, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						\revert Glissando #'style
					}
					{
						e'32 \glissando
						s32
						g'32
					}
				}
				{
					% performer: Contrabass 01, offset: 4255/32, magnitude: 77/16
					\stopStaff
					r32
					r4
					r4
					R2. * 5
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 4409/32, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Contrabass 01, offset: 138, magnitude: 1/4
					\stopStaff
					r4
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 553/4, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 01, offset: 1107/8, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 01, offset: 4431/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						e'32 \glissando
						c'32
					}
				}
				{
					% performer: Contrabass 01, offset: 1109/8, magnitude: 73/8
					\stopStaff
					r8
					R2. * 12
					\startStaff
				}
			}
			\new Staff \with {
				\remove Instrument_name_engraver
				\override Glissando #'zigzag-length = #1
				\override Glissando #'zigzag-width = #2
				instrumentName = #"Contrabass 01"
				shortInstrumentName = #"Contrabass 01"
			} {
				\clef "bass_8"
				\time 3/4
				\tempo 4 = 66
				\compressFullBarRests
				\mergeDifferentlyDottedOn
				\mergeDifferentlyHeadedOn
				<<
					% performer: Contrabass 01, offset: 0, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs,,8 * 99/100 \startTrillSpan a,,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							gqf,,16 * 99/100 :128 \startTrillSpan aqs,,
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3/16, magnitude: 15/32
					r16
					r4
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 21/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								bf,,32 [ (
								r32
								af,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf,,32 \glissando
								s32
								af,,32
							}
						>>
						{
							\pitchedTrill
							bqs,,16 * 99/100 :128 \startTrillSpan d,
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 13/16, magnitude: 1/4
					r16
					r8
					r16
				}
				<<
					% performer: Contrabass 01, offset: 17/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef,8 [ ~ ~ \startTrillSpan f,
							ef,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a,32 :256 [ ~ \startTrillSpan bqs,
							a,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 41/32, magnitude: 13/16
					r16.
					r8
					r4
					r4
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 67/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								aqf,32 [ (
								r32
								r32
								r32
								r32
								fqs,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf,32 \glissando
								s32
								s32
								s32
								s32
								fqs,32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 73/32, magnitude: 11/16
					r16.
					r8
					r4
					r8..
				}
				<<
					% performer: Contrabass 01, offset: 95/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							gqs,32 [ ~ \startTrillSpan a,
							gqs,8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 25/8, magnitude: 21/32
					r8
					r4
					r4
					r32
				}
				<<
					% performer: Contrabass 01, offset: 121/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								bqs,32 [ (
								r32
								bqf,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs,32 \glissando
								s32
								bqf,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqf,16 * 99/100 :128 \startTrillSpan cqs
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 63/16, magnitude: 29/32
					r16
					r4
					r4
					r4
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 155/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								e,32 [ (
								r32
								r32
								a,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								e,32 \glissando
								s32
								s32
								a,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 159/32, magnitude: 5/32
					r32
					r8
				}
				<<
					% performer: Contrabass 01, offset: 41/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								fqs,32 [ (
								r32
								r32
								ef,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fqs,32 \glissando
								s32
								s32
								ef,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 21/4, magnitude: 3/2
					R2. * 2
				}
				<<
					% performer: Contrabass 01, offset: 27/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								cqs32 -\accent [ (
								r32
								r32
								r32
								c32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cqs32 \glissando
								s32
								s32
								s32
								c32
							}
						>>
						{
							\pitchedTrill
							f,16 * 99/100 :128 \startTrillSpan fqs,
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 223/32, magnitude: 133/32
					r32
					r4
					r4
					R2. * 4
					r4
					r4
					r8
				}
				<<
					% performer: Contrabass 01, offset: 89/8, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqf,16. * 99/100 \startTrillSpan af,
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf,,32 [
								r32
								eqf,32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf,,32 \glissando
								s32
								eqf,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fqs,16 * 99/100 :128 \startTrillSpan gqs,
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							s32 \fppp \<
							s32
							s32
						}
						{
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 91/8, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 369/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								cqs32 [ (
								r32
								r32
								ef32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cqs32 \glissando
								s32
								s32
								ef32
							}
						>>
						{
							\pitchedTrill
							g,16 * 99/100 :128 -\open \startTrillSpan a,
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 375/32, magnitude: 9/32
					r32
					r4
				}
				<<
					% performer: Contrabass 01, offset: 12, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								bf,,32 [ (
								r32
								r32
								fqs,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf,,32 \glissando
								s32
								s32
								fqs,,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqs,,16 * 99/100 :128 \startTrillSpan bqs,,
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 195/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Contrabass 01, offset: 99/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							eqf,8 * 99/100 \startTrillSpan fqs,
							s8 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 25/2, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								c32 [ (
								r32
								r32
								aqf,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c32 \glissando
								s32
								s32
								aqf,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fppp \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 101/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								fs,32 -\accent [ (
								r32
								r32
								r32
								af,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fs,32 \glissando
								s32
								s32
								s32
								af,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fp \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 409/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							dqs,8 * 99/100 \startTrillSpan f,
							s8 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 413/32, magnitude: 3/8
					r16.
					r4
					r32
				}
				<<
					% performer: Contrabass 01, offset: 425/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								gqf,32 [ (
								r32
								d,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqf,32 \glissando
								s32
								d,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqf,16 * 99/100 :128 \startTrillSpan f,
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 215/16, magnitude: 7/32
					r16
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 437/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							c32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32 \f \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 221/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs,8 * 99/100 \startTrillSpan af,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 223/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\once \override NoteHead #'style = #'harmonic
							cs,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							ef32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 113/8, magnitude: 79/8
					r8
					R2. * 13
				}
				<<
					% performer: Contrabass 01, offset: 24, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								dqs,32 -\accent [ (
								r32
								eqf,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqs,32 \glissando
								s32
								eqf,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs,,8 * 99/100 :64 \startTrillSpan a,,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 775/32, magnitude: 179/32
					r32
					r4
					r4
					R2. * 6
					r4
					r4
					r16
				}
				<<
					% performer: Contrabass 01, offset: 477/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								bqf,32 [ (
								r32
								r32
								r32
								r32
								r32
								af,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqf,32 \glissando
								s32
								s32
								s32
								s32
								s32
								af,32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 961/32, magnitude: 7/32
					r16.
					r8
				}
				<<
					% performer: Contrabass 01, offset: 121/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							b,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 975/32, magnitude: 11/16
					r32
					r4
					r4
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 997/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								bqs,,32 [ (
								r32
								r32
								r32
								r32
								gqf,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs,,32 \glissando
								s32
								s32
								s32
								s32
								gqf,,32
							}
						>>
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1003/32, magnitude: 3/4
					r32
					r8
					r4
					r4
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 1027/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								bf,,32 [ (
								r32
								r32
								d,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf,,32 \glissando
								s32
								s32
								d,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1031/32, magnitude: 233/32
					r32
					R2. * 9
					r2
				}
				<<
					% performer: Contrabass 01, offset: 79/2, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g,,8.. * 99/100 :64 \startTrillSpan a,,
							s8.. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							eqs,,32 :256 [ ~ \startTrillSpan fs,,
							eqs,,8. * 99/100 :64 ]
							s8. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs,,16 ] ~ \startTrillSpan gqf,,
							eqs,,4 ~
							eqs,,32 * 99/100
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							d,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							g,32 -\open ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1293/32, magnitude: 7/8
					r16.
					R2. * 1
					r32
				}
				<<
					% performer: Contrabass 01, offset: 1321/32, magnitude: 37/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g,8 :64 -\open [ ~ ~ \startTrillSpan af,
							g,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							e,16 [ ~ \startTrillSpan f,
							e,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							aqs,,8 * 99/100 :64 \startTrillSpan bf,,
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf,16 [ ~ \startTrillSpan eqf,
							dqf,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							e,,8 -\open [ ~ ~ \startTrillSpan f,,
							e,,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							bf,,8 [ ~ ~ \startTrillSpan c,
							bf,,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							f,,16. [ ~ \startTrillSpan gqf,,
							f,,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							a,,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs,32
							\once \override NoteHead #'style = #'harmonic
							f,32
							g,32 -\open ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
						}
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 679/16, magnitude: 1/4
					r16
					r8.
				}
				<<
					% performer: Contrabass 01, offset: 683/16, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g,16 :128 -\open [ ~ \startTrillSpan a,
							g,8 :64 ~ ~
							g,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							aqf,16. :128 [ ~ \startTrillSpan bf,
							aqf,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cqs8.. [ ~ \startTrillSpan dqs
							cqs16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							g,32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d,32 -\open
							\once \override NoteHead #'style = #'harmonic
							cs,32
							\once \override NoteHead #'style = #'harmonic
							af,,32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
						}
						{
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1391/32, magnitude: 1/4
					r32
					r8..
				}
				<<
					% performer: Contrabass 01, offset: 1399/32, magnitude: 37/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							fs,,32 [ ~
							fs,,8 ~ ~
							fs,,32 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs,,16. :128 [ ~ \startTrillSpan a,,
							gqs,,8. * 99/100 :64 ]
							s8. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							c,16 :128 [ ~ \startTrillSpan ef,
							c,16. * 99/100 :128 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a,,8 [ ~ ~ \startTrillSpan b,,
							a,,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af,,4 * 99/100 \startTrillSpan aqs,,
							s4 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							cqs,8 * 99/100 \startTrillSpan cs,
							s8 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \mf \>
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 359/8, magnitude: 1
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a,8 [ ~
							a,16. ]
							\revert NoteHead #'style
						}
						{
							\pitchedTrill
							eqf,8 [ ~ ~ \startTrillSpan f,
							eqf,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs,8.. * 99/100 \startTrillSpan bf,
							s8.. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							eqf,32 [ ~ \startTrillSpan f,
							eqf,8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs,8 * 99/100 \startTrillSpan af,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							c32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							g,32
							a,,32 -\open
							\once \override NoteHead #'style = #'harmonic
							bf,,32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 367/8, magnitude: 1/2
					r8
					r4
					r8
				}
				<<
					% performer: Contrabass 01, offset: 371/8, magnitude: 1
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs,,8 :64 [ ~ \startTrillSpan a,,
							gqs,,8 * 99/100 :64 ]
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							bqf,,8 :64 [ ~ \startTrillSpan b,,
							bqf,,8.. * 99/100 :64 ]
							s8.. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							c,32 ] ~ \startTrillSpan ef,
							c,4 * 99/100
							s4 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							bf,,8 * 99/100 \startTrillSpan bqf,,
							s8 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 379/8, magnitude: 1
					r8
					r4
					r4
					r4.
				}
				<<
					% performer: Contrabass 01, offset: 387/8, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g,,8 [ ~ \startTrillSpan aqf,,
							g,,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							c,8 [ ~ ~ \startTrillSpan d,
							c,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							c,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							g,32 -\open ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 781/16, magnitude: 1/2
					r16
					r8
					r4
					r16
				}
				<<
					% performer: Contrabass 01, offset: 789/16, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqs,8. * 99/100 \startTrillSpan cqs
							s8. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							f,4 * 99/100 \startTrillSpan gqf,
							s4 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cqs8 * 99/100 \startTrillSpan dqf
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 399/8, magnitude: 13/32
					r8
					r4
					r32
				}
				<<
					% performer: Contrabass 01, offset: 1609/32, magnitude: 37/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							gqs,8 [ ~ ~ \startTrillSpan bf,
							gqs,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							bqs,16 ] ~ \startTrillSpan c
							bqs,4 * 99/100
							s4 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqs,8 * 99/100 \startTrillSpan e,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf,,8 [ ~ \startTrillSpan bqf,,
							bf,,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e,8 :64 [ ~ ~ \startTrillSpan g,
							e,32 :256 ~
							e,16 * 99/100 :128 ]
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							e32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							c32
							\once \override NoteHead #'style = #'harmonic
							af,32
							e,,32 -\open ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 823/16, magnitude: 15/32
					r16
					r4
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 1661/32, magnitude: 17/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bf,,16. [ ~
							bf,,8. ]
						}
						{
							\pitchedTrill
							bf,,16 [ ~ \startTrillSpan bqf,,
							bf,,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fs,,8 * 99/100 :64 \startTrillSpan a,,
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf,16 [ ~ \startTrillSpan eqs,
							dqf,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af,,8. [ ~ \startTrillSpan aqf,,
							af,,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af,,8 * 99/100 \startTrillSpan a,,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
						}
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1695/32, magnitude: 257/32
					r32
					r4
					R2. * 10
					r4
				}
				<<
					% performer: Contrabass 01, offset: 61, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							a,32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g,,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 979/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Contrabass 01, offset: 491/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								eqs,,32 -\accent [ (
								r32
								r32
								r32
								r32
								gqf,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqs,,32 \glissando
								s32
								s32
								s32
								s32
								gqf,,32
							}
						>>
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 985/16, magnitude: 33/32
					r16
					r8
					r4
					r4
					r4
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 2003/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								af,,32 -\accent [ (
								r32
								r32
								r32
								r32
								bf,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								af,,32 \glissando
								s32
								s32
								s32
								s32
								bf,,32
							}
						>>
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2009/32, magnitude: 13/16
					r16.
					r8
					r4
					r4
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 2035/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							cs,32 -\accent ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							f,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							d32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2039/32, magnitude: 509/32
					r32
					R2. * 21
					r8
				}
				<<
					% performer: Contrabass 01, offset: 637/8, magnitude: 23/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef,8 ] ~
							ef,4 ~
							ef,16.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqs,,8 :64 [ ~ ~
							aqs,,32 :256 ~
							aqs,,16. :128 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2571/32, magnitude: 69/32
					r32
					r8
					r4
					r4
					R2. * 2
				}
				<<
					% performer: Contrabass 01, offset: 165/2, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							fs,,8 -\accent [ ~ ~ \startTrillSpan a,,
							fs,,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqs,,16 * 99/100 :128 \startTrillSpan c,
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2647/32, magnitude: 59/16
					r32
					r4
					r4
					R2. * 4
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 2765/32, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f,16. [ ~
							f,8 ~ ~
							f,32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							g,,32 [ (
							\once \override NoteHead #'style = #'harmonic
							a,,32
							\once \override NoteHead #'style = #'harmonic
							gqs,,32
							\once \override NoteHead #'style = #'harmonic
							a,,32
							\once \override NoteHead #'style = #'harmonic
							af,,32
							\once \override NoteHead #'style = #'harmonic
							a,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							fs,,16. :128 ] ~
							fs,,4 :32 ~
							fs,,32 :256
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2793/32, magnitude: 33/32
					r16.
					r8
					r4
					r4
					r4
					r16
				}
				<<
					% performer: Contrabass 01, offset: 1413/16, magnitude: 35/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs,,8. [ ~
							fqs,,8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqs,32
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							cs,32
							\once \override NoteHead #'style = #'harmonic
							cqs,32
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							cqs,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32
							\once \override NoteHead #'style = #'harmonic
							dqf,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							f,32
							\once \override NoteHead #'style = #'harmonic
							ef,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							c,8 :64 [ ~
							c,8 :64 ~ ~
							c,32 :256 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2861/32, magnitude: 19/32
					r16.
					r4
					r4
				}
				<<
					% performer: Contrabass 01, offset: 90, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							aqs,8 * 99/100 -\accent \startTrillSpan bf,
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af,8 * 99/100 :64 \startTrillSpan bf,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 361/4, magnitude: 13/16
					r4
					r4
					r4
					r16
				}
				<<
					% performer: Contrabass 01, offset: 1457/16, magnitude: 11/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf,8. [ ~
							eqf,8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							b,,32 [ (
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							a,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							aqf,,32
							\once \override NoteHead #'style = #'harmonic
							a,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							af,,32
							\once \override NoteHead #'style = #'harmonic
							aqf,,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32
							\once \override NoteHead #'style = #'harmonic
							aqf,,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqs,,32 [ (
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							aqf,,32
							\once \override NoteHead #'style = #'harmonic
							af,,32
							\once \override NoteHead #'style = #'harmonic
							aqf,,32
							\once \override NoteHead #'style = #'harmonic
							gqf,,32
							\once \override NoteHead #'style = #'harmonic
							gqs,,32
							\once \override NoteHead #'style = #'harmonic
							g,,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							d,8 :64 [ ~ ~
							d,32 :256 ~
							d,8. :64 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1479/16, magnitude: 1
					r16
					r4
					r4
					r4..
				}
				<<
					% performer: Contrabass 01, offset: 1495/16, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							g,32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d,32 -\open -\staccato
							a,,32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							c,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							b,,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							a,,32 -\open
							\once \override NoteHead #'style = #'harmonic
							fs,32
							g,32 -\open ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							s32 \fppp \<
							s32
							s32
							s32
						}
						{
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2999/32, magnitude: 39/16
					r32
					R2. * 3
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 3077/32, magnitude: 47/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cs,16. [ ~
							cs,8.. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqs,,32 [ (
							\once \override NoteHead #'style = #'harmonic
							bf,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							cqs,32
							\once \override NoteHead #'style = #'harmonic
							cs,32
							\once \override NoteHead #'style = #'harmonic
							c,32
							\once \override NoteHead #'style = #'harmonic
							b,,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							ef,32 [ (
							\once \override NoteHead #'style = #'harmonic
							e,32
							d,32 -\open
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							eqs,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							d,32 -\open ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							g,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							eqs,8 :64 [ ~ ~
							eqs,32 :256 ~
							eqs,8 :64 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 781/8, magnitude: 7/32
					r8
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 3131/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bf,32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							f,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf,,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqf,,32 [ ~ \startTrillSpan aqf,,
							gqf,,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
						}
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3139/32, magnitude: 21/32
					r32
					r8
					r2
				}
				<<
					% performer: Contrabass 01, offset: 395/4, magnitude: 21/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs,4 ~
							aqs,8.
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							g,32 [ (
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							gqs,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							gqs,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							g,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							e,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqs,8.. [ ~
							dqs,16 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1601/16, magnitude: 1/2
					r16
					r8
					r4
					r16
				}
				<<
					% performer: Contrabass 01, offset: 1609/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e,,32 -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							g,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							d32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							d,32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							s32 \fppp \<
							s32
							s32
							s32
						}
						{
							s32
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 1613/16, magnitude: 45/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef,8. [ ~
							ef,16 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							b,32
							\once \override NoteHead #'style = #'harmonic
							bqs,32
							\once \override NoteHead #'style = #'harmonic
							cs32
							\once \override NoteHead #'style = #'harmonic
							ef32
							\once \override NoteHead #'style = #'harmonic
							dqf32
							\once \override NoteHead #'style = #'harmonic
							dqs32
							\once \override NoteHead #'style = #'harmonic
							dqf32
							\once \override NoteHead #'style = #'harmonic
							c32
							\once \override NoteHead #'style = #'harmonic
							dqf32
							\once \override NoteHead #'style = #'harmonic
							d32
							\once \override NoteHead #'style = #'harmonic
							dqf32
							\once \override NoteHead #'style = #'harmonic
							c32
							\once \override NoteHead #'style = #'harmonic
							bqf,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							a,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bf,32 [ (
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							gqs,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							gqs,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							af,16. [ ~
							af,8.. ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3271/32, magnitude: 1
					r32
					r4
					r4
					r4...
				}
				<<
					% performer: Contrabass 01, offset: 3303/32, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs,,32 ] ~
							aqs,,4 ~
							aqs,,8.
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 1659/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							af,,32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							a,,32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							g,32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							a,,32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
						}
						{
							s32 \p \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 1663/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g,16 [ ~
							g,8 ~ ~
							g,32 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32 \p \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 3333/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqf,16. :128 [ ~ \startTrillSpan bqs,
							aqf,16. * 99/100 :128 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \<
							s32
							s32
							s32
							s32
							s32 \mf
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 3339/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef,8 [ ~ ~
							ef,32 ~
							ef,32 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3345/32, magnitude: 13/32
					r16.
					r8
					r8.
				}
				<<
					% performer: Contrabass 01, offset: 1679/16, magnitude: 17/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf,,16 [ ~
							gqf,,8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							ef,16 [ ~
							ef,8.. ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32 \p \>
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 3375/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e,32 :256 [ ~
							e,8 :64 ~ ~
							e,32 :256 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32 \f \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 3381/32, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs,,16. ] ~
							bqs,,4 ~
							bqs,,16.
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3395/32, magnitude: 9/32
					r32
					r8
					r8
				}
				<<
					% performer: Contrabass 01, offset: 851/8, magnitude: 35/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b,8 [ ~
							b,8.. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqf,32
							\once \override NoteHead #'style = #'harmonic
							cqs32
							\once \override NoteHead #'style = #'harmonic
							bqf,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							b,32
							\once \override NoteHead #'style = #'harmonic
							cqs32
							\once \override NoteHead #'style = #'harmonic
							dqs32
							\once \override NoteHead #'style = #'harmonic
							cs32
							\once \override NoteHead #'style = #'harmonic
							c32
							\once \override NoteHead #'style = #'harmonic
							cs32
							\once \override NoteHead #'style = #'harmonic
							dqf32
							\once \override NoteHead #'style = #'harmonic
							ef32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bf,8 [ ~
							bf,8.. ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3439/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Contrabass 01, offset: 215/2, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf,4 ~
							gqf,16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqf,8. :64 [ ~
							aqf,8 :64 ~ ~
							aqf,32 :256 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3461/32, magnitude: 3/32
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 433/4, magnitude: 5/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs,4 ~
							eqs,8 [ ~ ~
							eqs,32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							f,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							d,32 -\open
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							f,32
							\once \override NoteHead #'style = #'harmonic
							eqs,32
							\once \override NoteHead #'style = #'harmonic
							f,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							ef,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							f,8.. ] ~
							f,4
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 219/2, magnitude: 7/16
					r4..
				}
				<<
					% performer: Contrabass 01, offset: 1759/16, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g,16 ] ~
							g,4 ~
							g,8
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \mf \>
							s32
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 883/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs,8 [ ~
							bqs,16 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 1769/16, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf,8. [ ~
							aqf,8.. ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3551/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 3557/32, magnitude: 23/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs,16. [ ~
							eqs,8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							c,16 ] ~
							c,4 ~
							c,8
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 895/8, magnitude: 1/8
					r8
				}
				<<
					% performer: Contrabass 01, offset: 112, magnitude: 13/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							af,4
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							eqs,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							fqs,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bf,,8. :64 [ ~
							bf,,16 :128 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1805/16, magnitude: 7/16
					r16
					r8
					r4
				}
				<<
					% performer: Contrabass 01, offset: 453/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								aqf,,32 -\accent [ (
								r32
								aqs,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf,,32 \glissando
								s32
								aqs,,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf,,16 * 99/100 :128 \startTrillSpan c,
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							s32 \sfz \>
							s32
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 3629/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf,16. [ ~
							eqf,8. ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32 \mf \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 1819/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e,,16 -\accent -\open [ ~ \startTrillSpan fqs,,
							e,,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqf,,16 * 99/100 :128 \startTrillSpan c,
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							s32 \sfz \>
							s32
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 3643/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf,,8 [ ~ ~
							bqf,,32 ~
							bqf,,16 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 1825/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								f,32 -\accent [ (
								r32
								r32
								r32
								ef,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								f,32 \glissando
								s32
								s32
								s32
								ef,32
							}
						>>
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3655/32, magnitude: 3/32
					r32
					r16
				}
				<<
					% performer: Contrabass 01, offset: 1829/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqs,32 [
								r32
								r32
								e,32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs,32 \glissando
								s32
								s32
								e,32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								e,32 ^ \markup { \italic Pizz. } [
								r32
								r32
								eqs,32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								e,32 \glissando
								s32
								s32
								eqs,32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
						}
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \f \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1833/16, magnitude: 5/32
					r16
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 3671/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								dqf,32 -\accent [ (
								r32
								aqs,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqf,32 \glissando
								s32
								aqs,,32
							}
						>>
						{
							\pitchedTrill
							ef,16. * 99/100 :128 \startTrillSpan eqf,
							s16. * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3677/32, magnitude: 13/16
					r16.
					r4
					r4
					r8..
				}
				<<
					% performer: Contrabass 01, offset: 3703/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							dqf32 -\accent [ ~ \startTrillSpan dqs
							dqf16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							d16 * 99/100 :128 \startTrillSpan dqs
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 927/8, magnitude: 3/8
					r8
					r4
				}
				<<
					% performer: Contrabass 01, offset: 465/4, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								c,32 -\accent [ (
								r32
								r32
								f,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c,32 \glissando
								s32
								s32
								f,,32
							}
						>>
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 931/8, magnitude: 45/32
					r8
					r4
					r4
					R2. * 1
					r32
				}
				<<
					% performer: Contrabass 01, offset: 3769/32, magnitude: 27/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g,,8.. ] ~
							g,,4
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqs,,4 :32 ~
							aqs,,8 :64
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 949/8, magnitude: 21/8
					r8
					r4
					r4
					R2. * 2
					r2
				}
				<<
					% performer: Contrabass 01, offset: 485/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								e,32 [ (
								r32
								r32
								r32
								r32
								r32
								bqf,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								e,32 \glissando
								s32
								s32
								s32
								s32
								s32
								bqf,,32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \f \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3887/32, magnitude: 1/2
					r32
					r4...
				}
				<<
					% performer: Contrabass 01, offset: 3903/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								af,,32 -\accent [
								r32
								r32
								r32
								g,,32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								af,,32 \glissando
								s32
								s32
								s32
								g,,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fp \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 01, offset: 977/8, magnitude: 11/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							d,8 -\open ] ~
							d,4.
						}
						{
							\once \override NoteHead #'style = #'harmonic
							d,32 [ (
							\once \override NoteHead #'style = #'harmonic
							cqs,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32
							\once \override NoteHead #'style = #'harmonic
							cqs,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							e,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqs,,32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqf,,32
							\once \override NoteHead #'style = #'harmonic
							f,,32
							\once \override NoteHead #'style = #'harmonic
							eqs,,32
							e,,32 -\open
							\once \override NoteHead #'style = #'harmonic
							fs,,32
							\once \override NoteHead #'style = #'harmonic
							fqs,,32
							\once \override NoteHead #'style = #'harmonic
							fs,,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							ef,16 ] ~
							ef,4
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 247/2, magnitude: 13/32
					r4
					r8
					r32
				}
				<<
					% performer: Contrabass 01, offset: 3965/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							e,,32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							bf,32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 3971/32, magnitude: 5/4
					r32
					r8
					r4
					R2. * 1
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 4011/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								b,32 [
								r32
								r32
								r32
								r32
								r32
								gqs,32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b,32 \glissando
								s32
								s32
								s32
								s32
								s32
								gqs,32
							}
						>>
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32 \mf
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2009/16, magnitude: 1/2
					r16
					r8
					r4
					r16
				}
				<<
					% performer: Contrabass 01, offset: 2017/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							a,32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							f,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af,,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 4041/32, magnitude: 17/32
					r16.
					r8
					r4
					r16
				}
				<<
					% performer: Contrabass 01, offset: 2029/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							e,,32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							b,32
							\once \override NoteHead #'style = #'harmonic
							e32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \<
							s32
							s32
							s32
							s32
							s32
							s32 \mf
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 4065/32, magnitude: 3/16
					r16.
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 4071/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\once \override NoteHead #'style = #'harmonic
							bf,32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \<
							s32
							s32
							s32
							s32
							s32 \mf
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 4077/32, magnitude: 25/16
					r16.
					R2. * 1
					r4
					r4
					r8..
				}
				<<
					% performer: Contrabass 01, offset: 4127/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							cs,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							e,32
							d,32 -\open
							\once \override NoteHead #'style = #'harmonic
							d32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 4131/32, magnitude: 5/8
					r32
					r8
					r4
					r8..
				}
				<<
					% performer: Contrabass 01, offset: 4151/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								a,32 [
								r32
								r32
								r32
								r32
								r32
								ef32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								a,32 \glissando
								s32
								s32
								s32
								s32
								s32
								ef32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \f \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 2079/16, magnitude: 45/16
					r16
					r4
					r4
					R2. * 3
				}
				<<
					% performer: Contrabass 01, offset: 531/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								fqs,32 -\accent [ (
								r32
								r32
								a,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fqs,32 \glissando
								s32
								s32
								a,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a,16. * 99/100 :128 \startTrillSpan bqs,
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 4255/32, magnitude: 77/16
					r32
					r4
					r4
					R2. * 5
					r4
					r4
					r32
				}
				<<
					% performer: Contrabass 01, offset: 4409/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								gqs,32 -\accent [ (
								r32
								eqs,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs,32 \glissando
								s32
								eqs,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf8 * 99/100 :64 \startTrillSpan ef
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
						}
						{
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 138, magnitude: 1/4
					r4
				}
				<<
					% performer: Contrabass 01, offset: 553/4, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g,8 * 99/100 -\accent \startTrillSpan bf,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1107/8, magnitude: 3/32
					r16.
				}
				<<
					% performer: Contrabass 01, offset: 4431/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								\slurDashed
								#(set-accidental-style 'neo-modern)
								dqs,32 -\accent [ (
								r32
								d,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqs,32 \glissando
								s32
								d,32
							}
						>>
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g,16 * 99/100 :128 -\open \startTrillSpan a,
							s16 * 1/100 \stopTrillSpan
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \sfz \>
							s32
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 01, offset: 1109/8, magnitude: 73/8
					r8
					R2. * 12
					\bar "|."
				}
			}
		>>
	>>
}