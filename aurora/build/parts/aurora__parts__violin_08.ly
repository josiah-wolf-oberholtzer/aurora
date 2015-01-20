% Abjad revision 4356
% 2011-05-15 23:26

\version "2.13.37"
\include "english.ly"
\include "/media/Work/dev/scores/abjad/cfg/abjad.scm"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 10)

\header {
	composer = #"Josiah Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	instrument = #"Violin 08"
	tagline = \markup { "" }
	title = #"mbrsi/aurora"
}

\paper {
	#(define page-breaking ly:optimal-breaking)
	between-system-spacing = #'((space . 0) (padding . 2) (stretchability . 0) (minimum-distance . 0))
	bottom-margin = 0.75\in
	bottom-system-spacing = #'((space . 0) (padding . 4) (stretchability . 0) (minimum-distance . 0))
	evenFooterMarkup = \markup { \fill-line { "violin 08 - mbrsi/aurora - josiah wolf oberholtzer" } }
	left-margin = 0.75\in
	max-systems-per-page = #8
	oddFooterMarkup = \markup { \fill-line { "josiah wolf oberholtzer - mbrsi/aurora - violin 08" } }
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
		\context StaffGroup = "Violin 08" \with {
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
					% performer: Violin 08, offset: 0, magnitude: 7/32
					\stopStaff
					r8..
					\startStaff
				}
				{
					% performer: Violin 08, offset: 7/32, magnitude: 1/8
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
					% performer: Violin 08, offset: 11/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 3/8, magnitude: 3/16
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
					% performer: Violin 08, offset: 9/16, magnitude: 1/2
					\stopStaff
					r16
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 17/16, magnitude: 7/32
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
					% performer: Violin 08, offset: 41/32, magnitude: 21/32
					\stopStaff
					r16.
					r8
					r4..
					\startStaff
				}
				{
					% performer: Violin 08, offset: 31/16, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
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
					% performer: Violin 08, offset: 67/32, magnitude: 17/32
					\stopStaff
					r32
					r8
					r4.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 21/8, magnitude: 1/8
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
					% performer: Violin 08, offset: 11/4, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 89/32, magnitude: 1/4
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
					% performer: Violin 08, offset: 97/32, magnitude: 9/32
					\stopStaff
					r16.
					r8
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 53/16, magnitude: 5/32
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
					% performer: Violin 08, offset: 111/32, magnitude: 37/32
					\stopStaff
					r32
					r4
					R2. * 1
					r8
					\startStaff
				}
				{
					% performer: Violin 08, offset: 37/8, magnitude: 1/8
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
					% performer: Violin 08, offset: 19/4, magnitude: 11/32
					\stopStaff
					r4
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 163/32, magnitude: 1/8
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
					% performer: Violin 08, offset: 167/32, magnitude: 45/16
					\stopStaff
					r32
					R2. * 3
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 257/32, magnitude: 3/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 65/8, magnitude: 117/32
					\stopStaff
					r8
					R2. * 4
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 377/32, magnitude: 3/16
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
					% performer: Violin 08, offset: 383/32, magnitude: 7/32
					\stopStaff
					r32
					r8.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 195/16, magnitude: 7/32
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
					% performer: Violin 08, offset: 397/32, magnitude: 13/32
					\stopStaff
					r16.
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 205/16, magnitude: 1/8
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
					% performer: Violin 08, offset: 207/16, magnitude: 13/32
					\stopStaff
					r16
					r4
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 427/32, magnitude: 1/8
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
					% performer: Violin 08, offset: 431/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 27/2, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 08, offset: 437/32, magnitude: 1/4
					\stopStaff
					r16.
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 445/32, magnitude: 1/4
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
					{
						r32
						r32
						r32
						r32
					}
				}
				{
					% performer: Violin 08, offset: 453/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 227/16, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						c'32
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
					% performer: Violin 08, offset: 231/16, magnitude: 9/16
					\stopStaff
					r16
					r4
					r4
					\startStaff
				}
				{
					% performer: Violin 08, offset: 15, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
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
					% performer: Violin 08, offset: 485/32, magnitude: 119/32
					\stopStaff
					r16.
					r4
					r4
					R2. * 4
					r8
					\startStaff
				}
				{
					% performer: Violin 08, offset: 151/8, magnitude: 3/16
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
					% performer: Violin 08, offset: 305/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 611/32, magnitude: 1/4
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
					% performer: Violin 08, offset: 619/32, magnitude: 45/32
					\stopStaff
					r32
					r8
					R2. * 1
					r2
					\startStaff
				}
				{
					% performer: Violin 08, offset: 83/4, magnitude: 5/32
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
					% performer: Violin 08, offset: 669/32, magnitude: 29/32
					\stopStaff
					r16.
					R2. * 1
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 349/16, magnitude: 1/8
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
					% performer: Violin 08, offset: 351/16, magnitude: 33/16
					\stopStaff
					r16
					r4
					r4
					R2. * 2
					\startStaff
				}
				{
					% performer: Violin 08, offset: 24, magnitude: 7/32
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
						a32
					}
				}
				{
					% performer: Violin 08, offset: 775/32, magnitude: 1/16
					\stopStaff
					r32
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 777/32, magnitude: 3/16
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 08, offset: 783/32, magnitude: 5/16
					\stopStaff
					r32
					r4
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 793/32, magnitude: 31/32
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
					% performer: Violin 08, offset: 103/4, magnitude: 13/32
					\stopStaff
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 837/32, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 841/32, magnitude: 1/4
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
					% performer: Violin 08, offset: 849/32, magnitude: 5/32
					\stopStaff
					r16.
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 427/16, magnitude: 15/16
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
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 221/8, magnitude: 3/16
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
					% performer: Violin 08, offset: 445/16, magnitude: 7/16
					\stopStaff
					r16
					r8
					r4
					\startStaff
				}
				{
					% performer: Violin 08, offset: 113/4, magnitude: 7/8
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
					% performer: Violin 08, offset: 233/8, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Violin 08, offset: 117/4, magnitude: 1/2
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
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 119/4, magnitude: 1/4
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
					{
						r32
						r32
						r32
						r32
					}
				}
				{
					% performer: Violin 08, offset: 30, magnitude: 5/16
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 485/16, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						a32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 977/32, magnitude: 13/16
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 1003/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						e'32
					}
				}
				{
					% performer: Violin 08, offset: 63/2, magnitude: 1/4
					\stopStaff
					r4
					\startStaff
				}
				{
					% performer: Violin 08, offset: 127/4, magnitude: 5/32
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
					% performer: Violin 08, offset: 1021/32, magnitude: 1/8
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
					% performer: Violin 08, offset: 1025/32, magnitude: 31/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 33, magnitude: 3/4
					\stopStaff
					R2. * 1
					\startStaff
				}
				{
					% performer: Violin 08, offset: 135/4, magnitude: 1/8
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
					% performer: Violin 08, offset: 271/8, magnitude: 35/32
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
						s32
						a32
					}
				}
				{
					% performer: Violin 08, offset: 1119/32, magnitude: 43/32
					\stopStaff
					r32
					r4
					R2. * 1
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 581/16, magnitude: 15/16
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 149/4, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						c'32
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
					% performer: Violin 08, offset: 75/2, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Violin 08, offset: 301/8, magnitude: 7/32
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
					% performer: Violin 08, offset: 1211/32, magnitude: 11/32
					\stopStaff
					r32
					r8
					r8.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 611/16, magnitude: 5/16
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 77/2, magnitude: 1/8
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
					% performer: Violin 08, offset: 309/8, magnitude: 21/32
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 1257/32, magnitude: 17/16
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
					% performer: Violin 08, offset: 1291/32, magnitude: 581/32
					\stopStaff
					r32
					r8
					R2. * 24
					\startStaff
				}
				{
					% performer: Violin 08, offset: 117/2, magnitude: 7/32
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
						c'32
					}
				}
				{
					% performer: Violin 08, offset: 1879/32, magnitude: 73/32
					\stopStaff
					r32
					r4
					r4
					R2. * 2
					r4
					\startStaff
				}
				{
					% performer: Violin 08, offset: 61, magnitude: 5/32
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
					% performer: Violin 08, offset: 1957/32, magnitude: 5/32
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
					% performer: Violin 08, offset: 981/16, magnitude: 7/32
					{
						c'32 \glissando
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
					% performer: Violin 08, offset: 1969/32, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						f32
					}
				}
				{
					% performer: Violin 08, offset: 1973/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 987/16, magnitude: 29/32
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
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 2003/32, magnitude: 5/32
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
					% performer: Violin 08, offset: 251/4, magnitude: 9/32
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
					% performer: Violin 08, offset: 2017/32, magnitude: 3/8
					\stopStaff
					r16.
					r8
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2029/32, magnitude: 5/32
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
					% performer: Violin 08, offset: 1017/16, magnitude: 107/32
					\stopStaff
					r16
					r8
					R2. * 4
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2141/32, magnitude: 47/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 547/8, magnitude: 3
					\stopStaff
					r8
					r4
					r4
					R2. * 3
					r8
					\startStaff
				}
				{
					% performer: Violin 08, offset: 571/8, magnitude: 23/16
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
						a32 \glissando
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
						f32
					}
				}
				{
					% performer: Violin 08, offset: 1165/16, magnitude: 19/16
					\stopStaff
					r16
					r8
					r4
					r4
					r2
					\startStaff
				}
				{
					% performer: Violin 08, offset: 74, magnitude: 1/4
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
					}
				}
				{
					% performer: Violin 08, offset: 297/4, magnitude: 27/16
					\stopStaff
					R2. * 2
					r8.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1215/16, magnitude: 27/32
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
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 2457/32, magnitude: 3/16
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
					% performer: Violin 08, offset: 2463/32, magnitude: 1/4
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
					% performer: Violin 08, offset: 2471/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 309/4, magnitude: 7/32
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
						f32
					}
				}
				{
					% performer: Violin 08, offset: 2479/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 155/2, magnitude: 33/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 2513/32, magnitude: 7/32
					\stopStaff
					r16.
					r8
					\startStaff
				}
				{
					% performer: Violin 08, offset: 315/4, magnitude: 7/32
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
					% performer: Violin 08, offset: 2527/32, magnitude: 21/32
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 637/8, magnitude: 7/32
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
						c'32
					}
				}
				{
					% performer: Violin 08, offset: 2555/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 639/8, magnitude: 1/4
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 641/8, magnitude: 3/16
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
					% performer: Violin 08, offset: 1285/16, magnitude: 7/32
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
						c'32
					}
				}
				{
					% performer: Violin 08, offset: 2577/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1289/16, magnitude: 3/16
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
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 323/4, magnitude: 33/32
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
						f32
					}
				}
				{
					% performer: Violin 08, offset: 2617/32, magnitude: 5/32
					\stopStaff
					r16.
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1311/16, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
						s32
						s32
					}
					{
						f32 \glissando
						f32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 1315/16, magnitude: 5/16
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
						a32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 165/2, magnitude: 5/32
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
					% performer: Violin 08, offset: 2645/32, magnitude: 7/16
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
					% performer: Violin 08, offset: 2659/32, magnitude: 1/4
					\stopStaff
					r32
					r8
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2667/32, magnitude: 19/32
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
						a32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 1343/16, magnitude: 5/32
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
					% performer: Violin 08, offset: 2691/32, magnitude: 7/16
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
					% performer: Violin 08, offset: 2705/32, magnitude: 49/32
					\stopStaff
					r16.
					r8
					R2. * 1
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1377/16, magnitude: 3/16
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 08, offset: 345/4, magnitude: 25/32
					\stopStaff
					R2. * 1
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2785/32, magnitude: 1/8
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
					% performer: Violin 08, offset: 2789/32, magnitude: 9/16
					\stopStaff
					r16.
					r4
					r8..
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2807/32, magnitude: 1/2
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 2823/32, magnitude: 3/16
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
					% performer: Violin 08, offset: 2829/32, magnitude: 1/2
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
					}
				}
				{
					% performer: Violin 08, offset: 2845/32, magnitude: 1/4
					\stopStaff
					r16.
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2853/32, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
						s32
						a32
					}
				}
				{
					% performer: Violin 08, offset: 2859/32, magnitude: 1/8
					\stopStaff
					r32
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2863/32, magnitude: 1/4
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
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						g'32 \glissando \startTextSpan
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 08, offset: 2871/32, magnitude: 1/8
					\stopStaff
					r32
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2875/32, magnitude: 5/32
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
					% performer: Violin 08, offset: 90, magnitude: 1/4
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
						s32
						c'32
					}
				}
				{
					% performer: Violin 08, offset: 361/4, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2893/32, magnitude: 21/16
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
					% performer: Violin 08, offset: 2935/32, magnitude: 17/32
					\stopStaff
					r32
					r4
					r4
					\startStaff
				}
				{
					% performer: Violin 08, offset: 369/4, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 08, offset: 185/2, magnitude: 15/16
					\stopStaff
					r4
					r4
					r4..
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1495/16, magnitude: 7/8
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
						e'32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 1509/16, magnitude: 21/32
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
						f32
					}
				}
				{
					% performer: Violin 08, offset: 3039/32, magnitude: 27/32
					\stopStaff
					r32
					r4
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1533/16, magnitude: 1/4
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
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 08, offset: 1537/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Violin 08, offset: 385/4, magnitude: 11/16
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
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Violin 08, offset: 1551/16, magnitude: 21/32
					\stopStaff
					r16
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 3123/32, magnitude: 1/4
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
					}
				}
				{
					% performer: Violin 08, offset: 3131/32, magnitude: 5/16
					\stopStaff
					r32
					r8
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 3141/32, magnitude: 25/32
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
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 08, offset: 1583/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 99, magnitude: 25/32
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
						c'32 \glissando
						s32
						s32
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 3193/32, magnitude: 9/16
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 3211/32, magnitude: 1/4
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
						c'32
					}
				}
				{
					% performer: Violin 08, offset: 3219/32, magnitude: 27/32
					\stopStaff
					r32
					r8
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1623/16, magnitude: 13/32
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
						e'32 \glissando
						s32
						s32
						g'32
					}
				}
				{
					% performer: Violin 08, offset: 3259/32, magnitude: 15/32
					\stopStaff
					r32
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1637/16, magnitude: 29/32
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
					% performer: Violin 08, offset: 3303/32, magnitude: 3/32
					\stopStaff
					r32
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1653/16, magnitude: 1/4
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
						a32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 1657/16, magnitude: 29/32
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
						s32
						a32
					}
				}
				{
					% performer: Violin 08, offset: 3343/32, magnitude: 19/32
					\stopStaff
					r32
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1681/16, magnitude: 39/32
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
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 3401/32, magnitude: 23/16
					\stopStaff
					r16.
					r8
					R2. * 1
					r4...
					\startStaff
				}
				{
					% performer: Violin 08, offset: 3447/32, magnitude: 1
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
						a32
					}
				}
				{
					% performer: Violin 08, offset: 3479/32, magnitude: 11/8
					\stopStaff
					r32
					R2. * 1
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 3523/32, magnitude: 9/32
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
						c'32
					}
				}
				{
					% performer: Violin 08, offset: 883/8, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1767/16, magnitude: 13/16
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
						a32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 445/4, magnitude: 11/32
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
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 3571/32, magnitude: 39/32
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
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 1805/16, magnitude: 7/32
					{
						f32 \glissando
						s32
						s32
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 08, offset: 3617/32, magnitude: 79/32
					\stopStaff
					r16.
					r8
					R2. * 3
					\startStaff
				}
				{
					% performer: Violin 08, offset: 231/2, magnitude: 3/16
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
					% performer: Violin 08, offset: 1851/16, magnitude: 33/16
					\stopStaff
					r16
					r4
					r4
					R2. * 2
					\startStaff
				}
				{
					% performer: Violin 08, offset: 471/4, magnitude: 3/16
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
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 1887/16, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 08, offset: 1889/16, magnitude: 11/32
					\stopStaff
					r16
					r8
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 3789/32, magnitude: 37/32
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
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 1913/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 3829/32, magnitude: 29/32
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 08, offset: 1929/16, magnitude: 39/32
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
					% performer: Violin 08, offset: 3897/32, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 975/8, magnitude: 19/32
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
						c'32
					}
				}
				{
					% performer: Violin 08, offset: 3919/32, magnitude: 17/32
					\stopStaff
					r32
					r4
					r4
					\startStaff
				}
				{
					% performer: Violin 08, offset: 123, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						e'32
					}
				}
				{
					% performer: Violin 08, offset: 3941/32, magnitude: 35/32
					\stopStaff
					r16.
					r4
					r4
					r2
					\startStaff
				}
				{
					% performer: Violin 08, offset: 497/4, magnitude: 37/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 08, offset: 4013/32, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Violin 08, offset: 251/2, magnitude: 15/32
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
					}
				}
				{
					% performer: Violin 08, offset: 4031/32, magnitude: 1/4
					\stopStaff
					r32
					r8..
					\startStaff
				}
				{
					% performer: Violin 08, offset: 4039/32, magnitude: 7/32
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
					% performer: Violin 08, offset: 2023/16, magnitude: 1/8
					\stopStaff
					r16
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2025/16, magnitude: 3/4
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
						a32
					}
				}
				{
					% performer: Violin 08, offset: 2037/16, magnitude: 5/16
					\stopStaff
					r16
					r8
					r8
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1021/8, magnitude: 29/32
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
					% performer: Violin 08, offset: 4113/32, magnitude: 25/32
					\stopStaff
					r16.
					r8
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2069/16, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						e'32
					}
				}
				{
					% performer: Violin 08, offset: 4143/32, magnitude: 29/4
					\stopStaff
					r32
					r4
					R2. * 9
					r8..
					\startStaff
				}
				{
					% performer: Violin 08, offset: 4375/32, magnitude: 1/8
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
					% performer: Violin 08, offset: 4379/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 08, offset: 1095/8, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						a32 \glissando
						s32
						a32
					}
				}
				{
					% performer: Violin 08, offset: 2193/16, magnitude: 1/4
					\stopStaff
					r16
					r8
					r16
					\startStaff
				}
				{
					% performer: Violin 08, offset: 2197/16, magnitude: 3/16
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
						a32
					}
				}
				{
					% performer: Violin 08, offset: 275/2, magnitude: 3/4
					\stopStaff
					r4
					r4
					r4
					\startStaff
				}
				{
					% performer: Violin 08, offset: 553/4, magnitude: 1/8
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
					% performer: Violin 08, offset: 1107/8, magnitude: 27/8
					\stopStaff
					r8
					r4
					R2. * 4
					\startStaff
				}
				{
					% performer: Violin 08, offset: 567/4, magnitude: 1/4
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
						e'32 \glissando
						e'32
					}
				}
				{
					% performer: Violin 08, offset: 142, magnitude: 23/4
					\stopStaff
					r4
					r4
					R2. * 7
					\startStaff
				}
			}
			\new Staff \with {
				\remove Instrument_name_engraver
				\override Glissando #'zigzag-length = #1
				\override Glissando #'zigzag-width = #2
				instrumentName = #"Violin 08"
				shortInstrumentName = #"Violin 08"
			} {
				\clef "treble"
				\time 3/4
				\tempo 4 = 66
				\compressFullBarRests
				\mergeDifferentlyDottedOn
				\mergeDifferentlyHeadedOn
				{
					% performer: Violin 08, offset: 0, magnitude: 7/32
					r8..
				}
				<<
					% performer: Violin 08, offset: 7/32, magnitude: 1/8
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
								ef'32 [ (
								r32
								r32
								eqs'32 ] )
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
								ef'32 \glissando
								s32
								s32
								eqs'32
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
					% performer: Violin 08, offset: 11/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 3/8, magnitude: 3/16
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
								aqs32 [ (
								r32
								r32
								r32
								r32
								dqf'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqs32 \glissando
								s32
								s32
								s32
								s32
								dqf'32
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
					% performer: Violin 08, offset: 9/16, magnitude: 1/2
					r16
					r8
					r4
					r16
				}
				<<
					% performer: Violin 08, offset: 17/16, magnitude: 7/32
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
								b'32 [ (
								r32
								r32
								r32
								dqs'32 ] )
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
								b'32 \glissando
								s32
								s32
								s32
								dqs'32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs''32 :256 [ ~ \startTrillSpan af''
							gqs''32 * 99/100 :256 ]
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
					% performer: Violin 08, offset: 41/32, magnitude: 21/32
					r16.
					r8
					r4..
				}
				<<
					% performer: Violin 08, offset: 31/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqf'16 [ ~ \startTrillSpan eqf''
							bqf'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs''16 * 99/100 :128 \startTrillSpan bqs''
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
					% performer: Violin 08, offset: 67/32, magnitude: 17/32
					r32
					r8
					r4.
				}
				<<
					% performer: Violin 08, offset: 21/8, magnitude: 1/8
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
								dqs''32 [ (
								r32
								r32
								a''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqs''32 \glissando
								s32
								s32
								a''32
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
					% performer: Violin 08, offset: 11/4, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 89/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e''32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d''32 -\staccato
							fs'32 -\staccato
							g32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqf32 ^ \markup { \italic Pizz. } [
								r32
								r32
								fs'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqf32 \glissando
								s32
								s32
								fs'32
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
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 97/32, magnitude: 9/32
					r16.
					r8
					r16
				}
				<<
					% performer: Violin 08, offset: 53/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							f''8 [ ~ ~ \startTrillSpan fs''
							f''32 * 99/100 ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 111/32, magnitude: 37/32
					r32
					r4
					R2. * 1
					r8
				}
				<<
					% performer: Violin 08, offset: 37/8, magnitude: 1/8
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
								f'32 [ (
								r32
								r32
								eqf'32 ] )
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
								f'32 \glissando
								s32
								s32
								eqf'32
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
					% performer: Violin 08, offset: 19/4, magnitude: 11/32
					r4
					r16.
				}
				<<
					% performer: Violin 08, offset: 163/32, magnitude: 1/8
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
								dqf''32 [ (
								r32
								r32
								gqs''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqf''32 \glissando
								s32
								s32
								gqs''32
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
					% performer: Violin 08, offset: 167/32, magnitude: 45/16
					r32
					R2. * 3
					r4
					r4
					r32
				}
				<<
					% performer: Violin 08, offset: 257/32, magnitude: 3/32
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
								cqs''32 [ (
								r32
								eqs'32 ] )
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
								cqs''32 \glissando
								s32
								eqs'32
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
					% performer: Violin 08, offset: 65/8, magnitude: 117/32
					r8
					R2. * 4
					r4
					r4
					r32
				}
				<<
					% performer: Violin 08, offset: 377/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							a''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							d''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato ] )
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 383/32, magnitude: 7/32
					r32
					r8.
				}
				<<
					% performer: Violin 08, offset: 195/16, magnitude: 7/32
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
								af32 -\accent [ (
								r32
								r32
								r32
								r32
								r32
								gqs32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								af32 \glissando
								s32
								s32
								s32
								s32
								s32
								gqs32
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 397/32, magnitude: 13/32
					r16.
					r4
					r16
				}
				<<
					% performer: Violin 08, offset: 205/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bf32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d''32 -\staccato
							e''32 -\open -\staccato ] )
							\slurSolid
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
					% performer: Violin 08, offset: 207/16, magnitude: 13/32
					r16
					r4
					r16.
				}
				<<
					% performer: Violin 08, offset: 427/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cs'''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							s32 \f
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Violin 08, offset: 431/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 27/2, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							g32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							bf''32 ] )
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
							s32 \mf
						}
					}
				>>
				{
					% performer: Violin 08, offset: 437/32, magnitude: 1/4
					r16.
					r8
					r32
				}
				<<
					% performer: Violin 08, offset: 445/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								b'32 [
								r32
								r32
								ef'32 ]
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
								b'32 \glissando
								s32
								s32
								ef'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cqs''32 ^ \markup { \italic Pizz. } [
								r32
								r32
								dqf''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cqs''32 \glissando
								s32
								s32
								dqf''32
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
							s32 \mp \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 453/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 227/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							c'''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							f''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqf'32 -\snappizzicato ^ \markup { \italic Pizz. } [
								r32
								r32
								eqf'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqf'32 \glissando
								s32
								s32
								eqf'32
							}
						>>
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
							s32 \mf \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 231/16, magnitude: 9/16
					r16
					r4
					r4
				}
				<<
					% performer: Violin 08, offset: 15, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							eqf''16. * 99/100 -\accent \startTrillSpan gqf''
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fqs''16 * 99/100 :128 \startTrillSpan gqf''
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
					% performer: Violin 08, offset: 485/32, magnitude: 119/32
					r16.
					r4
					r4
					R2. * 4
					r8
				}
				<<
					% performer: Violin 08, offset: 151/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							e''32 -\accent -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							af'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato ] )
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
					% performer: Violin 08, offset: 305/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 611/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf32 -\accent [
								r32
								r32
								f'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf32 \glissando
								s32
								s32
								f'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cqs''32 ^ \markup { \italic Pizz. } [
								r32
								r32
								cs''32 ]
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
								cqs''32 \glissando
								s32
								s32
								cs''32
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
					% performer: Violin 08, offset: 619/32, magnitude: 45/32
					r32
					r8
					R2. * 1
					r2
				}
				<<
					% performer: Violin 08, offset: 83/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							a32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							e'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af''32 -\staccato ] )
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 669/32, magnitude: 29/32
					r16.
					R2. * 1
					r16
				}
				<<
					% performer: Violin 08, offset: 349/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							b''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato ] )
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
					% performer: Violin 08, offset: 351/16, magnitude: 33/16
					r16
					r4
					r4
					R2. * 2
				}
				<<
					% performer: Violin 08, offset: 24, magnitude: 7/32
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
								bf''32 -\accent [ (
								r32
								r32
								c'''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf''32 \glissando
								s32
								s32
								c'''32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							d''16. * 99/100 :128 \startTrillSpan e''
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
					% performer: Violin 08, offset: 775/32, magnitude: 1/16
					r32
					r32
				}
				<<
					% performer: Violin 08, offset: 777/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a'8.
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
							s32 \mf \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 783/32, magnitude: 5/16
					r32
					r4
					r32
				}
				<<
					% performer: Violin 08, offset: 793/32, magnitude: 31/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs'8.. [ ~
							gqs'8 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							cqs'4 :32
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
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
					% performer: Violin 08, offset: 103/4, magnitude: 13/32
					r4
					r8
					r32
				}
				<<
					% performer: Violin 08, offset: 837/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf'32 [
								r32
								r32
								bqs'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf'32 \glissando
								s32
								s32
								bqs'32
							}
						>>
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
					% performer: Violin 08, offset: 841/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b'8.. [ ~
							b'32 ]
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
							s32 \mf \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 849/32, magnitude: 5/32
					r16.
					r16
				}
				<<
					% performer: Violin 08, offset: 427/16, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs'16 ] ~
							eqs'4
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqf''32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							e''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							cs''8 :64 [ ~ ~
							cs''32 :256 ~
							cs''8 :64 ]
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
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 221/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								fs''32 [
								r32
								r32
								r32
								r32
								c''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fs''32 \glissando
								s32
								s32
								s32
								s32
								c''32
							}
						>>
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
				{
					% performer: Violin 08, offset: 445/16, magnitude: 7/16
					r16
					r8
					r4
				}
				<<
					% performer: Violin 08, offset: 113/4, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs4 ~
							gqs32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqf'32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							af'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs'8 [ ~ ~
							fqs'32 ~
							fqs'8 ]
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
					% performer: Violin 08, offset: 233/8, magnitude: 1/8
					r8
				}
				<<
					% performer: Violin 08, offset: 117/4, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''4
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqs'4 :32
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
							s32 \mp \>
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
					% performer: Violin 08, offset: 119/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqf''32 [
								r32
								r32
								bqf'32 ]
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
								eqf''32 \glissando
								s32
								s32
								bqf'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqf''32 -\snappizzicato ^ \markup { \italic Pizz. } [
								r32
								r32
								bqf'32 ]
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
								dqf''32 \glissando
								s32
								s32
								bqf'32
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
							s32 \p \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 30, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs''4 ~
							fqs''16
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
							s32 \p \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 485/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							g'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							s32 \fppp \<
							s32
							s32
							s32
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 977/32, magnitude: 13/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e''8.. [ ~
							e''8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							f'16 ] ~
							f'4 ~
							f'16.
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
					% performer: Violin 08, offset: 1003/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							bf''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							d''32
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							c'32 ] )
						}
						\revert TextScript #'staff-padding
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
					% performer: Violin 08, offset: 63/2, magnitude: 1/4
					r4
				}
				<<
					% performer: Violin 08, offset: 127/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d'8 [ ~ ~
							d'32 ]
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
					% performer: Violin 08, offset: 1021/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef'32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							c''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef'''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
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
					% performer: Violin 08, offset: 1025/32, magnitude: 31/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf'8.. [ ~
							aqf'16 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							dqs''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							dqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bqf''8 [ ~ ~
							bqf''32 ] ~
							bqf''4
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
					}
				>>
				{
					% performer: Violin 08, offset: 33, magnitude: 3/4
					R2. * 1
				}
				<<
					% performer: Violin 08, offset: 135/4, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							dqs''8 * 99/100 -\accent \startTrillSpan aqf''
							s8 * 1/100 \stopTrillSpan
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
					% performer: Violin 08, offset: 271/8, magnitude: 35/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf''8 [ ~
							dqf''8 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							b'32 [ (
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							dqs''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							c''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							aqs''32 :256 ] ~
							aqs''4... :32
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
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 1119/32, magnitude: 43/32
					r32
					r4
					R2. * 1
					r4
					r16
				}
				<<
					% performer: Violin 08, offset: 581/16, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf''8. [ ~
							bf''8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqf''32 [ (
							\once \override NoteHead #'style = #'harmonic
							a''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							af''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32 ] )
						}
						{
							e''4 -\open
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
				<<
					% performer: Violin 08, offset: 149/4, magnitude: 1/4
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
								eqf''32 [ (
								r32
								r32
								eqs''32 ] )
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
								eqf''32 \glissando
								s32
								s32
								eqs''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf''32 -\snappizzicato ^ \markup { \italic Pizz. } [
								r32
								r32
								d'''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf''32 \glissando
								s32
								s32
								d'''32
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
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 75/2, magnitude: 1/8
					r8
				}
				<<
					% performer: Violin 08, offset: 301/8, magnitude: 7/32
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
								ef''32 [ (
								r32
								r32
								r32
								r32
								r32
								dqs''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								ef''32 \glissando
								s32
								s32
								s32
								s32
								s32
								dqs''32
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
					% performer: Violin 08, offset: 1211/32, magnitude: 11/32
					r32
					r8
					r8.
				}
				<<
					% performer: Violin 08, offset: 611/16, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf''16 ] ~
							gqf''4
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
					}
				>>
				<<
					% performer: Violin 08, offset: 77/2, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							e''32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							g''32
							d'32 -\open
							g32 -\open ] )
						}
						\revert TextScript #'staff-padding
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
					% performer: Violin 08, offset: 309/8, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs'8 ] ~
							fs'4
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							f'4 ~
							f'32
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
					}
				>>
				<<
					% performer: Violin 08, offset: 1257/32, magnitude: 17/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e'8.. [ ~
							e'8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							f'8 :64 [ ~ ~
							f'32 :256 ~
							f'16. :128 ]
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
							s32 \mf \>
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
					% performer: Violin 08, offset: 1291/32, magnitude: 581/32
					r32
					r8
					R2. * 24
				}
				<<
					% performer: Violin 08, offset: 117/2, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cs'8 -\accent [ ~ ~ \startTrillSpan eqf'
							cs'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							b'16 * 99/100 :128 \startTrillSpan c''
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
					% performer: Violin 08, offset: 1879/32, magnitude: 73/32
					r32
					r4
					r4
					R2. * 2
					r4
				}
				<<
					% performer: Violin 08, offset: 61, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							bf''32 -\accent ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d''32
							g'32
							b32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 1957/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf''16. [ ~
							aqf''16 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 981/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								fqs'32 -\accent [
								r32
								r32
								r32
								r32
								r32
								b32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fqs'32 \glissando
								s32
								s32
								s32
								s32
								s32
								b32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \sfz \>
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
					% performer: Violin 08, offset: 1969/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs''8
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
					% performer: Violin 08, offset: 1973/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 987/16, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs''16 [ ~
							dqs''8.. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bf'32 [ (
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							bf'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqs'8 :64 [ ~ ~
							dqs'32 :256 ~
							dqs'16. :128 ]
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
							s32 \mp \>
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
				<<
					% performer: Violin 08, offset: 2003/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							a32 -\accent ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							f'32
							d''32
							a''32 ] )
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 251/4, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a4 ~
							a32
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
							s32 \mf \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2017/32, magnitude: 3/8
					r16.
					r8
					r8
					r32
				}
				<<
					% performer: Violin 08, offset: 2029/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							a''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							c''32 -\staccato
							d'32 -\open -\staccato
							a32 -\staccato ] )
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 1017/16, magnitude: 107/32
					r16
					r8
					R2. * 4
					r8
					r32
				}
				<<
					% performer: Violin 08, offset: 2141/32, magnitude: 47/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs16. [ ~
							aqs8.. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							f'32 [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							e'32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							fs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							d'8. [ ~
							d'8 ]
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
					% performer: Violin 08, offset: 547/8, magnitude: 3
					r8
					r4
					r4
					R2. * 3
					r8
				}
				<<
					% performer: Violin 08, offset: 571/8, magnitude: 23/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs'8 ] ~
							eqs'4 ~
							eqs'16
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							b'32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							a'32 -\open
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							a'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							gqf'8.. :64 [ ~
							gqf'16 :128 ]
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
				{
					% performer: Violin 08, offset: 1165/16, magnitude: 19/16
					r16
					r8
					r4
					r4
					r2
				}
				<<
					% performer: Violin 08, offset: 74, magnitude: 1/4
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
								b32 [ (
								r32
								fqs'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b32 \glissando
								s32
								fqs'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								f'32 :256 [
								r32
								r32
								r32
								dqf''32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								f'32 \glissando
								s32
								s32
								s32
								dqf''32
							}
						>>
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
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Violin 08, offset: 297/4, magnitude: 27/16
					R2. * 2
					r8.
				}
				<<
					% performer: Violin 08, offset: 1215/16, magnitude: 27/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d'16 [ ~
							d'8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							cs''16 ] ~
							cs''4 ~
							cs''32
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
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 2457/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							c'32 -\staccato [ (
							dqf'32 -\staccato
							c'32 -\staccato
							dqf'32 -\staccato
							c'32 -\staccato
							cqs'32 -\staccato ] )
							\slurSolid
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
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 2463/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs'''32 [ ~
							cqs'''8.. ]
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
					% performer: Violin 08, offset: 2471/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 309/4, magnitude: 7/32
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
								bqs'32 -\accent [ (
								r32
								r32
								af'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs'32 \glissando
								s32
								s32
								af'32
							}
						>>
						{
							\pitchedTrill
							dqf''16. * 99/100 :128 \startTrillSpan gqf''
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
					% performer: Violin 08, offset: 2479/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 155/2, magnitude: 33/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf''4 ~
							aqf''8
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cqs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							bqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bf8 ] ~
							bf4 ~
							bf32
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
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2513/32, magnitude: 7/32
					r16.
					r8
				}
				<<
					% performer: Violin 08, offset: 315/4, magnitude: 7/32
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
								gqf'32 [ (
								r32
								r32
								ef'32 ] )
								\slurSolid
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
								gqf'32 \glissando
								s32
								s32
								ef'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								ef''32 :256 [
								r32
								d''32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								ef''32 \glissando
								s32
								d''32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32 \p \>
						}
						{
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 2527/32, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e'32 [ ~
							e'8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs'32 :256 ] ~
							fqs'4 :32 ~
							fqs'8 :64
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
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 637/8, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							d'32 -\open -\staccato [ (
							e'32 -\staccato
							ef'32 -\staccato
							e'32 -\staccato
							eqf'32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								e'32 :256 [
								dqs'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								e'32 \glissando
								dqs'32
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
							s32 \mp \>
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2555/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 639/8, magnitude: 1/4
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
								fs'32 [ (
								r32
								r32
								r32
								r32
								bf'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fs'32 \glissando
								s32
								s32
								s32
								s32
								bf'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf'32 :256 [
								d'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf'32 \glissando
								d'32
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
							s32 \p \>
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 641/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f'8 [ ~
							f'16 ]
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
					% performer: Violin 08, offset: 1285/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cqs'32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							bqf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bqf32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								af32 :256 [
								r32
								f'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								af32 \glissando
								s32
								f'32
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
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2577/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 1289/16, magnitude: 3/16
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
								aqs32 [ (
								r32
								r32
								fs'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqs32 \glissando
								s32
								s32
								fs'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								fs'32 :256 [
								af'32 :256 ]
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
								fs'32 \glissando
								af'32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32 \p \>
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 323/4, magnitude: 33/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs4 ~
							gqs16
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							c'32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bf'32 :256 ] ~
							bf'4 :32 ~
							bf'32 :256
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2617/32, magnitude: 5/32
					r16.
					r16
				}
				<<
					% performer: Violin 08, offset: 1311/16, magnitude: 1/4
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
								bqf'32 [ (
								r32
								ef''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqf'32 \glissando
								s32
								ef''32
							}
						>>
						{
							a'32 -\open [ (
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							bf'32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqf''32 :256 [
								eqf'''32 :256 ]
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
								gqf''32 \glissando
								eqf'''32
							}
						>>
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
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 1315/16, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							g16 -\open ] ~
							g4
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
							s32 \p \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 165/2, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							c'''8 -\accent [ ~ ~ \startTrillSpan ef'''
							c'''32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							s32 \sfz \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 2645/32, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''16. ] ~
							cqs''4 ~
							cqs''16.
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
					% performer: Violin 08, offset: 2659/32, magnitude: 1/4
					r32
					r8
					r16.
				}
				<<
					% performer: Violin 08, offset: 2667/32, magnitude: 19/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g''8 [ ~ ~
							g''32 ~
							g''8 ~ ~
							g''32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							f''16. :128 [ ~
							f''8. :64 ]
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
							s32 \mp \>
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
					% performer: Violin 08, offset: 1343/16, magnitude: 5/32
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
								gqs''32 [ (
								r32
								r32
								r32
								f''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs''32 \glissando
								s32
								s32
								s32
								f''32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 2691/32, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g''8 [ ~ ~
							g''32 ] ~
							g''4 ~
							g''32
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
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2705/32, magnitude: 49/32
					r16.
					r8
					R2. * 1
					r4
					r4
					r16
				}
				<<
					% performer: Violin 08, offset: 1377/16, magnitude: 3/16
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
								bqs''32 [ (
								r32
								fqs''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs''32 \glissando
								s32
								fqs''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqf'''32 :256 [
								r32
								b''32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqf'''32 \glissando
								s32
								b''32
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 345/4, magnitude: 25/32
					R2. * 1
					r32
				}
				<<
					% performer: Violin 08, offset: 2785/32, magnitude: 1/8
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
								eqf'''32 [ (
								r32
								r32
								b''32 ] )
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
								eqf'''32 \glissando
								s32
								s32
								b''32
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
					% performer: Violin 08, offset: 2789/32, magnitude: 9/16
					r16.
					r4
					r8..
				}
				<<
					% performer: Violin 08, offset: 2807/32, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e''32 [ ~
							e''8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							gqs''32 :256 [ ~
							gqs''8.. :64 ]
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
					}
				>>
				<<
					% performer: Violin 08, offset: 2823/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							d''32 -\staccato [ (
							ef''32 -\staccato
							d''32 -\staccato
							cqs''32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								g'32 :256 [
								af'32 :256 ]
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
								g'32 \glissando
								af'32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32 \p \>
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 2829/32, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf'''16. ] ~
							dqf'''4 ~
							dqf'''8 [ ~ ~
							dqf'''32 ]
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
							s32 \mf \>
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
					% performer: Violin 08, offset: 2845/32, magnitude: 1/4
					r16.
					r8
					r32
				}
				<<
					% performer: Violin 08, offset: 2853/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							eqf'32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							dqs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d'32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								b'32 :256 [
								r32
								eqf'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b'32 \glissando
								s32
								eqf'32
							}
						>>
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
							s32
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2859/32, magnitude: 1/8
					r32
					r16.
				}
				<<
					% performer: Violin 08, offset: 2863/32, magnitude: 1/4
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
								b'32 [ (
								r32
								e'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b'32 \glissando
								s32
								e'32
							}
						>>
						{
							\once \override NoteHead #'style = #'harmonic
							cs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							bqs'32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqs''32 :256 [
								aqf''32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs''32 \glissando
								aqf''32
							}
						>>
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
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2871/32, magnitude: 1/8
					r32
					r16.
				}
				<<
					% performer: Violin 08, offset: 2875/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							aqs''32 -\staccato [ (
							bf''32 -\staccato
							bqf''32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cs'''32 :256 [
								dqf'''32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cs'''32 \glissando
								dqf'''32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32 \p \>
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 90, magnitude: 1/4
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
								c''32 -\accent [ (
								r32
								bqs'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c''32 \glissando
								s32
								bqs'32
							}
						>>
						{
							\pitchedTrill
							cqs''8 :64 [ ~ ~ \startTrillSpan gqf''
							cqs''32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
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
					% performer: Violin 08, offset: 361/4, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Violin 08, offset: 2893/32, magnitude: 21/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''16. [ ~
							cqs''8 ~ ~
							cqs''32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							a''32 [ (
							\once \override NoteHead #'style = #'harmonic
							b''32
							\once \override NoteHead #'style = #'harmonic
							aqs''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							aqs''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							aqs''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqs'32 [ (
							a'32 -\open
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							b'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							ef''8.. [ ~
							ef''8.. ]
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
						}
						{
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
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2935/32, magnitude: 17/32
					r32
					r4
					r4
				}
				<<
					% performer: Violin 08, offset: 369/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							ef''16. * 99/100 -\accent \startTrillSpan aqf''
							s16. * 1/100 \stopTrillSpan
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								b'32 [
								r32
								g'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b'32 \glissando
								s32
								g'32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs'16 * 99/100 :128 \startTrillSpan g'
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
					% performer: Violin 08, offset: 185/2, magnitude: 15/16
					r4
					r4
					r4..
				}
				<<
					% performer: Violin 08, offset: 1495/16, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqs'16 [ ~ \startTrillSpan fs''
							bqs'8 ~ ~
							bqs'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							c''16. :128 [ ~ \startTrillSpan dqf''
							c''16 * 99/100 :128 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							gqs''8. :64 [ ~ \startTrillSpan bqs''
							gqs''16 * 99/100 :128 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fqs''8 * 99/100 \startTrillSpan a''
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							af''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							af32 ] )
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
							s32 \p \>
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
					% performer: Violin 08, offset: 1509/16, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs'8. [ ~
							bqs'16 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bqf'8. :64 [ ~
							bqf'8.. :64 ]
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
					% performer: Violin 08, offset: 3039/32, magnitude: 27/32
					r32
					r4
					r4
					r4
					r16
				}
				<<
					% performer: Violin 08, offset: 1533/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							cs'32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							d'32 -\open -\staccato
							e''32 -\staccato
							e''32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							eqs''16 [ ~ \startTrillSpan g''
							eqs''16 * 99/100 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 1537/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Violin 08, offset: 385/4, magnitude: 11/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							dqf'4 ~ \startTrillSpan g'
							dqf'16 * 99/100
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							af8. [ ~ \startTrillSpan a
							af16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							g8 * 99/100 -\open \startTrillSpan cs'
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
							s32
						}
						{
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 1551/16, magnitude: 21/32
					r16
					r4
					r4
					r16.
				}
				<<
					% performer: Violin 08, offset: 3123/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							cs''32 -\staccato
							e'32 -\staccato
							a32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							a32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							g''32 ] )
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 3131/32, magnitude: 5/16
					r32
					r8
					r8
					r32
				}
				<<
					% performer: Violin 08, offset: 3141/32, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqf16. :128 [ ~ \startTrillSpan dqf'
							bqf8 * 99/100 :64 ]
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							gqs8 * 99/100 :64 \startTrillSpan aqf
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af4 ~ \startTrillSpan d'
							af16 * 99/100
							s16 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							g32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							a'32
							e''32
							c'''32 ] )
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
					% performer: Violin 08, offset: 1583/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 08, offset: 99, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs'''8.. :64
							\revert NoteHead #'style
						}
						{
							\pitchedTrill
							gqf''32 ] ~ \startTrillSpan a''
							gqf''4 ~
							gqf''32 * 99/100
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							d''8 * 99/100 \startTrillSpan ef''
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							bf''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							ef''32
							g'32
							b32 ] )
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
					% performer: Violin 08, offset: 3193/32, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf'''8.. [ ~
							eqf'''16. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							c''8 [ ~ ~
							c''32 ~
							c''16. ]
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
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 3211/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e''32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf'32 -\staccato
							g32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							d'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf'32
							a'32 -\open
							\once \override NoteHead #'style = #'harmonic
							cs'''32 ] )
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
					% performer: Violin 08, offset: 3219/32, magnitude: 27/32
					r32
					r8
					r4
					r4
					r8.
				}
				<<
					% performer: Violin 08, offset: 1623/16, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							af16 :128 [ ~
							af8.. :64 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs32 [ ~ \startTrillSpan cqs'
							gqs16. * 99/100 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 3259/32, magnitude: 15/32
					r32
					r8
					r4
					r16
				}
				<<
					% performer: Violin 08, offset: 1637/16, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs''8. [ ~
							bqs''8 ~ ~
							bqs''32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							af''32 [ (
							\once \override NoteHead #'style = #'harmonic
							a''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							g''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							af''16 :128 [ ~
							af''8.. :64 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
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
					% performer: Violin 08, offset: 3303/32, magnitude: 3/32
					r32
					r16
				}
				<<
					% performer: Violin 08, offset: 1653/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							c'''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e''32 -\staccato
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							c'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							c'''32 ] )
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
					% performer: Violin 08, offset: 1657/16, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs''8. ] ~
							eqs''4 ~
							eqs''16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							af''8. :64 [ ~
							af''8.. :64 ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 3343/32, magnitude: 19/32
					r32
					r4
					r4
					r16
				}
				<<
					% performer: Violin 08, offset: 1681/16, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs''8. [ ~
							fqs''16. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqf''32 [ (
							\once \override NoteHead #'style = #'harmonic
							af''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							d''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							af''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							g''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqf'''8 ] ~
							dqf'''4 ~
							dqf'''32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 3401/32, magnitude: 23/16
					r16.
					r8
					R2. * 1
					r4...
				}
				<<
					% performer: Violin 08, offset: 3447/32, magnitude: 1
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf''32 ] ~
							bf''4 ~
							bf''8
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							c''32 [ (
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							c''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							c''8 :64 [ ~
							c''8.. :64 ]
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
					% performer: Violin 08, offset: 3479/32, magnitude: 11/8
					r32
					R2. * 1
					r4
					r4
					r16.
				}
				<<
					% performer: Violin 08, offset: 3523/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cs'8 [ ~ ~
							cs'32 ]
							\revert NoteHead #'style
						}
						{
							\pitchedTrill
							gqs8 * 99/100 \startTrillSpan aqf
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
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
					% performer: Violin 08, offset: 883/8, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 08, offset: 1767/16, magnitude: 13/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							af16 :128 ] ~
							af4 :32 ~
							af32 :256
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a8.. :64 [ ~ \startTrillSpan b
							a8 * 99/100 :64 ]
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							g32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g'32
							ef''32
							b''32 ] )
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
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 445/4, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g'4 ~
							g'16.
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
							s32 \mp \>
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 3571/32, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bf''8 [ ~ ~
							bf''32 ~
							bf''8 ~ ~
							bf''32 ]
						}
						{
							\pitchedTrill
							a'16. :128 -\open [ ~ \startTrillSpan b'
							a'16 * 99/100 :128 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqs'8. :64 [ ~ \startTrillSpan aqf'
							dqs'8 * 99/100 :64 ]
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							eqs''8 [ ~ \startTrillSpan f''
							eqs''8. * 99/100 ]
							s8. * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							ef'''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							g''32
							c''32
							f'32 ] )
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
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 1805/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs'8. [ ~
							gqs'32 ]
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
							s32 \mf \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 3617/32, magnitude: 79/32
					r16.
					r8
					R2. * 3
				}
				<<
					% performer: Violin 08, offset: 231/2, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							f''8. * 99/100 -\accent \startTrillSpan bf''
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
					% performer: Violin 08, offset: 1851/16, magnitude: 33/16
					r16
					r4
					r4
					R2. * 2
				}
				<<
					% performer: Violin 08, offset: 471/4, magnitude: 3/16
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
								fs''32 -\accent [ (
								r32
								g''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fs''32 \glissando
								s32
								g''32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							d''16. * 99/100 :128 \startTrillSpan fs''
							s16. * 1/100 \stopTrillSpan
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
							s32
						}
					}
				>>
				<<
					% performer: Violin 08, offset: 1887/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c'''16 [ ~
							c'''16 ]
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
				{
					% performer: Violin 08, offset: 1889/16, magnitude: 11/32
					r16
					r8
					r8
					r32
				}
				<<
					% performer: Violin 08, offset: 3789/32, magnitude: 37/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf''16. ] ~
							bqf''4 ~
							bqf''32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqf'32 [ (
							a'32 -\open
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							a'32 -\open
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							b'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							fs''16 ] ~
							fs''4 ~
							fs''16
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 1913/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Violin 08, offset: 3829/32, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''16. [ ~
							cqs''8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqf'32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							dqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							aqs'32 :256 ] ~
							aqs'4 :32 ~
							aqs'16 :128
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
					% performer: Violin 08, offset: 1929/16, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs'8. ] ~
							eqs'4 ~
							eqs'32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							aqs32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							e'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqf''4 ~
							dqf''32
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
					% performer: Violin 08, offset: 3897/32, magnitude: 3/32
					r16.
				}
				<<
					% performer: Violin 08, offset: 975/8, magnitude: 19/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							af8 [ ~
							af8 ~ ~
							af32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							c''16. :128 [ ~
							c''8.. :64 ]
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
						}
					}
				>>
				{
					% performer: Violin 08, offset: 3919/32, magnitude: 17/32
					r32
					r4
					r4
				}
				<<
					% performer: Violin 08, offset: 123, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								c'''32 -\accent [
								r32
								r32
								r32
								bqf''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c'''32 \glissando
								s32
								s32
								s32
								bqf''32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 3941/32, magnitude: 35/32
					r16.
					r4
					r4
					r2
				}
				<<
					% performer: Violin 08, offset: 497/4, magnitude: 37/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs'4 ~
							fqs'32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							a'32 [ (
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							fs'32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							e'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							eqf'16. [ ~
							eqf'8 ~ ~
							eqf'32 ]
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
					% performer: Violin 08, offset: 4013/32, magnitude: 3/32
					r16.
				}
				<<
					% performer: Violin 08, offset: 251/2, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f'4 ~
							f'8..
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 4031/32, magnitude: 1/4
					r32
					r8..
				}
				<<
					% performer: Violin 08, offset: 4039/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							ef'''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							fs''32
							bf'32
							ef'32 ] )
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
					% performer: Violin 08, offset: 2023/16, magnitude: 1/8
					r16
					r16
				}
				<<
					% performer: Violin 08, offset: 2025/16, magnitude: 3/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs'8. [ ~
							dqs'8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bqs'32 :256 ] ~
							bqs'4 :32 ~
							bqs'16 :128
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
				{
					% performer: Violin 08, offset: 2037/16, magnitude: 5/16
					r16
					r8
					r8
				}
				<<
					% performer: Violin 08, offset: 1021/8, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs'8 [ ~
							fs'8. ]
							\revert NoteHead #'style
						}
						{
							d'32 -\open [ (
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							b'4 ~
							b'32
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
				{
					% performer: Violin 08, offset: 4113/32, magnitude: 25/32
					r16.
					r8
					r4
					r4
					r16
				}
				<<
					% performer: Violin 08, offset: 2069/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							c'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							d'32 -\open
							d''32
							a''32 ] )
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 4143/32, magnitude: 29/4
					r32
					r4
					R2. * 9
					r8..
				}
				<<
					% performer: Violin 08, offset: 4375/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							ef'''32 -\staccato [ (
							e'''32 -\staccato
							eqf'''32 -\staccato
							e'''32 -\staccato ] )
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
					% performer: Violin 08, offset: 4379/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 08, offset: 1095/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							a''32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							gqs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							aqf''32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								f'32 :256 [
								r32
								af'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								f'32 \glissando
								s32
								af'32
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
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 2193/16, magnitude: 1/4
					r16
					r8
					r16
				}
				<<
					% performer: Violin 08, offset: 2197/16, magnitude: 3/16
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
								aqs32 [ (
								r32
								r32
								gqf'32 ] )
								\slurSolid
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
								aqs32 \glissando
								s32
								s32
								gqf'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqs32 :256 [
								fqs'32 :256 ]
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
								bqs32 \glissando
								fqs'32
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
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 275/2, magnitude: 3/4
					r4
					r4
					r4
				}
				<<
					% performer: Violin 08, offset: 553/4, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							dqf'32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							cs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cqs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							dqs'32 -\staccato ] )
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
					% performer: Violin 08, offset: 1107/8, magnitude: 27/8
					r8
					r4
					R2. * 4
				}
				<<
					% performer: Violin 08, offset: 567/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g''8. * 99/100 -\accent \startTrillSpan c'''
							s8. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs''16 * 99/100 :128 \startTrillSpan aqf''
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
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 08, offset: 142, magnitude: 23/4
					r4
					r4
					R2. * 7
					\bar "|."
				}
			}
		>>
	>>
}