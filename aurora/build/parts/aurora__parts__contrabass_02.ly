% Abjad revision 4356
% 2011-05-15 23:35

\version "2.13.37"
\include "english.ly"
\include "/media/Work/dev/scores/abjad/cfg/abjad.scm"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 10)

\header {
	composer = #"Josiah Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	instrument = #"Contrabass 02"
	tagline = \markup { "" }
	title = #"mbrsi/aurora"
}

\paper {
	#(define page-breaking ly:optimal-breaking)
	between-system-spacing = #'((space . 0) (padding . 2) (stretchability . 0) (minimum-distance . 0))
	bottom-margin = 0.75\in
	bottom-system-spacing = #'((space . 0) (padding . 4) (stretchability . 0) (minimum-distance . 0))
	evenFooterMarkup = \markup { \fill-line { "contrabass 02 - mbrsi/aurora - josiah wolf oberholtzer" } }
	left-margin = 0.75\in
	max-systems-per-page = #8
	oddFooterMarkup = \markup { \fill-line { "josiah wolf oberholtzer - mbrsi/aurora - contrabass 02" } }
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
		\context StaffGroup = "Contrabass 02" \with {
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
					% performer: Contrabass 02, offset: 0, magnitude: 9/32
					\stopStaff
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 9/32, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 13/32, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 17/32, magnitude: 13/32
					\stopStaff
					r16.
					r8
					r8.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 15/16, magnitude: 7/32
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
					% performer: Contrabass 02, offset: 37/32, magnitude: 11/32
					\stopStaff
					r16.
					r4
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3/2, magnitude: 7/32
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
					% performer: Contrabass 02, offset: 55/32, magnitude: 15/16
					\stopStaff
					r32
					r4
					r4
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 85/32, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 89/32, magnitude: 19/32
					\stopStaff
					r16.
					r8
					r4.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 27/8, magnitude: 5/32
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
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 02, offset: 113/32, magnitude: 9/8
					\stopStaff
					r16.
					r8
					R2. * 1
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 149/32, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 153/32, magnitude: 5/16
					\stopStaff
					r16.
					r8
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 163/32, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 167/32, magnitude: 27/8
					\stopStaff
					r32
					R2. * 4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 275/32, magnitude: 3/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 139/16, magnitude: 101/32
					\stopStaff
					r16
					r4
					R2. * 3
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 379/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 12, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 97/8, magnitude: 1/4
					{
						c'32 \glissando
						s32
						s32
						a32
					}
					{
						r32
						r32
						r32
						r32
					}
				}
				{
					% performer: Contrabass 02, offset: 99/8, magnitude: 11/16
					\stopStaff
					r8
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 209/16, magnitude: 5/32
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
					% performer: Contrabass 02, offset: 423/32, magnitude: 1/4
					\stopStaff
					r32
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 431/32, magnitude: 5/32
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
					% performer: Contrabass 02, offset: 109/8, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 441/32, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						e'32
						\revert Glissando #'style
					}
					{
						r32
						r32
						r32
						r32
					}
				}
				{
					% performer: Contrabass 02, offset: 449/32, magnitude: 7/32
					\stopStaff
					r16.
					r8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 57/4, magnitude: 5/32
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 02, offset: 461/32, magnitude: 307/32
					\stopStaff
					r16.
					r4
					r4
					R2. * 12
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 24, magnitude: 3/16
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
					% performer: Contrabass 02, offset: 387/16, magnitude: 13/4
					\stopStaff
					r16
					r4
					r4
					R2. * 3
					r4..
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 439/16, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Contrabass 02, offset: 883/32, magnitude: 3/8
					\stopStaff
					r32
					r8
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 895/32, magnitude: 3/16
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
					% performer: Contrabass 02, offset: 901/32, magnitude: 75/8
					\stopStaff
					r16.
					r4
					R2. * 12
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1201/32, magnitude: 7/32
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
					% performer: Contrabass 02, offset: 151/4, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 605/16, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						e'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 38, magnitude: 3/8
					\stopStaff
					r4
					r8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 307/8, magnitude: 1/8
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
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
					% performer: Contrabass 02, offset: 77/2, magnitude: 1/2
					\stopStaff
					r4
					r4
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 39, magnitude: 7/32
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
						e'32 \glissando
						g'32
					}
				}
				{
					% performer: Contrabass 02, offset: 1255/32, magnitude: 83/8
					\stopStaff
					r32
					r4
					r4
					R2. * 13
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1587/32, magnitude: 7/32
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
						e'32 \glissando
						c'32
					}
				}
				{
					% performer: Contrabass 02, offset: 797/16, magnitude: 3
					\stopStaff
					r16
					r8
					r4
					R2. * 3
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 845/16, magnitude: 5/32
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
					% performer: Contrabass 02, offset: 1695/32, magnitude: 5/16
					\stopStaff
					r32
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1705/32, magnitude: 3/16
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
						e'32
					}
				}
				{
					% performer: Contrabass 02, offset: 1711/32, magnitude: 15/32
					\stopStaff
					r32
					r4
					r8.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 863/16, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 865/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 433/8, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
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
					% performer: Contrabass 02, offset: 435/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1741/32, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 1745/32, magnitude: 3/16
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
					% performer: Contrabass 02, offset: 1751/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1757/32, magnitude: 7/32
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
						a32 \glissando
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 441/8, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1767/32, magnitude: 5/32
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
					% performer: Contrabass 02, offset: 443/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1773/32, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 1777/32, magnitude: 5/16
					\stopStaff
					r16.
					r8
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1787/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						e'32 \glissando
						e'32
					}
				}
				{
					% performer: Contrabass 02, offset: 56, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 897/16, magnitude: 3/16
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
						g'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 02, offset: 225/4, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 901/16, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 903/16, magnitude: 51/32
					\stopStaff
					r16
					r4
					r4
					R2. * 1
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1857/32, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 1861/32, magnitude: 11/32
					\stopStaff
					r16.
					r4
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 117/2, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
						c'32
					}
				}
				{
					% performer: Contrabass 02, offset: 1877/32, magnitude: 19/8
					\stopStaff
					r16.
					r4
					r4
					R2. * 2
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1953/32, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 1957/32, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 245/4, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 491/8, magnitude: 5/8
					\stopStaff
					r8
					r2
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 62, magnitude: 3/16
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
					% performer: Contrabass 02, offset: 995/16, magnitude: 25/32
					\stopStaff
					r16
					r4
					r4
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 2015/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 505/8, magnitude: 3/4
					\stopStaff
					r8
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 511/8, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 64, magnitude: 53/4
					\stopStaff
					r4
					r4
					R2. * 17
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 309/4, magnitude: 7/32
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
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 2479/32, magnitude: 257/32
					\stopStaff
					r32
					r4
					r4
					R2. * 10
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 171/2, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
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
					% performer: Contrabass 02, offset: 343/4, magnitude: 13/2
					\stopStaff
					r4
					r4
					R2. * 8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 369/4, magnitude: 5/32
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
					% performer: Contrabass 02, offset: 2957/32, magnitude: 21/16
					\stopStaff
					r16.
					r4
					r4
					r4
					r4
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 2999/32, magnitude: 1/4
					{
						c'32 \glissando
						s32
						s32
						s32
					}
					{
						a32 \glissando
						s32
						s32
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 3007/32, magnitude: 23/32
					\stopStaff
					r32
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1515/16, magnitude: 9/32
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
						s32
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 3039/32, magnitude: 9/16
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
						c'32 \glissando
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
					% performer: Contrabass 02, offset: 3057/32, magnitude: 15/8
					\stopStaff
					r16.
					r8
					r4
					R2. * 1
					r4
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3117/32, magnitude: 5/8
					{
						c'32 \glissando
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
						g'32
					}
				}
				{
					% performer: Contrabass 02, offset: 3137/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1569/16, magnitude: 1/4
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
						a32 \glissando \startTextSpan
						s32
						s32
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 1573/16, magnitude: 29/32
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
					}
					{
						e'32 \glissando
						s32
						s32
						s32
					}
					{
						g'32 \glissando
						s32
						s32
						e'32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 3175/32, magnitude: 27/32
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
						s32
						s32
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Contrabass 02, offset: 1601/16, magnitude: 1/2
					\stopStaff
					r16
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1609/16, magnitude: 15/32
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
						\override Glissando #'style = #'zigzag
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
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						c'32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 3233/32, magnitude: 1/4
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
						s32
						s32
						c'32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 3241/32, magnitude: 1/4
					{
						c'32 \glissando
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
					% performer: Contrabass 02, offset: 3249/32, magnitude: 9/32
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
					% performer: Contrabass 02, offset: 1629/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 102, magnitude: 3/4
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
						c'32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 411/4, magnitude: 39/32
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
					}
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
						g'32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 3327/32, magnitude: 1/4
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
						s32
						s32
						e'32
					}
				}
				{
					% performer: Contrabass 02, offset: 3335/32, magnitude: 1/16
					\stopStaff
					r32
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3337/32, magnitude: 7/16
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
					% performer: Contrabass 02, offset: 3351/32, magnitude: 11/8
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
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						e'32 \glissando \startTextSpan
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
						s32
						s32
						s32
						s32
						s32
						s32
					}
					{
						g'32 \glissando
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
						g'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Contrabass 02, offset: 3395/32, magnitude: 3/32
					\stopStaff
					r32
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1699/16, magnitude: 7/32
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
					% performer: Contrabass 02, offset: 3405/32, magnitude: 1/2
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
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 3421/32, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 107, magnitude: 33/32
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
					% performer: Contrabass 02, offset: 3457/32, magnitude: 3/8
					\stopStaff
					r16.
					r8
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3469/32, magnitude: 11/16
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
						s32
						s32
						s32
						s32
					}
					{
						e'32 \glissando
						s32
						s32
						g'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 02, offset: 3491/32, magnitude: 19/32
					\stopStaff
					r32
					r8
					r4
					r8.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1755/16, magnitude: 3/4
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 1767/16, magnitude: 41/32
					{
						c'32 \glissando
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
						s32
						s32
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
						e'32
					}
				}
				{
					% performer: Contrabass 02, offset: 3575/32, magnitude: 3/32
					\stopStaff
					r32
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1789/16, magnitude: 9/16
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
						c'32 \glissando
						s32
						s32
						s32
						s32
					}
					{
						e'32 \glissando
						s32
						s32
						g'32
					}
				}
				{
					% performer: Contrabass 02, offset: 899/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3597/32, magnitude: 7/32
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
						s32
						s32
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 901/8, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 451/4, magnitude: 21/16
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
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 1825/16, magnitude: 1/8
					\stopStaff
					r16
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1827/16, magnitude: 17/16
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 461/4, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3693/32, magnitude: 21/16
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
					% performer: Contrabass 02, offset: 3735/32, magnitude: 33/32
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 471/4, magnitude: 5/32
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
					% performer: Contrabass 02, offset: 3773/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1887/16, magnitude: 17/16
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
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 119, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1905/16, magnitude: 29/32
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
						f32
					}
				}
				{
					% performer: Contrabass 02, offset: 3839/32, magnitude: 25/32
					\stopStaff
					r32
					R2. * 1
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 483/4, magnitude: 7/16
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
					}
				}
				{
					% performer: Contrabass 02, offset: 1939/16, magnitude: 7/32
					\stopStaff
					r16
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3885/32, magnitude: 1/4
					{
						f32 \glissando
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
					% performer: Contrabass 02, offset: 3893/32, magnitude: 1/4
					\stopStaff
					r16.
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3901/32, magnitude: 1/2
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
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 3917/32, magnitude: 9/16
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 3935/32, magnitude: 1/16
					\stopStaff
					r32
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3937/32, magnitude: 1/2
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
						a32
					}
				}
				{
					% performer: Contrabass 02, offset: 3953/32, magnitude: 5/16
					\stopStaff
					r16.
					r8
					r16.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 3963/32, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 3967/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 124, magnitude: 5/32
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
					% performer: Contrabass 02, offset: 3973/32, magnitude: 15/32
					\stopStaff
					r16.
					r4
					r8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 997/8, magnitude: 3/16
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
					% performer: Contrabass 02, offset: 1997/16, magnitude: 3/16
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
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 125, magnitude: 13/32
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
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 4013/32, magnitude: 3/16
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
						g'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 4019/32, magnitude: 7/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						f32
					}
				}
				{
					% performer: Contrabass 02, offset: 2013/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 126, magnitude: 13/16
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
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 2029/16, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 2031/16, magnitude: 3/16
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 1017/8, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 509/4, magnitude: 5/8
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
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 1023/8, magnitude: 1/4
					\stopStaff
					r8
					r8
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 1025/8, magnitude: 9/8
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
					% performer: Contrabass 02, offset: 517/4, magnitude: 3/16
					\stopStaff
					r8.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 2071/16, magnitude: 17/16
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
						f32
					}
				}
				{
					% performer: Contrabass 02, offset: 261/2, magnitude: 3/16
					\stopStaff
					r8.
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 2091/16, magnitude: 21/16
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
					% performer: Contrabass 02, offset: 132, magnitude: 17/32
					\stopStaff
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 4241/32, magnitude: 43/32
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
						f32 \glissando
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
					% performer: Contrabass 02, offset: 1071/8, magnitude: 11/32
					\stopStaff
					r8
					r8..
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 4295/32, magnitude: 35/32
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 2165/16, magnitude: 3/4
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
					}
					{
						a32 \glissando
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
					% performer: Contrabass 02, offset: 2177/16, magnitude: 7/32
					\stopStaff
					r16
					r8
					r32
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 4361/32, magnitude: 9/8
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
					% performer: Contrabass 02, offset: 4397/32, magnitude: 11/32
					\stopStaff
					r16.
					r4
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 551/4, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						e'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Contrabass 02, offset: 2207/16, magnitude: 5/32
					{
						f32 \glissando
						s32
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 4419/32, magnitude: 5/32
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
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 553/4, magnitude: 5/32
					{
						f32 \glissando
						s32
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 4429/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						e'32 \glissando
						e'32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 2217/16, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Contrabass 02, offset: 2219/16, magnitude: 1/8
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
					% performer: Contrabass 02, offset: 2221/16, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						f32
					}
				}
				{
					% performer: Contrabass 02, offset: 2223/16, magnitude: 69/16
					\stopStaff
					r16
					r4
					r4
					R2. * 5
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 573/4, magnitude: 7/32
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Contrabass 02, offset: 4591/32, magnitude: 89/32
					\stopStaff
					r32
					r4
					r4
					R2. * 3
					\startStaff
				}
				{
					% performer: Contrabass 02, offset: 585/4, magnitude: 1/4
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
					% performer: Contrabass 02, offset: 293/2, magnitude: 5/4
					\stopStaff
					r4
					r4
					R2. * 1
					\startStaff
				}
			}
			\new Staff \with {
				\remove Instrument_name_engraver
				\override Glissando #'zigzag-length = #1
				\override Glissando #'zigzag-width = #2
				instrumentName = #"Contrabass 02"
				shortInstrumentName = #"Contrabass 02"
			} {
				\clef "bass_8"
				\time 3/4
				\tempo 4 = 66
				\compressFullBarRests
				\mergeDifferentlyDottedOn
				\mergeDifferentlyHeadedOn
				{
					% performer: Contrabass 02, offset: 0, magnitude: 9/32
					r4
					r32
				}
				<<
					% performer: Contrabass 02, offset: 9/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqf,8 * 99/100 \startTrillSpan gqf,
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
					% performer: Contrabass 02, offset: 13/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs,16. [ ~ \startTrillSpan bf,
							gqs,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 17/32, magnitude: 13/32
					r16.
					r8
					r8.
				}
				<<
					% performer: Contrabass 02, offset: 15/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqs,16 [ ~ \startTrillSpan d
							bqs,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs,16. * 99/100 :128 \startTrillSpan a,
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 37/32, magnitude: 11/32
					r16.
					r4
				}
				<<
					% performer: Contrabass 02, offset: 3/2, magnitude: 7/32
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
								cs32 [ (
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
								cs32 \glissando
								s32
								s32
								s32
								c32
							}
						>>
						{
							\pitchedTrill
							af,16 * 99/100 :128 \startTrillSpan aqs,
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							s32 \fppp \<
							s32
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
					% performer: Contrabass 02, offset: 55/32, magnitude: 15/16
					r32
					r4
					r4
					r4
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 85/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af,16. [ ~ \startTrillSpan bqf,
							af,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
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
				{
					% performer: Contrabass 02, offset: 89/32, magnitude: 19/32
					r16.
					r8
					r4.
				}
				<<
					% performer: Contrabass 02, offset: 27/8, magnitude: 5/32
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
								gqf,32 \glissando
								s32
								a,32
							}
						>>
						{
							\pitchedTrill
							aqf,32 :256 [ ~ \startTrillSpan aqs,
							aqf,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
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
					% performer: Contrabass 02, offset: 113/32, magnitude: 9/8
					r16.
					r8
					R2. * 1
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 149/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							gqs,16. [ ~ \startTrillSpan aqf,
							gqs,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
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
					% performer: Contrabass 02, offset: 153/32, magnitude: 5/16
					r16.
					r8
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 163/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g,8 * 99/100 -\open \startTrillSpan af,
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 167/32, magnitude: 27/8
					r32
					R2. * 4
					r4
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 275/32, magnitude: 3/32
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
								g,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqf,32 \glissando
								s32
								g,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 139/16, magnitude: 101/32
					r16
					r4
					R2. * 3
					r4
					r4
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 379/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							b,,32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							ef,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fp \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 12, magnitude: 1/8
					r8
				}
				<<
					% performer: Contrabass 02, offset: 97/8, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqs32 -\accent [
								r32
								r32
								cs32 ]
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
								dqs32 \glissando
								s32
								s32
								cs32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqs,32 ^ \markup { \italic Pizz. } [
								r32
								r32
								gqf,32 ]
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
								eqs,32 \glissando
								s32
								s32
								gqf,32
							}
						>>
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fp \>
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
					% performer: Contrabass 02, offset: 99/8, magnitude: 11/16
					r8
					r4
					r4
					r16
				}
				<<
					% performer: Contrabass 02, offset: 209/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cs32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fp \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 423/32, magnitude: 1/4
					r32
					r8..
				}
				<<
					% performer: Contrabass 02, offset: 431/32, magnitude: 5/32
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
								af,,32 [ (
								r32
								r32
								r32
								a,,32 ] )
								\slurSolid
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
								a,,32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \f \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 109/8, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 441/32, magnitude: 1/4
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
								cqs,32 -\accent [ (
								r32
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
								cqs,32 \glissando
								s32
								s32
								eqf,32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqs,,32 ^ \markup { \italic Pizz. } [
								r32
								r32
								bqf,,32 ]
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
								gqs,,32 \glissando
								s32
								s32
								bqf,,32
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
					% performer: Contrabass 02, offset: 449/32, magnitude: 7/32
					r16.
					r8
				}
				<<
					% performer: Contrabass 02, offset: 57/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							b,,32 -\accent ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							g,32 -\open ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fp \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 461/32, magnitude: 307/32
					r16.
					r4
					r4
					R2. * 12
				}
				<<
					% performer: Contrabass 02, offset: 24, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							b,,8. * 99/100 -\accent \startTrillSpan dqf,
							s8. * 1/100 \stopTrillSpan
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 387/16, magnitude: 13/4
					r16
					r4
					r4
					R2. * 3
					r4..
				}
				<<
					% performer: Contrabass 02, offset: 439/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							b,32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							b,,32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 883/32, magnitude: 3/8
					r32
					r8
					r8..
				}
				<<
					% performer: Contrabass 02, offset: 895/32, magnitude: 3/16
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
								af,,32 [ (
								r32
								r32
								r32
								r32
								a,,32 ] )
								\slurSolid
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
								s32
								a,,32
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
					% performer: Contrabass 02, offset: 901/32, magnitude: 75/8
					r16.
					r4
					R2. * 12
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1201/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							b,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d,32 -\staccato ] )
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
					% performer: Contrabass 02, offset: 151/4, magnitude: 1/16
					r16
				}
				<<
					% performer: Contrabass 02, offset: 605/16, magnitude: 3/16
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
								gqf,,32 [ (
								r32
								r32
								r32
								r32
								fs,,32 ] )
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
								gqf,,32 \glissando
								s32
								s32
								s32
								s32
								fs,,32
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
					% performer: Contrabass 02, offset: 38, magnitude: 3/8
					r4
					r8
				}
				<<
					% performer: Contrabass 02, offset: 307/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf,,32 [
								r32
								r32
								f,,32 ]
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
								f,,32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 77/2, magnitude: 1/2
					r4
					r4
				}
				<<
					% performer: Contrabass 02, offset: 39, magnitude: 7/32
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
								cs32 -\accent [ (
								r32
								r32
								r32
								g,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cs32 \glissando
								s32
								s32
								s32
								g,32
							}
						>>
						{
							\pitchedTrill
							a,16 * 99/100 :128 \startTrillSpan bf,
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
					% performer: Contrabass 02, offset: 1255/32, magnitude: 83/8
					r32
					r4
					r4
					R2. * 13
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 1587/32, magnitude: 7/32
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
								f,32 [ (
								r32
								r32
								r32
								e,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								f,32 \glissando
								s32
								s32
								s32
								e,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqf,16 * 99/100 :128 \startTrillSpan eqs,
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
							s32
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 797/16, magnitude: 3
					r16
					r8
					r4
					R2. * 3
					r4
					r16
				}
				<<
					% performer: Contrabass 02, offset: 845/16, magnitude: 5/32
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
								gqs,32 [ (
								r32
								r32
								r32
								bqs,32 ] )
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
								s32
								s32
								bqs,32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 1695/32, magnitude: 5/16
					r32
					r4
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1705/32, magnitude: 3/16
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
								eqs,32 [ (
								r32
								r32
								g,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqs,32 \glissando
								s32
								s32
								g,32
							}
						>>
						{
							\pitchedTrill
							bf,,16 * 99/100 :128 \startTrillSpan cqs,
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
							s32 \mp \>
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 1711/32, magnitude: 15/32
					r32
					r4
					r8.
				}
				<<
					% performer: Contrabass 02, offset: 863/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf,16 [ ~ \startTrillSpan e,
							dqf,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							s32 \mp
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 865/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Contrabass 02, offset: 433/8, magnitude: 1/4
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
								aqs,32 [ (
								r32
								r32
								r32
								r32
								gqf,32 ] )
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
								aqs,32 \glissando
								s32
								s32
								s32
								s32
								gqf,32
							}
						>>
						{
							\pitchedTrill
							f,16 * 99/100 :128 \startTrillSpan g,
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
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
					% performer: Contrabass 02, offset: 435/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1741/32, magnitude: 1/8
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
								fs,,32 -\accent [ (
								r32
								r32
								g,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fs,,32 \glissando
								s32
								s32
								g,,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \sfz \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 1745/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqs,,16. * 99/100 -\accent \startTrillSpan c,
							s16. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							c,16. * 99/100 :128 \startTrillSpan dqf,
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
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 1751/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1757/32, magnitude: 7/32
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
								f,32 [ (
								r32
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
								f,32 \glissando
								s32
								s32
								s32
								d,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqf,,16 * 99/100 :128 \startTrillSpan bf,,
							s16 * 1/100 \stopTrillSpan
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
					% performer: Contrabass 02, offset: 441/8, magnitude: 3/32
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 1767/32, magnitude: 5/32
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
								r32
								c,32 ] )
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
								s32
								c,32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 443/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1773/32, magnitude: 1/8
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
								aqs,32 -\accent [ (
								r32
								r32
								f,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqs,32 \glissando
								s32
								s32
								f,32
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
					% performer: Contrabass 02, offset: 1777/32, magnitude: 5/16
					r16.
					r8
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 1787/32, magnitude: 5/32
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
								a,32 [ (
								r32
								f,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								a,32 \glissando
								s32
								f,32
							}
						>>
						{
							\pitchedTrill
							g,16 * 99/100 :128 \startTrillSpan bf,
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 56, magnitude: 1/16
					r16
				}
				<<
					% performer: Contrabass 02, offset: 897/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							fs,8 * 99/100 \startTrillSpan g,
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							cs,16 * 99/100 :128 \startTrillSpan dqs,
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
							s32 \mp \>
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 225/4, magnitude: 1/16
					r16
				}
				<<
					% performer: Contrabass 02, offset: 901/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf,,8 * 99/100 \startTrillSpan bqs,,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 903/16, magnitude: 51/32
					r16
					r4
					r4
					R2. * 1
					r4
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1857/32, magnitude: 1/8
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
								b,,32 [ (
								r32
								r32
								a,,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b,,32 \glissando
								s32
								s32
								a,,32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 1861/32, magnitude: 11/32
					r16.
					r4
				}
				<<
					% performer: Contrabass 02, offset: 117/2, magnitude: 5/32
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
								eqf,32 -\accent [ (
								r32
								f,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqf,32 \glissando
								s32
								f,32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af,16 * 99/100 :128 \startTrillSpan a,
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
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 1877/32, magnitude: 19/8
					r16.
					r4
					r4
					R2. * 2
					r4
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1953/32, magnitude: 1/8
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
								bf,,32 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 1957/32, magnitude: 3/32
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 245/4, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							b,,32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							e,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs32 -\staccato ] )
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 491/8, magnitude: 5/8
					r8
					r2
				}
				<<
					% performer: Contrabass 02, offset: 62, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d,32 -\open -\staccato
							a,,32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef,32 -\staccato ] )
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
					% performer: Contrabass 02, offset: 995/16, magnitude: 25/32
					r16
					r4
					r4
					r8..
				}
				<<
					% performer: Contrabass 02, offset: 2015/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqs,,32 -\accent [
								r32
								r32
								r32
								bqs,,32 ]
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
								aqs,,32 \glissando
								s32
								s32
								s32
								bqs,,32
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
					% performer: Contrabass 02, offset: 505/8, magnitude: 3/4
					r8
					r4
					r4
					r8
				}
				<<
					% performer: Contrabass 02, offset: 511/8, magnitude: 1/8
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
								bf,,32 -\accent [ (
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
								bf,,32 \glissando
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 64, magnitude: 53/4
					r4
					r4
					R2. * 17
				}
				<<
					% performer: Contrabass 02, offset: 309/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							eqs,,8 -\accent [ ~ ~ \startTrillSpan fs,,
							eqs,,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fs,,16 * 99/100 :128 \startTrillSpan af,,
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
					% performer: Contrabass 02, offset: 2479/32, magnitude: 257/32
					r32
					r4
					r4
					R2. * 10
				}
				<<
					% performer: Contrabass 02, offset: 171/2, magnitude: 1/4
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
								r32
								r32
								a,,32 ] )
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
								s32
								s32
								a,,32
							}
						>>
						{
							\pitchedTrill
							f,,16 * 99/100 :128 \startTrillSpan fs,,
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
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 343/4, magnitude: 13/2
					r4
					r4
					R2. * 8
				}
				<<
					% performer: Contrabass 02, offset: 369/4, magnitude: 5/32
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
								g,,32 -\accent [ (
								r32
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
								g,,32 \glissando
								s32
								s32
								s32
								fqs,,32
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
					% performer: Contrabass 02, offset: 2957/32, magnitude: 21/16
					r16.
					r4
					r4
					r4
					r4
					r8..
				}
				<<
					% performer: Contrabass 02, offset: 2999/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							eqf,32 :256 [ ~
							eqf,16. :128 ]
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							d32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf,32
							a,,32 -\open
							e,,32 -\open ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							s32 \ppp
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
				{
					% performer: Contrabass 02, offset: 3007/32, magnitude: 23/32
					r32
					r4
					r4
					r8.
				}
				<<
					% performer: Contrabass 02, offset: 1515/16, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							af,,32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							a,,32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							f,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af,32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							aqf,8 [ ~ ~ \startTrillSpan bf,
							aqf,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
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
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 3039/32, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							fqs,,32 [ ~ \startTrillSpan aqf,,
							fqs,,8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							cqs,8 :64 [ ~ \startTrillSpan d,
							cqs,8 :64 ~ ~
							cqs,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqs,,16. [ ~ \startTrillSpan d,
							bqs,,32 * 99/100 ]
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
					% performer: Contrabass 02, offset: 3057/32, magnitude: 15/8
					r16.
					r8
					r4
					R2. * 1
					r4
					r4
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 3117/32, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							ef,16. :128 [ ~ \startTrillSpan fs,
							ef,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							f,8.. [ ~ \startTrillSpan fs,
							f,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							f,8 * 99/100 \startTrillSpan g,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							gqs,16. [ ~ \startTrillSpan bf,
							gqs,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
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
					% performer: Contrabass 02, offset: 3137/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1569/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							g,32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d,32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef,32 -\staccato
							e,,32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							e,,16 -\open [ ~ \startTrillSpan gqf,,
							e,,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
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
							s32 \p \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 1573/16, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							d,8. [ ~ \startTrillSpan e,
							d,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							a,,8 [ ~ ~ \startTrillSpan b,,
							a,,32 ~
							a,,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							dqf,8. * 99/100 \startTrillSpan e,
							s8. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							cqs,32 [ ~ \startTrillSpan d,
							cqs,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							cqs,8 * 99/100 \startTrillSpan d,
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
							s32
						}
						{
							s32
							s32
							s32
							s32
							s32
							s32 \mf \>
						}
						{
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
					}
				>>
				<<
					% performer: Contrabass 02, offset: 3175/32, magnitude: 27/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf,,32 :256 ] ~
							bqf,,4 :32
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqs,8.. * 99/100 \startTrillSpan ef,
							s8.. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs,32 [ ~ \startTrillSpan f,
							eqs,8. * 99/100 ]
							s8. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							cs32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							cs,32 ] )
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
					% performer: Contrabass 02, offset: 1601/16, magnitude: 1/2
					r16
					r8
					r4
					r16
				}
				<<
					% performer: Contrabass 02, offset: 1609/16, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							fs,,8. :64 [ ~
							fs,,32 :256 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqs,8 * 99/100 \startTrillSpan f,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							d,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							d32 ] )
						}
						\revert TextScript #'staff-padding
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
					}
				>>
				<<
					% performer: Contrabass 02, offset: 3233/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cs,32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cqs16. [ ~ \startTrillSpan cs
							cqs32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
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
					% performer: Contrabass 02, offset: 3241/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqs,8 * 99/100 :64 \startTrillSpan c
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							aqf,16. [ ~ \startTrillSpan b,
							aqf,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
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
							s32 \p \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 3249/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs,,8.. [ ~
							fs,,16 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 1629/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Contrabass 02, offset: 102, magnitude: 3/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf,,4 ~
							aqf,,8 [ ~ ~
							aqf,,32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bqs,,16. :128 ] ~
							bqs,,4 :32
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
					}
				>>
				<<
					% performer: Contrabass 02, offset: 411/4, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							fs,8 [ ~ ~
							fs,32 ]
						}
						{
							\pitchedTrill
							ef,16. [ ~ \startTrillSpan e,
							ef,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							dqf,8. * 99/100 \startTrillSpan dqs,
							s8. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							bqf,,8 :64 [ ~ ~ \startTrillSpan c,
							bqf,,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs,,16. [ ~ \startTrillSpan f,,
							eqs,,16 * 99/100 ]
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
							af,,8. [ ~ \startTrillSpan b,,
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
							b,,8 * 99/100 \startTrillSpan d,
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
						}
						{
							s32
							s32
							s32
							s32 \mp \>
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
					% performer: Contrabass 02, offset: 3327/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							b,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af,32 -\staccato
							e,,32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							ef,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							b,32
							\once \override NoteHead #'style = #'harmonic
							e32 ] )
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 3335/32, magnitude: 1/16
					r32
					r32
				}
				<<
					% performer: Contrabass 02, offset: 3337/32, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							d,8.. -\open [ ~
							d,8.. ]
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
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 3351/32, magnitude: 11/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							eqf,32 :256 ] ~ \startTrillSpan f,
							eqf,4 :32 ~
							eqf,32 * 99/100 :256
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							af,,8.. [ ~ \startTrillSpan aqs,,
							af,,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							a,,8. [ ~ \startTrillSpan bqs,,
							a,,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fqs,,8 [ ~ ~ \startTrillSpan fs,,
							fqs,,32 ~
							fqs,,8.. * 99/100 ]
							s8.. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							gqf,,32 [ ~ \startTrillSpan gqs,,
							gqf,,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
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
							s32
						}
						{
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
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
					% performer: Contrabass 02, offset: 3395/32, magnitude: 3/32
					r32
					r16
				}
				<<
					% performer: Contrabass 02, offset: 1699/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af,,16 :128 -\accent [ ~ \startTrillSpan bf,,
							af,,8 :64 ~ ~
							af,,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
					}
					\context Voice = "span" {
						{
							s32 \fp \>
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
					% performer: Contrabass 02, offset: 3405/32, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf16. ] ~
							dqf4 ~
							dqf8 [ ~ ~
							dqf32 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
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
					% performer: Contrabass 02, offset: 3421/32, magnitude: 3/32
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 107, magnitude: 33/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a,4 ~
							a,32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bf,32 [ (
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							aqs,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							f,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							af,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							aqs,,32 ] ~
							aqs,,4 ~
							aqs,,32
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
					}
				>>
				{
					% performer: Contrabass 02, offset: 3457/32, magnitude: 3/8
					r16.
					r8
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 3469/32, magnitude: 11/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqf,16. [ ~ \startTrillSpan f,
							eqf,16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							eqs,,8. * 99/100 \startTrillSpan g,,
							s8. * 1/100 \stopTrillSpan
						}
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a,,8.. * 99/100 :64 -\open \startTrillSpan bqs,,
							s8.. * 1/100 \stopTrillSpan
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							g,32 [ ~ \startTrillSpan gqs,
							g,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
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
						}
						{
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
					% performer: Contrabass 02, offset: 3491/32, magnitude: 19/32
					r32
					r8
					r4
					r8.
				}
				<<
					% performer: Contrabass 02, offset: 1755/16, magnitude: 3/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs,,16 ] ~
							aqs,,4 ~
							aqs,,16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqf,8. [ ~
							aqf,8. ]
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
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 1767/16, magnitude: 41/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							ef,16 :128 [ ~ \startTrillSpan e,
							ef,16. * 99/100 :128 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							c,8 * 99/100 \startTrillSpan dqs,
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e,,32 :256 -\open ] ~ \startTrillSpan fs,,
							e,,4 :32 ~
							e,,16. * 99/100 :128
							s16. * 1/100 \stopTrillSpan
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqs,,8 * 99/100 \startTrillSpan c,
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
							dqs,32 [ ~ \startTrillSpan ef,
							dqs,8.. * 99/100 ]
							s8.. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqs,32 [ ~ \startTrillSpan bqf,
							aqs,16. * 99/100 ]
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
							s32
							s32
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
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
					% performer: Contrabass 02, offset: 3575/32, magnitude: 3/32
					r32
					r16
				}
				<<
					% performer: Contrabass 02, offset: 1789/16, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs8. [ ~
							cqs16. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf,8 [ ~ ~ \startTrillSpan cs
							bf,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							g,32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							cs,32 ] )
						}
						\revert TextScript #'staff-padding
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
					}
				>>
				{
					% performer: Contrabass 02, offset: 899/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Contrabass 02, offset: 3597/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs,,16. [ ~
							fqs,,8 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32 \mp \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 901/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf,8
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							s32 \ppp
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 451/4, magnitude: 21/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a,,4 ~
							a,,16.
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqs,,32 [ (
							\once \override NoteHead #'style = #'harmonic
							bf,,32
							\once \override NoteHead #'style = #'harmonic
							aqf,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							aqf,,32
							\once \override NoteHead #'style = #'harmonic
							af,,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32 ] )
						}
						{
							a,,32 -\open [ (
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							a,,32 -\open
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							c,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32
							\once \override NoteHead #'style = #'harmonic
							cqs,32
							\once \override NoteHead #'style = #'harmonic
							cs,32
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							cqs,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							eqf,8.. :64 [ ~
							eqf,16 :128 ]
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
					% performer: Contrabass 02, offset: 1825/16, magnitude: 1/8
					r16
					r16
				}
				<<
					% performer: Contrabass 02, offset: 1827/16, magnitude: 17/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs,16 ] ~
							eqs,4 ~
							eqs,32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							a,32 [ (
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							aqs,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							aqs,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							aqs,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							c16 ] ~
							c4
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 461/4, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 3693/32, magnitude: 21/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf,16. ] ~
							aqf,4 ~
							aqf,16
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							dqf,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32
							\once \override NoteHead #'style = #'harmonic
							c,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32
							\once \override NoteHead #'style = #'harmonic
							cs,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs,,32 [ (
							\once \override NoteHead #'style = #'harmonic
							f,,32
							\once \override NoteHead #'style = #'harmonic
							gqf,,32
							\once \override NoteHead #'style = #'harmonic
							aqf,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							g,,16 [ ~
							g,,8.. ]
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
							s32
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
					}
				>>
				<<
					% performer: Contrabass 02, offset: 3735/32, magnitude: 33/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c,32 ] ~
							c,4 ~
							c,16.
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							c,32 [ (
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32
							\once \override NoteHead #'style = #'harmonic
							bqs,,32
							\once \override NoteHead #'style = #'harmonic
							dqf,32
							\once \override NoteHead #'style = #'harmonic
							c,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							af,,8 ] ~
							af,,4
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
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 471/4, magnitude: 5/32
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
								d,32 -\accent [ (
								r32
								r32
								r32
								e,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								d,32 \glissando
								s32
								s32
								s32
								e,32
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
					% performer: Contrabass 02, offset: 3773/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Contrabass 02, offset: 1887/16, magnitude: 17/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs,,16 ] ~
							bqs,,4 ~
							bqs,,32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqf,32 [ (
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							cs,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							dqf,32
							\once \override NoteHead #'style = #'harmonic
							cqs,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							f,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							e,16. :128 ] ~
							e,4 :32
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
							s32 \mp \>
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
					% performer: Contrabass 02, offset: 119, magnitude: 1/16
					r16
				}
				<<
					% performer: Contrabass 02, offset: 1905/16, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b,,8. ] ~
							b,,4 ~
							b,,32
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs,,8.. :64 [ ~
							fqs,,8.. :64 ]
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
					% performer: Contrabass 02, offset: 3839/32, magnitude: 25/32
					r32
					R2. * 1
				}
				<<
					% performer: Contrabass 02, offset: 483/4, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef4..
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
							s32 \mp \>
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
					% performer: Contrabass 02, offset: 1939/16, magnitude: 7/32
					r16
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 3885/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b,16. [ ~
							b,8 ~ ~
							b,32 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 3893/32, magnitude: 1/4
					r16.
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 3901/32, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs,16. ] ~
							eqs,4 ~
							eqs,8 [ ~ ~
							eqs,32 ]
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
							s32 \mf \>
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
					% performer: Contrabass 02, offset: 3917/32, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a,16. [ ~
							a,8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							d16 [ ~
							d8.. ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
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
					% performer: Contrabass 02, offset: 3935/32, magnitude: 1/16
					r32
					r32
				}
				<<
					% performer: Contrabass 02, offset: 3937/32, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf,8.. ] ~
							aqf,4 ~
							aqf,32
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
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
					% performer: Contrabass 02, offset: 3953/32, magnitude: 5/16
					r16.
					r8
					r16.
				}
				<<
					% performer: Contrabass 02, offset: 3963/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cqs,32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							bqs,,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf,,32 -\staccato
							a,,32 -\open -\staccato ] )
							\slurSolid
						}
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
					% performer: Contrabass 02, offset: 3967/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Contrabass 02, offset: 124, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							d,32 -\open -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							ef,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							eqf,32 -\staccato ] )
							\slurSolid
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
					% performer: Contrabass 02, offset: 3973/32, magnitude: 15/32
					r16.
					r4
					r8
				}
				<<
					% performer: Contrabass 02, offset: 997/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a,8 [ ~
							a,16 ]
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
					% performer: Contrabass 02, offset: 1997/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							af,32 -\staccato [ (
							bf,32 -\staccato
							bqf,32 -\staccato
							cqs32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cqs32 :256 [
								d32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cqs32 \glissando
								d32
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
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 125, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a,4 ~
							a,8 [ ~ ~
							a,32 ]
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
							s32 \p \>
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
					% performer: Contrabass 02, offset: 4013/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							cs32 -\staccato [ (
							bqs,32 -\staccato
							b,32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqs,32 :256 [
								r32
								bf,32 :256 ]
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
								aqs,32 \glissando
								s32
								bf,32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
						}
						{
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 4019/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs,8 [ ~ ~
							eqs,32 ~
							eqs,16 ]
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
				{
					% performer: Contrabass 02, offset: 2013/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Contrabass 02, offset: 126, magnitude: 13/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf,,4 ~
							bqf,,16.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							dqs,8 :64 [ ~ ~
							dqs,32 :256 ] ~
							dqs,4 :32 ~
							dqs,16 :128
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
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 2029/16, magnitude: 1/8
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
								f,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								e,32 \glissando
								s32
								s32
								f,32
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
				<<
					% performer: Contrabass 02, offset: 2031/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs,16 [ ~
							aqs,8 ]
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
					% performer: Contrabass 02, offset: 1017/8, magnitude: 1/8
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
								ef32 [ (
								r32
								r32
								d32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								ef32 \glissando
								s32
								s32
								d32
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
					% performer: Contrabass 02, offset: 509/4, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef,4 ~
							ef,16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							cqs,8. [ ~
							cqs,8 ]
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
					}
				>>
				{
					% performer: Contrabass 02, offset: 1023/8, magnitude: 1/4
					r8
					r8
				}
				<<
					% performer: Contrabass 02, offset: 1025/8, magnitude: 9/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs,,8 ] ~
							fqs,,4 ~
							fqs,,16.
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							bf,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							a,,32 -\open
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							cs,16. ] ~
							cs,4
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
						}
						{
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
					% performer: Contrabass 02, offset: 517/4, magnitude: 3/16
					r8.
				}
				<<
					% performer: Contrabass 02, offset: 2071/16, magnitude: 17/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							a,,16 -\open ] ~
							a,,4 ~
							a,,16.
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqf,32 [ (
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							dqf,32
							\once \override NoteHead #'style = #'harmonic
							cs,32
							\once \override NoteHead #'style = #'harmonic
							dqf,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							cqs,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							gqs,,4 :32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 261/2, magnitude: 3/16
					r8.
				}
				<<
					% performer: Contrabass 02, offset: 2091/16, magnitude: 21/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d,16 ] ~
							d,4 ~
							d,16
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							f,32 [ (
							\once \override NoteHead #'style = #'harmonic
							fqs,32
							\once \override NoteHead #'style = #'harmonic
							eqs,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							gqs,32
							\once \override NoteHead #'style = #'harmonic
							fqs,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							d,32 -\open
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							d,32 -\open
							\once \override NoteHead #'style = #'harmonic
							eqf,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bf,32 [ (
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							bqs,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							a,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							b,32 ] ~
							b,4
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
					% performer: Contrabass 02, offset: 132, magnitude: 17/32
					r4
					r4
					r32
				}
				<<
					% performer: Contrabass 02, offset: 4241/32, magnitude: 43/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							g,8.. -\open [ ~
							g,16 ]
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							fqs,32
							\once \override NoteHead #'style = #'harmonic
							gqf,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							fqs,32
							\once \override NoteHead #'style = #'harmonic
							gqs,32
							\once \override NoteHead #'style = #'harmonic
							aqs,32
							\once \override NoteHead #'style = #'harmonic
							a,32
							\once \override NoteHead #'style = #'harmonic
							g,32
							\once \override NoteHead #'style = #'harmonic
							fqs,32
							\once \override NoteHead #'style = #'harmonic
							gqs,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							ef,32 [ (
							\once \override NoteHead #'style = #'harmonic
							f,32
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							eqs,32
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							f,32
							\once \override NoteHead #'style = #'harmonic
							eqs,32
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							eqs,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							ef,8 :64 [ ~
							ef,8 :64 ]
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
					% performer: Contrabass 02, offset: 1071/8, magnitude: 11/32
					r8
					r8..
				}
				<<
					% performer: Contrabass 02, offset: 4295/32, magnitude: 35/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a,32 ] ~
							a,4 ~
							a,16.
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cs32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqs,32
							\once \override NoteHead #'style = #'harmonic
							c32
							\once \override NoteHead #'style = #'harmonic
							d32
							\once \override NoteHead #'style = #'harmonic
							c32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							bqs,32
							\once \override NoteHead #'style = #'harmonic
							bqf,32
							\once \override NoteHead #'style = #'harmonic
							aqs,32
							\once \override NoteHead #'style = #'harmonic
							bqf,32
							\once \override NoteHead #'style = #'harmonic
							bf,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							c16 ] ~
							c4 ~
							c16
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
							s32 \mp \>
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
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 2165/16, magnitude: 3/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a,8. [ ~
							a,16 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqf,32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqs,32
							\once \override NoteHead #'style = #'harmonic
							fs,32
							\once \override NoteHead #'style = #'harmonic
							gqs,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							aqs,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							e,8. :64 [ ~
							e,16 :128 ]
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
					% performer: Contrabass 02, offset: 2177/16, magnitude: 7/32
					r16
					r8
					r32
				}
				<<
					% performer: Contrabass 02, offset: 4361/32, magnitude: 9/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf,,8.. [ ~
							bqf,,8 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqf,,32 [ (
							\once \override NoteHead #'style = #'harmonic
							a,,32
							\once \override NoteHead #'style = #'harmonic
							af,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							bqf,,32
							\once \override NoteHead #'style = #'harmonic
							b,,32
							\once \override NoteHead #'style = #'harmonic
							aqs,,32
							\once \override NoteHead #'style = #'harmonic
							af,,32
							\once \override NoteHead #'style = #'harmonic
							g,,32
							\once \override NoteHead #'style = #'harmonic
							gqs,,32
							\once \override NoteHead #'style = #'harmonic
							fs,,32
							\once \override NoteHead #'style = #'harmonic
							fqs,,32
							\once \override NoteHead #'style = #'harmonic
							gqf,,32
							\once \override NoteHead #'style = #'harmonic
							g,,32
							\once \override NoteHead #'style = #'harmonic
							gqf,,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							af,,8 [ ~ ~
							af,,32 ~
							af,,8 ~ ~
							af,,32 ]
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
					}
				>>
				{
					% performer: Contrabass 02, offset: 4397/32, magnitude: 11/32
					r16.
					r4
				}
				<<
					% performer: Contrabass 02, offset: 551/4, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							f,,8. * 99/100 -\accent \startTrillSpan fs,,
							s8. * 1/100 \stopTrillSpan
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
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 2207/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f,,16 [ ~
							f,,16. ]
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
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 4419/32, magnitude: 5/32
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
								c,32 \glissando
								s32
								aqs,,32
							}
						>>
						{
							\pitchedTrill
							cs,16 * 99/100 :128 \startTrillSpan dqf,
							s16 * 1/100 \stopTrillSpan
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
					% performer: Contrabass 02, offset: 553/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf,,8 [ ~ ~
							bqf,,32 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32 \mp \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 4429/32, magnitude: 5/32
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
								gqs,,32 -\accent [ (
								r32
								c,32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs,,32 \glissando
								s32
								c,32
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
					% performer: Contrabass 02, offset: 2217/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d,8
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							s32 \mp
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 2219/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs,,16 -\accent [ ~ \startTrillSpan bqf,,
							gqs,,16 * 99/100 ]
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
							s32
						}
					}
				>>
				<<
					% performer: Contrabass 02, offset: 2221/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs,,8
							\revert NoteHead #'style
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
					% performer: Contrabass 02, offset: 2223/16, magnitude: 69/16
					r16
					r4
					r4
					R2. * 5
				}
				<<
					% performer: Contrabass 02, offset: 573/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g,8 * 99/100 -\accent -\open \startTrillSpan bf,
							s8 * 1/100 \stopTrillSpan
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs,16. * 99/100 :128 \startTrillSpan a,
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
					% performer: Contrabass 02, offset: 4591/32, magnitude: 89/32
					r32
					r4
					r4
					R2. * 3
				}
				<<
					% performer: Contrabass 02, offset: 585/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							f,16. * 99/100 -\accent \startTrillSpan gqf,
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a,,8 :64 -\open [ ~ ~ \startTrillSpan bqs,,
							a,,32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Contrabass 02, offset: 293/2, magnitude: 5/4
					r4
					r4
					R2. * 1
					\bar "|."
				}
			}
		>>
	>>
}