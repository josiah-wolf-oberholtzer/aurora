% Abjad revision 4356
% 2011-05-15 23:30

\version "2.13.37"
\include "english.ly"
\include "/media/Work/dev/scores/abjad/cfg/abjad.scm"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 10)

\header {
	composer = #"Joséphine Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	instrument = #"Viola 02"
	tagline = \markup { "" }
	title = #"mbrsi/aurora"
}

\paper {
	#(define page-breaking ly:optimal-breaking)
	between-system-spacing = #'((space . 0) (padding . 2) (stretchability . 0) (minimum-distance . 0))
	bottom-margin = 0.75\in
	bottom-system-spacing = #'((space . 0) (padding . 4) (stretchability . 0) (minimum-distance . 0))
	evenFooterMarkup = \markup { \fill-line { "viola 02 - mbrsi/aurora - joséphine wolf oberholtzer" } }
	left-margin = 0.75\in
	max-systems-per-page = #8
	oddFooterMarkup = \markup { \fill-line { "joséphine wolf oberholtzer - mbrsi/aurora - viola 02" } }
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
		\context StaffGroup = "Viola 02" \with {
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
					% performer: Viola 02, offset: 0, magnitude: 3/16
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
						g'32
					}
				}
				{
					% performer: Viola 02, offset: 3/16, magnitude: 5/16
					\stopStaff
					r16
					r4
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1/2, magnitude: 1/4
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
					% performer: Viola 02, offset: 3/4, magnitude: 5/8
					\stopStaff
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 11/8, magnitude: 1/8
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
					% performer: Viola 02, offset: 3/2, magnitude: 17/32
					\stopStaff
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 65/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 69/32, magnitude: 13/32
					\stopStaff
					r16.
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 41/16, magnitude: 3/16
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
					% performer: Viola 02, offset: 11/4, magnitude: 11/16
					\stopStaff
					r4
					r4..
					\startStaff
				}
				{
					% performer: Viola 02, offset: 55/16, magnitude: 5/32
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
					% performer: Viola 02, offset: 115/32, magnitude: 37/32
					\stopStaff
					r32
					r8
					R2. * 1
					r4
					\startStaff
				}
				{
					% performer: Viola 02, offset: 19/4, magnitude: 1/8
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
					% performer: Viola 02, offset: 39/8, magnitude: 1/4
					\stopStaff
					r8
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 41/8, magnitude: 1/8
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
					% performer: Viola 02, offset: 21/4, magnitude: 3/2
					\stopStaff
					R2. * 2
					\startStaff
				}
				{
					% performer: Viola 02, offset: 27/4, magnitude: 1/4
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
					% performer: Viola 02, offset: 7, magnitude: 33/16
					\stopStaff
					r4
					r4
					R2. * 2
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 145/16, magnitude: 1/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						a32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 73/8, magnitude: 5/4
					\stopStaff
					r8
					r4
					r4
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 83/8, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						a32
					}
				}
				{
					% performer: Viola 02, offset: 21/2, magnitude: 1/2
					\stopStaff
					r2
					\startStaff
				}
				{
					% performer: Viola 02, offset: 11, magnitude: 5/32
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
					% performer: Viola 02, offset: 357/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 179/16, magnitude: 7/32
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
						f32
					}
				}
				{
					% performer: Viola 02, offset: 365/32, magnitude: 5/8
					\stopStaff
					r16.
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 385/32, magnitude: 5/32
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
					% performer: Viola 02, offset: 195/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 393/32, magnitude: 5/32
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
					% performer: Viola 02, offset: 199/16, magnitude: 7/16
					\stopStaff
					r16
					r4
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 103/8, magnitude: 1/8
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
					% performer: Viola 02, offset: 13, magnitude: 17/32
					\stopStaff
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 433/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 437/32, magnitude: 23/16
					\stopStaff
					r16.
					r4
					r4
					R2. * 1
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 483/32, magnitude: 1/4
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
					% performer: Viola 02, offset: 491/32, magnitude: 109/32
					\stopStaff
					r32
					r8
					r4
					R2. * 4
					\startStaff
				}
				{
					% performer: Viola 02, offset: 75/4, magnitude: 3/16
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Viola 02, offset: 303/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 19, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Viola 02, offset: 153/8, magnitude: 1/4
					\stopStaff
					r8
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 155/8, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 39/2, magnitude: 9/8
					\stopStaff
					R2. * 1
					r4.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 165/8, magnitude: 5/32
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
					% performer: Viola 02, offset: 665/32, magnitude: 25/32
					\stopStaff
					r16.
					r8
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 345/16, magnitude: 1/8
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
					% performer: Viola 02, offset: 347/16, magnitude: 37/16
					\stopStaff
					r16
					R2. * 3
					\startStaff
				}
				{
					% performer: Viola 02, offset: 24, magnitude: 1/4
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
					% performer: Viola 02, offset: 97/4, magnitude: 89/16
					\stopStaff
					r4
					r4
					R2. * 6
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 477/16, magnitude: 1/4
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
					% performer: Viola 02, offset: 481/16, magnitude: 13/32
					\stopStaff
					r16
					r8
					r8..
					\startStaff
				}
				{
					% performer: Viola 02, offset: 975/32, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 979/32, magnitude: 13/32
					\stopStaff
					r32
					r8
					r4
					\startStaff
				}
				{
					% performer: Viola 02, offset: 31, magnitude: 3/16
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
					% performer: Viola 02, offset: 499/16, magnitude: 21/32
					\stopStaff
					r16
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1019/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 1023/32, magnitude: 11/32
					\stopStaff
					r32
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 517/16, magnitude: 1/8
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
					% performer: Viola 02, offset: 519/16, magnitude: 21/16
					\stopStaff
					r16
					r4
					r4
					R2. * 1
					\startStaff
				}
				{
					% performer: Viola 02, offset: 135/4, magnitude: 3/16
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
					% performer: Viola 02, offset: 543/16, magnitude: 53/16
					\stopStaff
					r16
					r4
					r4
					R2. * 3
					r2
					\startStaff
				}
				{
					% performer: Viola 02, offset: 149/4, magnitude: 7/32
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
					% performer: Viola 02, offset: 1199/32, magnitude: 5/32
					\stopStaff
					r32
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 301/8, magnitude: 1/8
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
					% performer: Viola 02, offset: 151/4, magnitude: 1/4
					\stopStaff
					r4
					\startStaff
				}
				{
					% performer: Viola 02, offset: 38, magnitude: 5/32
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
					% performer: Viola 02, offset: 1221/32, magnitude: 33/32
					\stopStaff
					r16.
					R2. * 1
					r8.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 627/16, magnitude: 9/32
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
						s32
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 1263/32, magnitude: 67/32
					\stopStaff
					r32
					r4
					R2. * 2
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 665/16, magnitude: 1/4
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
					% performer: Viola 02, offset: 669/16, magnitude: 17/16
					\stopStaff
					r16
					r8
					R2. * 1
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 343/8, magnitude: 1/4
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
					% performer: Viola 02, offset: 345/8, magnitude: 23/16
					\stopStaff
					r8
					r4
					R2. * 1
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 713/16, magnitude: 1/4
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
					% performer: Viola 02, offset: 717/16, magnitude: 3/2
					\stopStaff
					r16
					r8
					R2. * 1
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 741/16, magnitude: 1/4
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
					% performer: Viola 02, offset: 745/16, magnitude: 47/32
					\stopStaff
					r16
					r8
					r4
					r4
					R2. * 1
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1537/32, magnitude: 1/4
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
					% performer: Viola 02, offset: 1545/32, magnitude: 23/16
					\stopStaff
					r16.
					r8
					r4
					R2. * 1
					r8..
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1591/32, magnitude: 1/4
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
					% performer: Viola 02, offset: 1599/32, magnitude: 71/16
					\stopStaff
					r32
					r4
					R2. * 5
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1741/32, magnitude: 3/16
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
					}
				}
				{
					% performer: Viola 02, offset: 1747/32, magnitude: 1/2
					\stopStaff
					r32
					r8
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1763/32, magnitude: 5/32
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
					% performer: Viola 02, offset: 221/4, magnitude: 13/4
					\stopStaff
					r4
					R2. * 4
					\startStaff
				}
				{
					% performer: Viola 02, offset: 117/2, magnitude: 1/4
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
					% performer: Viola 02, offset: 235/4, magnitude: 75/32
					\stopStaff
					r4
					r4
					R2. * 2
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1955/32, magnitude: 7/32
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
					% performer: Viola 02, offset: 981/16, magnitude: 7/32
					\stopStaff
					r16
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1969/32, magnitude: 1/4
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
					% performer: Viola 02, offset: 1977/32, magnitude: 7/32
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
					% performer: Viola 02, offset: 62, magnitude: 9/8
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
					% performer: Viola 02, offset: 505/8, magnitude: 1/8
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
					% performer: Viola 02, offset: 253/4, magnitude: 9/32
					\stopStaff
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2033/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 2037/32, magnitude: 5/32
					\stopStaff
					r16.
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1021/16, magnitude: 1/8
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
					% performer: Viola 02, offset: 1023/16, magnitude: 1/4
					\stopStaff
					r16
					r8.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1027/16, magnitude: 1/4
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 02, offset: 1031/16, magnitude: 11/16
					\stopStaff
					r16
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 521/8, magnitude: 1/8
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
					% performer: Viola 02, offset: 261/4, magnitude: 29/32
					\stopStaff
					R2. * 1
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2117/32, magnitude: 7/32
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 531/8, magnitude: 1/8
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
					% performer: Viola 02, offset: 133/2, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2133/32, magnitude: 19/32
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
						f32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 269/4, magnitude: 5/32
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
					% performer: Viola 02, offset: 2157/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1079/16, magnitude: 5/32
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
					% performer: Viola 02, offset: 2163/32, magnitude: 11/32
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
					% performer: Viola 02, offset: 1087/16, magnitude: 37/32
					\stopStaff
					r16
					r4
					R2. * 1
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2211/32, magnitude: 7/32
					{
						f32 \glissando
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
					% performer: Viola 02, offset: 1109/16, magnitude: 7/32
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
					% performer: Viola 02, offset: 2225/32, magnitude: 23/32
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
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 281/4, magnitude: 17/32
					\stopStaff
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2265/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 2269/32, magnitude: 63/32
					\stopStaff
					r16.
					r4
					R2. * 2
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 583/8, magnitude: 3/16
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
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 1169/16, magnitude: 9/8
					\stopStaff
					r16
					r8
					r4
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1187/16, magnitude: 7/32
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 02, offset: 2381/32, magnitude: 27/32
					\stopStaff
					r16.
					r4
					r4
					r4
					\startStaff
				}
				{
					% performer: Viola 02, offset: 301/4, magnitude: 21/32
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
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 2429/32, magnitude: 5/32
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
					% performer: Viola 02, offset: 1217/16, magnitude: 9/16
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
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 613/8, magnitude: 7/16
					\stopStaff
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1233/16, magnitude: 3/16
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
					% performer: Viola 02, offset: 309/4, magnitude: 5/32
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
					% performer: Viola 02, offset: 2477/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 2481/32, magnitude: 5/8
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
						f32
					}
				}
				{
					% performer: Viola 02, offset: 2501/32, magnitude: 5/32
					\stopStaff
					r16.
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1253/16, magnitude: 9/16
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
					% performer: Viola 02, offset: 631/8, magnitude: 3/16
					\stopStaff
					r8
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1265/16, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 1267/16, magnitude: 1/8
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
					% performer: Viola 02, offset: 1269/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2539/32, magnitude: 3/16
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
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 2545/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2549/32, magnitude: 5/32
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
					% performer: Viola 02, offset: 1277/16, magnitude: 1/4
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
					% performer: Viola 02, offset: 1281/16, magnitude: 1/4
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
					% performer: Viola 02, offset: 1285/16, magnitude: 5/32
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 02, offset: 2575/32, magnitude: 1/16
					\stopStaff
					r32
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2577/32, magnitude: 7/32
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
					% performer: Viola 02, offset: 323/4, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1293/16, magnitude: 7/32
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
						e'32 \glissando \startTextSpan
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
					% performer: Viola 02, offset: 2593/32, magnitude: 7/16
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 2607/32, magnitude: 7/32
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 1307/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2617/32, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						s32
						a32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 1311/16, magnitude: 7/32
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
					% performer: Viola 02, offset: 2629/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2631/32, magnitude: 3/16
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
					% performer: Viola 02, offset: 2637/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1319/16, magnitude: 1/8
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
					% performer: Viola 02, offset: 1321/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2645/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 2649/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2651/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 2655/32, magnitude: 21/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 669/8, magnitude: 1/4
					\stopStaff
					r8
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 671/8, magnitude: 5/8
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
						c'32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 169/2, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Viola 02, offset: 677/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2709/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Viola 02, offset: 1357/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2717/32, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
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
					% performer: Viola 02, offset: 681/8, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 341/4, magnitude: 1/4
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
					% performer: Viola 02, offset: 171/2, magnitude: 1/4
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 343/4, magnitude: 7/32
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
					% performer: Viola 02, offset: 2751/32, magnitude: 9/32
					\stopStaff
					r32
					r4
					\startStaff
				}
				{
					% performer: Viola 02, offset: 345/4, magnitude: 7/32
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
					% performer: Viola 02, offset: 2767/32, magnitude: 3/32
					\stopStaff
					r32
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1385/16, magnitude: 7/32
					{
						c'32 \glissando
						s32
						s32
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 2777/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2779/32, magnitude: 7/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
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
					% performer: Viola 02, offset: 1393/16, magnitude: 1/4
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
					% performer: Viola 02, offset: 1397/16, magnitude: 1/8
					\stopStaff
					r16
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1399/16, magnitude: 7/32
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
					% performer: Viola 02, offset: 2805/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1403/16, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Viola 02, offset: 1405/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2811/32, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
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
					% performer: Viola 02, offset: 2817/32, magnitude: 3/4
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
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 2841/32, magnitude: 3/16
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 02, offset: 2847/32, magnitude: 1/8
					\stopStaff
					r32
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2851/32, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						a32
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
					% performer: Viola 02, offset: 2859/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 715/8, magnitude: 3/16
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
					% performer: Viola 02, offset: 1433/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 717/8, magnitude: 3/16
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
					% performer: Viola 02, offset: 1437/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2877/32, magnitude: 3/16
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
					% performer: Viola 02, offset: 2883/32, magnitude: 11/32
					\stopStaff
					r32
					r8
					r8.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1447/16, magnitude: 1/8
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
					% performer: Viola 02, offset: 1449/16, magnitude: 5/16
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
					% performer: Viola 02, offset: 727/8, magnitude: 1/8
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						e'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 91, magnitude: 13/32
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
						f32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 2925/32, magnitude: 7/32
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
					% performer: Viola 02, offset: 733/8, magnitude: 7/32
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
					% performer: Viola 02, offset: 2939/32, magnitude: 3/4
					\stopStaff
					r32
					r8
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2963/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 2967/32, magnitude: 1/4
					\stopStaff
					r32
					r8..
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2975/32, magnitude: 3/16
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
					% performer: Viola 02, offset: 2981/32, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 373/4, magnitude: 5/16
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 1497/16, magnitude: 17/16
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
					% performer: Viola 02, offset: 757/8, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 3031/32, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 3035/32, magnitude: 1/16
					\stopStaff
					r32
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 3037/32, magnitude: 7/32
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
					% performer: Viola 02, offset: 761/8, magnitude: 21/32
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
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 3065/32, magnitude: 75/32
					\stopStaff
					r16.
					r8
					R2. * 2
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 785/8, magnitude: 11/16
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
						e'32 \glissando
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
					% performer: Viola 02, offset: 1581/16, magnitude: 1/4
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
						g'32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 1585/16, magnitude: 11/32
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
						f32
					}
				}
				{
					% performer: Viola 02, offset: 3181/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1591/16, magnitude: 17/32
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
					% performer: Viola 02, offset: 3199/32, magnitude: 17/32
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
						a32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 201/2, magnitude: 21/32
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
						a32
					}
				}
				{
					% performer: Viola 02, offset: 3237/32, magnitude: 17/32
					\stopStaff
					r16.
					r4..
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1627/16, magnitude: 1/4
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 1631/16, magnitude: 47/32
					{
						c'32 \glissando
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
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
					{
						e'32 \glissando
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 3309/32, magnitude: 15/32
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
					% performer: Viola 02, offset: 831/8, magnitude: 3/16
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
					% performer: Viola 02, offset: 1665/16, magnitude: 15/32
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
					% performer: Viola 02, offset: 3345/32, magnitude: 5/16
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
					% performer: Viola 02, offset: 3355/32, magnitude: 9/32
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 841/8, magnitude: 25/32
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
						\revert Glissando #'style
					}
					{
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
					}
					{
						e'32 \glissando
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 3389/32, magnitude: 27/32
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
						a32 \glissando
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
					% performer: Viola 02, offset: 427/4, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 3417/32, magnitude: 3/4
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
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 3441/32, magnitude: 21/16
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
						s32
						\revert Glissando #'style
					}
					{
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
					}
					{
						e'32 \glissando
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
						s32
						s32
					}
					{
						e'32 \glissando
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 3483/32, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 3487/32, magnitude: 7/32
					\stopStaff
					r32
					r8.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1747/16, magnitude: 39/32
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
						s32
						s32
						a32
					}
				}
				{
					% performer: Viola 02, offset: 3533/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 02, offset: 3535/32, magnitude: 37/32
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
					% performer: Viola 02, offset: 893/8, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 447/4, magnitude: 7/32
					{
						c'32 \glissando
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
					% performer: Viola 02, offset: 3583/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 897/8, magnitude: 33/32
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
						a32 \glissando
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
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						f32 \glissando \startTextSpan
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 3621/32, magnitude: 3/16
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
					% performer: Viola 02, offset: 3627/32, magnitude: 23/32
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
						s32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
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
						s32
						s32
						s32
						s32
						s32
						s32
						g'32
					}
				}
				{
					% performer: Viola 02, offset: 1825/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 457/4, magnitude: 5/8
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 02, offset: 919/8, magnitude: 3/2
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
						a32
					}
				}
				{
					% performer: Viola 02, offset: 931/8, magnitude: 7/32
					\stopStaff
					r8
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 3731/32, magnitude: 9/32
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
					% performer: Viola 02, offset: 935/8, magnitude: 7/8
					\stopStaff
					r8
					R2. * 1
					\startStaff
				}
				{
					% performer: Viola 02, offset: 471/4, magnitude: 3/16
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
					}
				}
				{
					% performer: Viola 02, offset: 1887/16, magnitude: 21/32
					\stopStaff
					r16
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 3795/32, magnitude: 1/4
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
					% performer: Viola 02, offset: 3803/32, magnitude: 11/16
					\stopStaff
					r32
					r8
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 3825/32, magnitude: 39/32
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
						s32
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
					% performer: Viola 02, offset: 483/4, magnitude: 11/32
					\stopStaff
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 3875/32, magnitude: 25/32
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
					% performer: Viola 02, offset: 975/8, magnitude: 5/32
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
					% performer: Viola 02, offset: 3905/32, magnitude: 13/32
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
						e'32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 1959/16, magnitude: 7/32
					{
						f32 \glissando
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
					% performer: Viola 02, offset: 3925/32, magnitude: 9/16
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
					% performer: Viola 02, offset: 3943/32, magnitude: 5/32
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
					% performer: Viola 02, offset: 987/8, magnitude: 17/32
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
					% performer: Viola 02, offset: 3965/32, magnitude: 7/32
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
						e'32 \glissando \startTextSpan
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
					% performer: Viola 02, offset: 993/8, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 497/4, magnitude: 3/16
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
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 02, offset: 1991/16, magnitude: 9/16
					\stopStaff
					r16
					r2
					\startStaff
				}
				{
					% performer: Viola 02, offset: 125, magnitude: 1/4
					{
						f32 \glissando
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
					% performer: Viola 02, offset: 501/4, magnitude: 3/16
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
					% performer: Viola 02, offset: 2007/16, magnitude: 15/32
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
					}
				}
				{
					% performer: Viola 02, offset: 4029/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 4033/32, magnitude: 1/4
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
					% performer: Viola 02, offset: 4041/32, magnitude: 5/32
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
					% performer: Viola 02, offset: 2023/16, magnitude: 5/16
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
					% performer: Viola 02, offset: 507/4, magnitude: 11/32
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
					% performer: Viola 02, offset: 4067/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 4071/32, magnitude: 9/16
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
						c'32
					}
				}
				{
					% performer: Viola 02, offset: 4089/32, magnitude: 7/32
					\stopStaff
					r16.
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 128, magnitude: 19/16
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
					% performer: Viola 02, offset: 2067/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 4137/32, magnitude: 35/32
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
					% performer: Viola 02, offset: 1043/8, magnitude: 1/4
					\stopStaff
					r8
					r8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 1045/8, magnitude: 5/4
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
					% performer: Viola 02, offset: 1055/8, magnitude: 17/32
					\stopStaff
					r8
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 4237/32, magnitude: 11/32
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 531/4, magnitude: 1/8
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
					% performer: Viola 02, offset: 1063/8, magnitude: 7/8
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
						s32
						f32
					}
				}
				{
					% performer: Viola 02, offset: 535/4, magnitude: 13/32
					\stopStaff
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 4293/32, magnitude: 33/32
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
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 2163/16, magnitude: 11/8
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
					% performer: Viola 02, offset: 2185/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 4373/32, magnitude: 15/16
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
					% performer: Viola 02, offset: 4403/32, magnitude: 1/4
					\stopStaff
					r32
					r8
					r16.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 4411/32, magnitude: 7/32
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
						e'32
						\breathe
					}
				}
				{
					% performer: Viola 02, offset: 2209/16, magnitude: 3/16
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
					% performer: Viola 02, offset: 553/4, magnitude: 5/32
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
					% performer: Viola 02, offset: 4429/32, magnitude: 5/32
					{
						f32 \glissando
						s32
						s32
						s32
						f32
					}
				}
				{
					% performer: Viola 02, offset: 2217/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 02, offset: 4435/32, magnitude: 1/8
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
					% performer: Viola 02, offset: 4439/32, magnitude: 23/32
					\stopStaff
					r32
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Viola 02, offset: 2231/16, magnitude: 19/32
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
						a32
					}
				}
				{
					% performer: Viola 02, offset: 4481/32, magnitude: 199/32
					\stopStaff
					r16.
					r8
					R2. * 8
					\startStaff
				}
				{
					% performer: Viola 02, offset: 585/4, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
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
						\revert Glissando #'style
					}
					{
						c'32 \glissando
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 02, offset: 293/2, magnitude: 5/4
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
				instrumentName = #"Viola 02"
				shortInstrumentName = #"Viola 02"
			} {
				\clef "alto"
				\time 3/4
				\tempo 4 = 66
				\compressFullBarRests
				\mergeDifferentlyDottedOn
				\mergeDifferentlyHeadedOn
				<<
					% performer: Viola 02, offset: 0, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs8 * 99/100 \startTrillSpan af
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							c16 * 99/100 :128 -\open \startTrillSpan gqf
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
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 3/16, magnitude: 5/16
					r16
					r4
				}
				<<
					% performer: Viola 02, offset: 1/2, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef8. * 99/100 \startTrillSpan gqs
							s8. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							f16 * 99/100 :128 \startTrillSpan c'
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							s32 \fppp \<
							s32
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
					% performer: Viola 02, offset: 3/4, magnitude: 5/8
					r4
					r4
					r8
				}
				<<
					% performer: Viola 02, offset: 11/8, magnitude: 1/8
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
								bf32 [ (
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
								bf32 \glissando
								s32
								s32
								eqs'32
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
					% performer: Viola 02, offset: 3/2, magnitude: 17/32
					r4
					r4
					r32
				}
				<<
					% performer: Viola 02, offset: 65/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bf8 * 99/100 \startTrillSpan c'
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
					% performer: Viola 02, offset: 69/32, magnitude: 13/32
					r16.
					r4
					r16
				}
				<<
					% performer: Viola 02, offset: 41/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							e8. * 99/100 \startTrillSpan af
							s8. * 1/100 \stopTrillSpan
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 11/4, magnitude: 11/16
					r4
					r4..
				}
				<<
					% performer: Viola 02, offset: 55/16, magnitude: 5/32
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
								fqs'32 [ (
								r32
								r32
								r32
								f'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fqs'32 \glissando
								s32
								s32
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 115/32, magnitude: 37/32
					r32
					r8
					R2. * 1
					r4
				}
				<<
					% performer: Viola 02, offset: 19/4, magnitude: 1/8
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
								eqs'32 [ (
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
								eqs'32 \glissando
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
					% performer: Viola 02, offset: 39/8, magnitude: 1/4
					r8
					r8
				}
				<<
					% performer: Viola 02, offset: 41/8, magnitude: 1/8
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
								fqs'32 [ (
								r32
								r32
								gqs'32 ] )
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
								fqs'32 \glissando
								s32
								s32
								gqs'32
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
					% performer: Viola 02, offset: 21/4, magnitude: 3/2
					R2. * 2
				}
				<<
					% performer: Viola 02, offset: 27/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							aqf8 -\accent [ ~ ~ \startTrillSpan bqs
							aqf32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fs16. * 99/100 :128 \startTrillSpan c'
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
					% performer: Viola 02, offset: 7, magnitude: 33/16
					r4
					r4
					R2. * 2
					r16
				}
				<<
					% performer: Viola 02, offset: 145/16, magnitude: 1/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							a'16 * 99/100 \startTrillSpan b'
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
						}
					}
				>>
				{
					% performer: Viola 02, offset: 73/8, magnitude: 5/4
					r8
					r4
					r4
					r4
					r4
					r8
				}
				<<
					% performer: Viola 02, offset: 83/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								fqs32 [
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
								fqs32 \glissando
								s32
								s32
								ef32
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
				{
					% performer: Viola 02, offset: 21/2, magnitude: 1/2
					r2
				}
				<<
					% performer: Viola 02, offset: 11, magnitude: 5/32
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
								g'32 [ (
								r32
								r32
								r32
								cqs'32 ] )
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
								g'32 \glissando
								s32
								s32
								s32
								cqs'32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 357/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 179/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							af16 [ ~ \startTrillSpan aqs
							af32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf8 * 99/100 :64 \startTrillSpan b
							s8 * 1/100 \stopTrillSpan
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 365/32, magnitude: 5/8
					r16.
					r4
					r4
					r32
				}
				<<
					% performer: Viola 02, offset: 385/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqf'16. * 99/100 \startTrillSpan cs''
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							a'16 * 99/100 :128 -\open \startTrillSpan ef''
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
					% performer: Viola 02, offset: 195/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Viola 02, offset: 393/32, magnitude: 5/32
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
								a32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								ef'32 \glissando
								s32
								a32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cqs''16 * 99/100 :128 \startTrillSpan dqf''
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
					% performer: Viola 02, offset: 199/16, magnitude: 7/16
					r16
					r4
					r8
				}
				<<
					% performer: Viola 02, offset: 103/8, magnitude: 1/8
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
								af''32 ] )
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
								af''32
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
					% performer: Viola 02, offset: 13, magnitude: 17/32
					r4
					r4
					r32
				}
				<<
					% performer: Viola 02, offset: 433/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bf'8 * 99/100 \startTrillSpan dqf''
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
					% performer: Viola 02, offset: 437/32, magnitude: 23/16
					r16.
					r4
					r4
					R2. * 1
					r16.
				}
				<<
					% performer: Viola 02, offset: 483/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								g32 [
								r32
								r32
								cqs32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								g32 \glissando
								s32
								s32
								cqs32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								a32 -\snappizzicato ^ \markup { \italic Pizz. } [
								r32
								r32
								ef32 ]
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
								a32 \glissando
								s32
								s32
								ef32
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
						{
							s32
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Viola 02, offset: 491/32, magnitude: 109/32
					r32
					r8
					r4
					R2. * 4
				}
				<<
					% performer: Viola 02, offset: 75/4, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								e32 -\accent [
								r32
								r32
								r32
								r32
								dqf32 ]
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
								e32 \glissando
								s32
								s32
								s32
								s32
								dqf32
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
					% performer: Viola 02, offset: 303/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 02, offset: 19, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cqs32 -\accent [
								r32
								r32
								af32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cqs32 \glissando
								s32
								s32
								af32
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
					% performer: Viola 02, offset: 153/8, magnitude: 1/4
					r8
					r8
				}
				<<
					% performer: Viola 02, offset: 155/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 -\accent [
								r32
								r32
								dqs'32 ]
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
								aqf32 \glissando
								s32
								s32
								dqs'32
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
					% performer: Viola 02, offset: 39/2, magnitude: 9/8
					R2. * 1
					r4.
				}
				<<
					% performer: Viola 02, offset: 165/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							c32 -\accent -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato ] )
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
					% performer: Viola 02, offset: 665/32, magnitude: 25/32
					r16.
					r8
					r4
					r4
					r16
				}
				<<
					% performer: Viola 02, offset: 345/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							a'32 -\accent -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32
							d'32
							c32 -\open ] )
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
					% performer: Viola 02, offset: 347/16, magnitude: 37/16
					r16
					R2. * 3
				}
				<<
					% performer: Viola 02, offset: 24, magnitude: 1/4
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
								fs32 -\accent [ (
								r32
								r32
								eqs32 ] )
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
								fs32 \glissando
								s32
								s32
								eqs32
							}
						>>
						{
							\pitchedTrill
							eqf8 * 99/100 :64 \startTrillSpan aqs
							s8 * 1/100 \stopTrillSpan
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
					% performer: Viola 02, offset: 97/4, magnitude: 89/16
					r4
					r4
					R2. * 6
					r4
					r4
					r16
				}
				<<
					% performer: Viola 02, offset: 477/16, magnitude: 1/4
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
								aqf32 [ (
								r32
								r32
								b32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 \glissando
								s32
								s32
								b32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								f'32 ^ \markup { \italic Pizz. } [
								r32
								r32
								eqs'32 ]
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
								eqs'32
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
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 481/16, magnitude: 13/32
					r16
					r8
					r8..
				}
				<<
					% performer: Viola 02, offset: 975/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							af32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							ef'32
							d'32 -\open
							g''32 ] )
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
					% performer: Viola 02, offset: 979/32, magnitude: 13/32
					r32
					r8
					r4
				}
				<<
					% performer: Viola 02, offset: 31, magnitude: 3/16
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
								gqs''32 ]
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
								fs''32 \glissando
								s32
								s32
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
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 499/16, magnitude: 21/32
					r16
					r4
					r4
					r16.
				}
				<<
					% performer: Viola 02, offset: 1019/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							c''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							e'32 -\staccato
							af32 -\staccato
							cs32 -\staccato ] )
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
				{
					% performer: Viola 02, offset: 1023/32, magnitude: 11/32
					r32
					r4
					r16
				}
				<<
					% performer: Viola 02, offset: 517/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							af32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							af''32 ] )
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
				{
					% performer: Viola 02, offset: 519/16, magnitude: 21/16
					r16
					r4
					r4
					R2. * 1
				}
				<<
					% performer: Viola 02, offset: 135/4, magnitude: 3/16
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
								b'32 -\accent [ (
								r32
								r32
								r32
								r32
								fqs'32 ] )
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
								b'32 \glissando
								s32
								s32
								s32
								s32
								fqs'32
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
					% performer: Viola 02, offset: 543/16, magnitude: 53/16
					r16
					r4
					r4
					R2. * 3
					r2
				}
				<<
					% performer: Viola 02, offset: 149/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							f''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs32 -\staccato ] )
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
					% performer: Viola 02, offset: 1199/32, magnitude: 5/32
					r32
					r8
				}
				<<
					% performer: Viola 02, offset: 301/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							a32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							a'32 -\open ] )
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
					% performer: Viola 02, offset: 151/4, magnitude: 1/4
					r4
				}
				<<
					% performer: Viola 02, offset: 38, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							ef''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							af'32
							c'32
							e32 ] )
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
					% performer: Viola 02, offset: 1221/32, magnitude: 33/32
					r16.
					R2. * 1
					r8.
				}
				<<
					% performer: Viola 02, offset: 627/16, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato
							a'32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							a'8 -\open [ ~ ~ \startTrillSpan cs''
							a'32 * 99/100 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 1263/32, magnitude: 67/32
					r32
					r4
					R2. * 2
					r4
					r16
				}
				<<
					% performer: Viola 02, offset: 665/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a'32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							c16 -\open [ ~ \startTrillSpan eqs
							c16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 669/16, magnitude: 17/16
					r16
					r8
					R2. * 1
					r8
				}
				<<
					% performer: Viola 02, offset: 343/8, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							fs''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open
							cs'32
							fs32 ] )
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
					% performer: Viola 02, offset: 345/8, magnitude: 23/16
					r8
					r4
					R2. * 1
					r4
					r16
				}
				<<
					% performer: Viola 02, offset: 713/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							af''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							cqs''16 [ ~ \startTrillSpan fqs''
							cqs''16 * 99/100 ]
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
					% performer: Viola 02, offset: 717/16, magnitude: 3/2
					r16
					r8
					R2. * 1
					r4
					r4
					r16
				}
				<<
					% performer: Viola 02, offset: 741/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							f''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\staccato
							d'32 -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							ef16 [ ~ \startTrillSpan eqs
							ef16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 745/16, magnitude: 47/32
					r16
					r8
					r4
					r4
					R2. * 1
					r32
				}
				<<
					% performer: Viola 02, offset: 1537/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							ef32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							b32 -\staccato
							af'32 -\staccato
							ef''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							a'32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							fs'32
							bf32
							ef32 ] )
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
					% performer: Viola 02, offset: 1545/32, magnitude: 23/16
					r16.
					r8
					r4
					R2. * 1
					r8..
				}
				<<
					% performer: Viola 02, offset: 1591/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							af32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							ef'32 -\staccato
							b'32 -\staccato
							fs''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							c''8 * 99/100 \startTrillSpan eqs''
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
					% performer: Viola 02, offset: 1599/32, magnitude: 71/16
					r32
					r4
					R2. * 5
					r4
					r8
					r32
				}
				<<
					% performer: Viola 02, offset: 1741/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'16. -\accent [ ~ \startTrillSpan fs'
							ef'32 * 99/100 ]
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
							c''16 * 99/100 :128 \startTrillSpan cs''
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
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 1747/32, magnitude: 1/2
					r32
					r8
					r4
					r16.
				}
				<<
					% performer: Viola 02, offset: 1763/32, magnitude: 5/32
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
								bf'32 -\accent [ (
								r32
								r32
								r32
								b'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf'32 \glissando
								s32
								s32
								s32
								b'32
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
					% performer: Viola 02, offset: 221/4, magnitude: 13/4
					r4
					R2. * 4
				}
				<<
					% performer: Viola 02, offset: 117/2, magnitude: 1/4
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
								a''32 -\accent [ (
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
								a''32 \glissando
								s32
								s32
								dqs''32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqs'8 * 99/100 :64 \startTrillSpan bf'
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
					% performer: Viola 02, offset: 235/4, magnitude: 75/32
					r4
					r4
					R2. * 2
					r4
					r16.
				}
				<<
					% performer: Viola 02, offset: 1955/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							e''32 -\staccato ] )
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
					% performer: Viola 02, offset: 981/16, magnitude: 7/32
					r16
					r8
					r32
				}
				<<
					% performer: Viola 02, offset: 1969/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs'8.. [ ~
							aqs'32 ]
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 1977/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							a'32 -\accent -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							e'32 -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
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
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 62, magnitude: 9/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cs''4 ~
							cs''32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqf'32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							aqf32
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							gqs32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							af8.. [ ~
							af8 ]
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 505/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							g'32 -\staccato
							ef''32 -\staccato ] )
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
					% performer: Viola 02, offset: 253/4, magnitude: 9/32
					r4
					r32
				}
				<<
					% performer: Viola 02, offset: 2033/32, magnitude: 1/8
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
								bqf32 [ (
								r32
								r32
								g'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqf32 \glissando
								s32
								s32
								g'32
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
					% performer: Viola 02, offset: 2037/32, magnitude: 5/32
					r16.
					r16
				}
				<<
					% performer: Viola 02, offset: 1021/16, magnitude: 1/8
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
								gqs''32 -\accent [ (
								r32
								r32
								cs''32 ] )
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
								gqs''32 \glissando
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 1023/16, magnitude: 1/4
					r16
					r8.
				}
				<<
					% performer: Viola 02, offset: 1027/16, magnitude: 1/4
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
								af'32 [ (
								r32
								r32
								r32
								r32
								cqs''32 ] )
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
								af'32 \glissando
								s32
								s32
								s32
								s32
								cqs''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqs'32 :256 [
								fs'32 :256 ]
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
								eqs'32 \glissando
								fs'32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fppp \<
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 1031/16, magnitude: 11/16
					r16
					r4
					r4
					r8
				}
				<<
					% performer: Viola 02, offset: 521/8, magnitude: 1/8
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
								fqs'32 [ (
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
								fqs'32 \glissando
								s32
								s32
								fs'32
							}
						>>
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
					% performer: Viola 02, offset: 261/4, magnitude: 29/32
					R2. * 1
					r8
					r32
				}
				<<
					% performer: Viola 02, offset: 2117/32, magnitude: 7/32
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
								fs'32 -\accent [ (
								r32
								r32
								r32
								af32 ] )
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
								af32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf32 :256 [
								aqs32 :256 ]
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
								bf32 \glissando
								aqs32
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
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 531/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							eqf'32 -\accent -\staccato [ (
							dqs'32 -\staccato
							eqf'32 -\staccato
							eqs'32 -\staccato ] )
							\slurSolid
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fp \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 133/2, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Viola 02, offset: 2133/32, magnitude: 19/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf'16. [ ~
							dqf'8 ~ ~
							dqf'32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							b16. :128 ] ~
							b4 :32
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
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 269/4, magnitude: 5/32
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
								d''32 -\accent [ (
								r32
								r32
								r32
								cqs''32 ] )
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
								d''32 \glissando
								s32
								s32
								s32
								cqs''32
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
					% performer: Viola 02, offset: 2157/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 1079/16, magnitude: 5/32
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
								af32 [ (
								r32
								bqf32 ] )
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
								af32 \glissando
								s32
								bqf32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf'32 :256 [
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
								bf'32 \glissando
								af'32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fppp \>
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
					% performer: Viola 02, offset: 2163/32, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs'8 [ ~ ~
							fs'32 ~
							fs'8. ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 1087/16, magnitude: 37/32
					r16
					r4
					R2. * 1
					r16.
				}
				<<
					% performer: Viola 02, offset: 2211/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs'8 [ ~ ~
							eqs'32 ~
							eqs'16 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							s32 \mf \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 1109/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							g32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							gqs32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								c'32 :256 [
								r32
								g32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c'32 \glissando
								s32
								g32
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
							s32 \mf \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 2225/32, magnitude: 23/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf''8.. [ ~
							eqf''32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							c''8.. ] ~
							c''4
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
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Viola 02, offset: 281/4, magnitude: 17/32
					r4
					r4
					r32
				}
				<<
					% performer: Viola 02, offset: 2265/32, magnitude: 1/8
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
								e'32 -\accent [ (
								r32
								r32
								bqs32 ] )
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
								e'32 \glissando
								s32
								s32
								bqs32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2269/32, magnitude: 63/32
					r16.
					r4
					R2. * 2
					r8
				}
				<<
					% performer: Viola 02, offset: 583/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							dqs'32 -\accent -\staccato [ (
							e'32 -\staccato
							dqs'32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqf''32 :256 [
								r32
								bqf'32 :256 ]
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
								eqf''32 \glissando
								s32
								bqf'32
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
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 1169/16, magnitude: 9/8
					r16
					r8
					r4
					r4
					r4
					r8.
				}
				<<
					% performer: Viola 02, offset: 1187/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							eqs''32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							fs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fqs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fqs''32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqs''32 :256 [
								bf'32 :256 ]
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
								eqs''32 \glissando
								bf'32
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
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2381/32, magnitude: 27/32
					r16.
					r4
					r4
					r4
				}
				<<
					% performer: Viola 02, offset: 301/4, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							a'4 -\open
						}
						{
							\override NoteHead #'style = #'harmonic
							ef'4 ~
							ef'8 [ ~ ~
							ef'32 ]
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
					}
				>>
				<<
					% performer: Viola 02, offset: 2429/32, magnitude: 5/32
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
								aqs'32 [ (
								r32
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
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqs'32 \glissando
								s32
								s32
								s32
								af'32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fppp \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 1217/16, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e'8. [ ~
							e'8 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							cs'8 [ ~
							cs'8 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 613/8, magnitude: 7/16
					r8
					r4
					r16
				}
				<<
					% performer: Viola 02, offset: 1233/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs8.
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 309/4, magnitude: 5/32
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
								gqs32 -\accent [ (
								r32
								r32
								r32
								g32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs32 \glissando
								s32
								s32
								s32
								g32
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 2477/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cqs''32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							d''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cqs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b'32 -\staccato ] )
							\slurSolid
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \<
							s32
							s32
							s32 \mf
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 2481/32, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cs'8.. [ ~
							cs'8 ~ ~
							cs'32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							g'16. :128 [ ~
							g'8 :64 ~ ~
							g'32 :256 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2501/32, magnitude: 5/32
					r16.
					r16
				}
				<<
					% performer: Viola 02, offset: 1253/16, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							g8. -\open [ ~
							g16 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							bqf8. [ ~
							bqf8 ]
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
					}
				>>
				{
					% performer: Viola 02, offset: 631/8, magnitude: 3/16
					r8
					r16
				}
				<<
					% performer: Viola 02, offset: 1265/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								c''32 [
								r32
								r32
								af'32 ]
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
								s32
								af'32
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
							s32 \mf
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 1267/16, magnitude: 1/8
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
								fs''32 [ (
								r32
								r32
								fqs''32 ] )
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
								fs''32 \glissando
								s32
								s32
								fqs''32
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
					% performer: Viola 02, offset: 1269/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 2539/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							d'32 -\accent -\open -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							dqs'32 -\staccato
							d'32 -\open -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cqs''32 :256 [
								r32
								fqs''32 :256 ]
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
								fqs''32
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
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2545/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Viola 02, offset: 2549/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							a'32 -\accent -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
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
					% performer: Viola 02, offset: 1277/16, magnitude: 1/4
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
								cs32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf32 \glissando
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
								b32 ^ \markup { \italic Pizz. } [
								r32
								r32
								ef'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b32 \glissando
								s32
								s32
								ef'32
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
						{
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 1281/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs8. [ ~
							fs16 ]
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
							s32 \p \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 1285/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqf'32 [
								r32
								r32
								r32
								dqs'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqf'32 \glissando
								s32
								s32
								s32
								dqs'32
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
							s32 \mf
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2575/32, magnitude: 1/16
					r32
					r32
				}
				<<
					% performer: Viola 02, offset: 2577/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							af''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							b'32 -\staccato
							e'32 -\staccato
							c32 -\open -\staccato ] )
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
					% performer: Viola 02, offset: 323/4, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 02, offset: 1293/16, magnitude: 7/32
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
								g'32 -\accent [ (
								r32
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
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								g'32 \glissando
								s32
								s32
								s32
								eqs'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqs'32 :256 [
								e'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqs'32 \glissando
								e'32
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
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 2593/32, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c'8.. [ ~
							c'8.. ]
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
							s32 \mp \>
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
					% performer: Viola 02, offset: 2607/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf32 [
								r32
								r32
								r32
								r32
								r32
								c'32 ]
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
								s32
								s32
								s32
								c'32
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
					% performer: Viola 02, offset: 1307/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Viola 02, offset: 2617/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							b'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g''32 -\staccato ] )
							\slurSolid
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
				<<
					% performer: Viola 02, offset: 1311/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bf'32 -\accent -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							bqs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bqf'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g'32 -\staccato ] )
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
								cs''32 :256 ]
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
								cs''32
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
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2629/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 02, offset: 2631/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs32 -\staccato ] )
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
							s32 \f \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2637/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 1319/16, magnitude: 1/8
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
								c'32 [ (
								r32
								r32
								gqf32 ] )
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
								c'32 \glissando
								s32
								s32
								gqf32
							}
						>>
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
					% performer: Viola 02, offset: 1321/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Viola 02, offset: 2645/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							d''32 -\accent -\staccato [ (
							c''32 -\staccato
							bqs'32 -\staccato
							aqs'32 -\staccato ] )
							\slurSolid
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
					% performer: Viola 02, offset: 2649/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 02, offset: 2651/32, magnitude: 1/8
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
								e'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqf'32 \glissando
								s32
								s32
								e'32
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
					% performer: Viola 02, offset: 2655/32, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a'32 ] ~
							a'4 ~
							a'8
							\revert NoteHead #'style
						}
						{
							g8 -\open [ ~
							g8 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 669/8, magnitude: 1/4
					r8
					r8
				}
				<<
					% performer: Viola 02, offset: 671/8, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef'8 [ ~
							ef'8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							e16 :128 ] ~
							e4 :32
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 169/2, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								d'32 [
								r32
								r32
								gqf'32 ]
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
								d'32 \glissando
								s32
								s32
								gqf'32
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
					% performer: Viola 02, offset: 677/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 2709/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqs'32 -\accent [
								r32
								r32
								r32
								ef'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs'32 \glissando
								s32
								s32
								s32
								ef'32
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
					% performer: Viola 02, offset: 1357/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Viola 02, offset: 2717/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							g''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							c''32 -\staccato
							d'32 -\staccato
							g32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
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
					% performer: Viola 02, offset: 681/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f8
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
					% performer: Viola 02, offset: 341/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs4
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
							s32 \mp \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 171/2, magnitude: 1/4
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
								c32 -\accent [ (
								r32
								r32
								bf32 ] )
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
								c32 \glissando
								s32
								s32
								bf32
							}
						>>
						{
							\pitchedTrill
							cqs8 * 99/100 :64 \startTrillSpan gqf
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
						{
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 343/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b8..
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2751/32, magnitude: 9/32
					r32
					r4
				}
				<<
					% performer: Viola 02, offset: 345/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							g32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							g''32 -\staccato ] )
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
					% performer: Viola 02, offset: 2767/32, magnitude: 3/32
					r32
					r16
				}
				<<
					% performer: Viola 02, offset: 1385/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqf''32 [
								r32
								r32
								r32
								r32
								r32
								bqs'32 ]
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
								gqf''32 \glissando
								s32
								s32
								s32
								s32
								s32
								bqs'32
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
					% performer: Viola 02, offset: 2777/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 02, offset: 2779/32, magnitude: 7/32
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
								b'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								ef''32 \glissando
								s32
								s32
								s32
								s32
								s32
								b'32
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
				<<
					% performer: Viola 02, offset: 1393/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							g''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							c''32
							e'32
							a32 ] )
						}
						\revert TextScript #'staff-padding
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 ^ \markup { \italic Pizz. } [
								r32
								r32
								a32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 \glissando
								s32
								s32
								a32
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
					% performer: Viola 02, offset: 1397/16, magnitude: 1/8
					r16
					r16
				}
				<<
					% performer: Viola 02, offset: 1399/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							c32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							a'32 -\open ] )
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
					% performer: Viola 02, offset: 2805/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 1403/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								a'32 -\accent [
								r32
								r32
								aqs'32 ]
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
								a'32 \glissando
								s32
								s32
								aqs'32
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
					% performer: Viola 02, offset: 1405/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 2811/32, magnitude: 3/16
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
								aqs'32 [ (
								r32
								r32
								r32
								r32
								aqf'32 ] )
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
								aqs'32 \glissando
								s32
								s32
								s32
								s32
								aqf'32
							}
						>>
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
					% performer: Viola 02, offset: 2817/32, magnitude: 3/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf8.. [ ~
							aqf8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							d32 ] ~
							d4 ~
							d32
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
					}
				>>
				<<
					% performer: Viola 02, offset: 2841/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							a'32 -\accent -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e'32
							g32 -\open
							c32 -\open ] )
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
					% performer: Viola 02, offset: 2847/32, magnitude: 1/8
					r32
					r16.
				}
				<<
					% performer: Viola 02, offset: 2851/32, magnitude: 1/4
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
								eqf32 [ (
								r32
								r32
								bqs32 ] )
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
								eqf32 \glissando
								s32
								s32
								bqs32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqf32 ^ \markup { \italic Pizz. } [
								r32
								r32
								cs32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqf32 \glissando
								s32
								s32
								cs32
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
					% performer: Viola 02, offset: 2859/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 715/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\once \override NoteHead #'style = #'harmonic
							a32 -\accent ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							af''32 ] )
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
					% performer: Viola 02, offset: 1433/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 02, offset: 717/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								e''32 [
								r32
								r32
								r32
								r32
								g''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								e''32 \glissando
								s32
								s32
								s32
								s32
								g''32
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
					% performer: Viola 02, offset: 1437/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Viola 02, offset: 2877/32, magnitude: 3/16
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
								d''32 [ (
								r32
								r32
								r32
								r32
								fs''32 ] )
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
								d''32 \glissando
								s32
								s32
								s32
								s32
								fs''32
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
							s32 \mf
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2883/32, magnitude: 11/32
					r32
					r8
					r8.
				}
				<<
					% performer: Viola 02, offset: 1447/16, magnitude: 1/8
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
								aqf''32 -\accent [ (
								r32
								r32
								b'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf''32 \glissando
								s32
								s32
								b'32
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
					% performer: Viola 02, offset: 1449/16, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e'8. [ ~
							e'8 ]
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
					% performer: Viola 02, offset: 727/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							g''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
					}
					\context Voice = "span" {
						{
							s32 \fp \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 91, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf4 ~
							aqf8 [ ~ ~
							aqf32 ]
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
							s32 \mp \>
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
					% performer: Viola 02, offset: 2925/32, magnitude: 7/32
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
								r32
								r32
								r32
								bqs32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf32 \glissando
								s32
								s32
								s32
								s32
								s32
								bqs32
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
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 733/8, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs'8 [ ~
							dqs'16. ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2939/32, magnitude: 3/4
					r32
					r8
					r4
					r4
					r16.
				}
				<<
					% performer: Viola 02, offset: 2963/32, magnitude: 1/8
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
								g'32 [ (
								r32
								r32
								af32 ] )
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
								g'32 \glissando
								s32
								s32
								af32
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
							s32 \mf
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2967/32, magnitude: 1/4
					r32
					r8..
				}
				<<
					% performer: Viola 02, offset: 2975/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqf32 [
								r32
								r32
								r32
								r32
								f32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqf32 \glissando
								s32
								s32
								s32
								s32
								f32
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
					% performer: Viola 02, offset: 2981/32, magnitude: 3/32
					r16.
				}
				<<
					% performer: Viola 02, offset: 373/4, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							cqs''16.
							\revert NoteHead #'style
						}
						\override TextScript #'staff-padding = #6
						\fraction \times 3/4 {
							a'32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							c''32
							ef'32
							g32 ] )
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
					% performer: Viola 02, offset: 1497/16, magnitude: 17/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqs8. :64 [ ~ \startTrillSpan cs'
							bqs16. * 99/100 :128 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							gqs8 [ ~ ~ \startTrillSpan a
							gqs32 ~
							gqs8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							eqs8 :64 [ ~ \startTrillSpan g
							eqs16. * 99/100 :128 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs8 [ ~ ~ \startTrillSpan bf
							gqs32 * 99/100 ]
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
							cqs'8 * 99/100 \startTrillSpan ef'
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
							s32
							s32
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
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
					% performer: Viola 02, offset: 757/8, magnitude: 3/32
					r16.
				}
				<<
					% performer: Viola 02, offset: 3031/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf32 [
								r32
								r32
								a32 ]
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
								a32
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
					% performer: Viola 02, offset: 3035/32, magnitude: 1/16
					r32
					r32
				}
				<<
					% performer: Viola 02, offset: 3037/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqf'32 -\accent [
								r32
								r32
								r32
								r32
								r32
								e'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqf'32 \glissando
								s32
								s32
								s32
								s32
								s32
								e'32
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
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 761/8, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs'8 [ ~
							gqs'8 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqf''8 :64 ] ~
							aqf''4 :32 ~
							aqf''32 :256
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 3065/32, magnitude: 75/32
					r16.
					r8
					R2. * 2
					r4
					r4
					r8
				}
				<<
					% performer: Viola 02, offset: 785/8, magnitude: 11/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs8 :64 [ ~ \startTrillSpan g
							fs8 * 99/100 :64 ]
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
							d'8 [ ~ \startTrillSpan ef'
							d'8. * 99/100 ]
							s8. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							c'16 [ ~ \startTrillSpan dqs'
							c'16 * 99/100 ]
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
					% performer: Viola 02, offset: 1581/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs'32 -\staccato
							d'32 -\open -\staccato
							a'32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							g''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open
							ef'32
							af32 ] )
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
					% performer: Viola 02, offset: 1585/16, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							f'8. [ ~ \startTrillSpan fs'
							f'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							fs''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							bf'32
							d'32
							fs32 ] )
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
					}
				>>
				{
					% performer: Viola 02, offset: 3181/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 1591/16, magnitude: 17/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqf16 [ ~ \startTrillSpan c'
							bqf8 ~ ~
							bqf32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							aqs16. [ ~ \startTrillSpan c'
							aqs16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'8 * 99/100 \startTrillSpan eqf'
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
						}
						{
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
					}
				>>
				<<
					% performer: Viola 02, offset: 3199/32, magnitude: 17/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							a'32 -\open ] ~
							a'4
						}
						{
							\override NoteHead #'style = #'harmonic
							eqs''4 :32
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 201/2, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs4.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqs8 [ ~ \startTrillSpan gqs
							dqs32 * 99/100 ]
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
							bqf8 * 99/100 \startTrillSpan c'
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
					% performer: Viola 02, offset: 3237/32, magnitude: 17/32
					r16.
					r4..
				}
				<<
					% performer: Viola 02, offset: 1627/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							e''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							bqf'8 * 99/100 \startTrillSpan c''
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
					% performer: Viola 02, offset: 1631/16, magnitude: 47/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf'16 :128 [ ~
							aqf'8 :64 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							b8 [ ~ \startTrillSpan f'
							b8.. * 99/100 ]
							s8.. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							cs'32 :256 [ ~ \startTrillSpan e'
							cs'8.. * 99/100 :64 ]
							s8.. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e32 [ ~ \startTrillSpan fqs
							e16. * 99/100 ]
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
							cs'8 :64 [ ~ ~ \startTrillSpan dqs'
							cs'32 :256 ~
							cs'16. * 99/100 :128 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							a'8 :64 [ ~ ~ \startTrillSpan bqs'
							a'32 :256 ~
							a'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							ef''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open
							g32 -\open
							\once \override NoteHead #'style = #'harmonic
							f32 ] )
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
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 3309/32, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs'16. ] ~
							dqs'4.
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
							s32 \p \>
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
					% performer: Viola 02, offset: 831/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f''8 [ ~
							f''16 ]
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
					% performer: Viola 02, offset: 1665/16, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf'8. ] ~
							eqf'4 ~
							eqf'32
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
					% performer: Viola 02, offset: 3345/32, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							e8. * 99/100 \startTrillSpan f
							s8. * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							cs32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							bf32
							f'32
							cs''32 ] )
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
							s32 \mf \>
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
					% performer: Viola 02, offset: 3355/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\staccato
							cs'32 -\staccato
							e32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g32 [ ~ \startTrillSpan aqf
							g8 * 99/100 ]
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
						}
						{
							s32 \p \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 841/8, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							fqs''8 [ ~
							fqs''16 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs'8 :64 [ ~ ~ \startTrillSpan fqs'
							eqs'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							cs'32 [ ~ \startTrillSpan e'
							cs'8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf8 [ ~ \startTrillSpan d
							dqf32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							cqs'8 * 99/100 \startTrillSpan fs'
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
						}
						{
							s32
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
					% performer: Viola 02, offset: 3389/32, magnitude: 27/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c''16. [ ~
							c''8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqf''32 [ (
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							af''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							cqs''32 :256 ] ~
							cqs''4 :32
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
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 427/4, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 3417/32, magnitude: 3/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf'8.. [ ~
							gqf'32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bf'8.. :64 ] ~
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
						}
						{
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
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 3441/32, magnitude: 21/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g8.. [ ~
							g8 ]
							\revert NoteHead #'style
						}
						{
							\pitchedTrill
							cqs8 [ ~ \startTrillSpan gqs
							cqs32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							c'8.. * 99/100 \startTrillSpan d'
							s8.. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							gqs'4 ~ \startTrillSpan c''
							gqs'16 * 99/100
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							eqf''8 [ ~ ~ \startTrillSpan e''
							eqf''32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							a'32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							fs32 ] )
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
					% performer: Viola 02, offset: 3483/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf'8
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
					% performer: Viola 02, offset: 3487/32, magnitude: 7/32
					r32
					r8.
				}
				<<
					% performer: Viola 02, offset: 1747/16, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf'16 [ ~
							bf'8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							b'32 [ (
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							g'32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							e''4 :32 ~
							e''8 :64 [ ~ ~
							e''32 :256 ]
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
					% performer: Viola 02, offset: 3533/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 02, offset: 3535/32, magnitude: 37/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							af32 [ ~
							af8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'32 :256 ] ~ \startTrillSpan e'
							ef'4 * 99/100 :32
							s4 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							ef4 * 99/100 :32 \startTrillSpan f
							s4 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							af4 * 99/100 \startTrillSpan c'
							s4 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqf'8 * 99/100 \startTrillSpan f'
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
					% performer: Viola 02, offset: 893/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''8
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
				<<
					% performer: Viola 02, offset: 447/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							eqs'8.. * 99/100 :64 \startTrillSpan fqs'
							s8.. * 1/100 \stopTrillSpan
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
					% performer: Viola 02, offset: 3583/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf'32 [ ~
							eqf'8 ]
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
					% performer: Viola 02, offset: 897/8, magnitude: 33/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqf8 * 99/100 :64 \startTrillSpan b
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
							bqf8 [ ~ ~ \startTrillSpan fqs'
							bqf32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							gqf16. [ ~ \startTrillSpan a
							gqf8 ~ ~
							gqf32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							d'16. :128 [ ~ \startTrillSpan e'
							d'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqs8.. :64 [ ~ \startTrillSpan bqf
							aqs32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							f32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							cs'32
							a'32
							f''32 ] )
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
					}
				>>
				<<
					% performer: Viola 02, offset: 3621/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs'16. [ ~
							aqs'16. ]
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 3627/32, magnitude: 23/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf8 [ ~ ~
							bf32 ~
							bf16. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bqf'8 :64 [ ~ ~
							bqf'32 :256 ] ~
							bqf'4 :32 ~
							bqf'16 :128
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
					% performer: Viola 02, offset: 1825/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Viola 02, offset: 457/4, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf'4 ~
							bqf'16.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							gqs'8 [ ~ ~
							gqs'32 ~
							gqs'8 ]
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
					% performer: Viola 02, offset: 919/8, magnitude: 3/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							b'8 ] ~
							b'4 ~
							b'32
						}
						{
							b'32 [ (
							aqs'32
							bqf'32
							a'32 -\open
							bqf'32
							bqs'32
							bqf'32
							bqs'32
							c''32
							bqs'32
							dqf''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							c''32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							af'32 ] )
						}
						{
							a''32 :256 ] ~
							a''4 :32 ~
							a''8 :64
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
					% performer: Viola 02, offset: 931/8, magnitude: 7/32
					r8
					r16.
				}
				<<
					% performer: Viola 02, offset: 3731/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs'8 [ ~ ~
							eqs'32 ~
							eqs'8 ]
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
					% performer: Viola 02, offset: 935/8, magnitude: 7/8
					r8
					R2. * 1
				}
				<<
					% performer: Viola 02, offset: 471/4, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							c8 * 99/100 -\accent -\open \startTrillSpan gqf
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fqs'16 * 99/100 :128 \startTrillSpan fs'
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
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 1887/16, magnitude: 21/32
					r16
					r4
					r4
					r16.
				}
				<<
					% performer: Viola 02, offset: 3795/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs8 [ ~ ~
							bqs32 ~
							bqs16. ]
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
					}
				>>
				{
					% performer: Viola 02, offset: 3803/32, magnitude: 11/16
					r32
					r8
					r4
					r4
					r32
				}
				<<
					% performer: Viola 02, offset: 3825/32, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							gqs''8.. [ ~
							gqs''8 ~ ~
							gqs''32 ]
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							a'32 ] )
						}
						{
							eqf''8 ] ~
							eqf''4
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
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 483/4, magnitude: 11/32
					r4
					r16.
				}
				<<
					% performer: Viola 02, offset: 3875/32, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							af'8 [ ~ ~
							af'32 ] ~
							af'4 ~
							af'16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							c''8. :64 [ ~
							c''8 :64 ]
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
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 975/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs'8 [ ~
							cqs'32 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32 \mf \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 3905/32, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bf8.. [ ~
							bf8. ]
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
							s32 \mp \>
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
					% performer: Viola 02, offset: 1959/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs16 [ ~
							aqs8 ~ ~
							aqs32 ]
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
					% performer: Viola 02, offset: 3925/32, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs'16. [ ~
							bqs'8.. ]
							\revert NoteHead #'style
						}
						{
							bf32 [ ~
							bf8.. ]
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 3943/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs32 [ ~
							dqs8 ]
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
					% performer: Viola 02, offset: 987/8, magnitude: 17/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf8 [ ~
							bf8 ]
							\revert NoteHead #'style
						}
						{
							dqs8 :64 [ ~
							dqs8 :64 ~ ~
							dqs32 :256 ]
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
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 3965/32, magnitude: 7/32
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
								dqs32 [ (
								r32
								r32
								r32
								bf32 ] )
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
								dqs32 \glissando
								s32
								s32
								s32
								bf32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								c'32 :256 [
								a32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c'32 \glissando
								a32
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
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 993/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf8
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
				<<
					% performer: Viola 02, offset: 497/4, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							bqs32 -\staccato [ (
							bf32 -\staccato
							a32 -\staccato
							aqs32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bf32 :256 [
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
								bf32 \glissando
								d32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 1991/16, magnitude: 9/16
					r16
					r2
				}
				<<
					% performer: Viola 02, offset: 125, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf4
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
							s32 \mp \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 501/4, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bqs32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							aqs32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqs32 :256 [
								aqf32 :256 ]
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
								gqs32 \glissando
								aqf32
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
					% performer: Viola 02, offset: 2007/16, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d16 ] ~
							d4 ~
							d8 [ ~ ~
							d32 ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 4029/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Viola 02, offset: 4033/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g8.. [ ~
							g32 ]
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
							s32 \mp \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 4041/32, magnitude: 5/32
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
								d'32 [ (
								r32
								r32
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
								d'32 \glissando
								s32
								s32
								s32
								fqs'32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fppp \>
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 2023/16, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs16 ] ~
							gqs4
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
					% performer: Viola 02, offset: 507/4, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf4 ~
							aqf16.
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
					}
				>>
				<<
					% performer: Viola 02, offset: 4067/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fqs'32 -\staccato ] )
							\slurSolid
						}
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
					% performer: Viola 02, offset: 4071/32, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs'32 [ ~
							fs'8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							dqf'32 :256 ] ~
							dqf'4 :32 ~
							dqf'32 :256
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
					% performer: Viola 02, offset: 4089/32, magnitude: 7/32
					r16.
					r8
				}
				<<
					% performer: Viola 02, offset: 128, magnitude: 19/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs4 ~
							gqs8
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							e'32 [ (
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							a'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqf''8 [ ~
							dqf''8. ]
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
					% performer: Viola 02, offset: 2067/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Viola 02, offset: 4137/32, magnitude: 35/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a'8.. [ ~
							a'16. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							f''32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							dqs''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							ef''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bqs'16. ] ~
							bqs'4 ~
							bqs'8
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
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
					% performer: Viola 02, offset: 1043/8, magnitude: 1/4
					r8
					r8
				}
				<<
					% performer: Viola 02, offset: 1045/8, magnitude: 5/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf'8 [ ~
							bqf'8 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqf''32 [ (
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							dqs''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							af'32 [ (
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							cs''8. [ ~
							cs''8 ]
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
						}
						{
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
					% performer: Viola 02, offset: 1055/8, magnitude: 17/32
					r8
					r4
					r8
					r32
				}
				<<
					% performer: Viola 02, offset: 4237/32, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d''16. ] ~
							d''4
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
					}
				>>
				<<
					% performer: Viola 02, offset: 531/4, magnitude: 1/8
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
								aqf32 -\accent [ (
								r32
								r32
								c'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 \glissando
								s32
								s32
								c'32
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
					% performer: Viola 02, offset: 1063/8, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs'8 ] ~
							fqs'4 ~
							fqs'32
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqf'8.. :64 ] ~
							aqf'4 :32
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 535/4, magnitude: 13/32
					r4
					r8
					r32
				}
				<<
					% performer: Viola 02, offset: 4293/32, magnitude: 33/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs16. [ ~
							aqs8 ~ ~
							aqs32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cs32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqs32
							\once \override NoteHead #'style = #'harmonic
							e32
							\once \override NoteHead #'style = #'harmonic
							d32
							\once \override NoteHead #'style = #'harmonic
							cs32
							\once \override NoteHead #'style = #'harmonic
							ef32
							\once \override NoteHead #'style = #'harmonic
							f32
							\once \override NoteHead #'style = #'harmonic
							fs32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqf32 [ (
							\once \override NoteHead #'style = #'harmonic
							fqs32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							fqs32
							\once \override NoteHead #'style = #'harmonic
							gqf32
							\once \override NoteHead #'style = #'harmonic
							f32
							\once \override NoteHead #'style = #'harmonic
							fs32
							\once \override NoteHead #'style = #'harmonic
							fqs32
							\once \override NoteHead #'style = #'harmonic
							gqs32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							fs'16 :128 [ ~
							fs'8. :64 ]
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
					% performer: Viola 02, offset: 2163/16, magnitude: 11/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf'16 [ ~
							bqf'8.. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqf'32 [ (
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							d'32 -\open ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bqs'8. [ ~
							bqs'16 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2185/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Viola 02, offset: 4373/32, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g''16. ] ~
							g''4 ~
							g''16.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							e''8 [ ~ ~
							e''32 ] ~
							e''4 ~
							e''16.
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
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 4403/32, magnitude: 1/4
					r32
					r8
					r16.
				}
				<<
					% performer: Viola 02, offset: 4411/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'8 * 99/100 -\accent \startTrillSpan eqs'
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							af'32 :256 [ ~ \startTrillSpan cqs''
							af'16 * 99/100 :128 ]
							s16 * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" {
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 2209/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs'8.
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 553/4, magnitude: 5/32
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
								aqf32 ] )
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
								aqf32
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
						}
					}
				>>
				<<
					% performer: Viola 02, offset: 4429/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g'16. [ ~
							g'16 ]
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 2217/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 02, offset: 4435/32, magnitude: 1/8
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
								bqs32 -\accent [ (
								r32
								r32
								cqs32 ] )
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
								bqs32 \glissando
								s32
								s32
								cqs32
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
					% performer: Viola 02, offset: 4439/32, magnitude: 23/32
					r32
					r4
					r4
					r8.
				}
				<<
					% performer: Viola 02, offset: 2231/16, magnitude: 19/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs'16 [ ~
							fqs'8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							af16 :128 ] ~
							af4 :32 ~
							af32 :256
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 02, offset: 4481/32, magnitude: 199/32
					r16.
					r8
					R2. * 8
				}
				<<
					% performer: Viola 02, offset: 585/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs16. * 99/100 -\accent \startTrillSpan aqs
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
							eqf16. * 99/100 \startTrillSpan f
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							aqs16 * 99/100 :128 \startTrillSpan dqf'
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
					% performer: Viola 02, offset: 293/2, magnitude: 5/4
					r4
					r4
					R2. * 1
					\bar "|."
				}
			}
		>>
	>>
}
