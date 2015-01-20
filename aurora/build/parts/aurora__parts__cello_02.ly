% Abjad revision 4356
% 2011-05-15 23:32

\version "2.13.37"
\include "english.ly"
\include "/media/Work/dev/scores/abjad/cfg/abjad.scm"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 10)

\header {
	composer = #"Josiah Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	instrument = #"Cello 02"
	tagline = \markup { "" }
	title = #"mbrsi/aurora"
}

\paper {
	#(define page-breaking ly:optimal-breaking)
	between-system-spacing = #'((space . 0) (padding . 2) (stretchability . 0) (minimum-distance . 0))
	bottom-margin = 0.75\in
	bottom-system-spacing = #'((space . 0) (padding . 4) (stretchability . 0) (minimum-distance . 0))
	evenFooterMarkup = \markup { \fill-line { "cello 02 - mbrsi/aurora - josiah wolf oberholtzer" } }
	left-margin = 0.75\in
	max-systems-per-page = #8
	oddFooterMarkup = \markup { \fill-line { "josiah wolf oberholtzer - mbrsi/aurora - cello 02" } }
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
		\context StaffGroup = "Cello 02" \with {
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
					% performer: Cello 02, offset: 0, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1/32, magnitude: 5/32
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
					% performer: Cello 02, offset: 3/16, magnitude: 1/4
					\stopStaff
					r16
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 7/16, magnitude: 5/32
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
					% performer: Cello 02, offset: 19/32, magnitude: 7/16
					\stopStaff
					r32
					r8
					r4
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 33/32, magnitude: 3/16
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
					% performer: Cello 02, offset: 39/32, magnitude: 13/32
					\stopStaff
					r32
					r4
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 13/8, magnitude: 1/8
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
					% performer: Cello 02, offset: 7/4, magnitude: 5/8
					\stopStaff
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 19/8, magnitude: 1/8
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
					% performer: Cello 02, offset: 5/2, magnitude: 1/2
					\stopStaff
					r4
					r4
					\startStaff
				}
				{
					% performer: Cello 02, offset: 3, magnitude: 5/32
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
					% performer: Cello 02, offset: 101/32, magnitude: 23/32
					\stopStaff
					r16.
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 31/8, magnitude: 5/32
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
					% performer: Cello 02, offset: 129/32, magnitude: 29/32
					\stopStaff
					r16.
					r8
					r4
					r4..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 79/16, magnitude: 1/8
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
					% performer: Cello 02, offset: 81/16, magnitude: 21/16
					\stopStaff
					r16
					r8
					R2. * 1
					r4.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 51/8, magnitude: 3/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 207/32, magnitude: 9/32
					\stopStaff
					r32
					r4
					\startStaff
				}
				{
					% performer: Cello 02, offset: 27/4, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
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
					% performer: Cello 02, offset: 7, magnitude: 87/32
					\stopStaff
					r4
					r4
					R2. * 2
					r4
					r4
					r8..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 311/32, magnitude: 1/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 313/32, magnitude: 29/16
					\stopStaff
					r16.
					r8
					r4
					r4
					R2. * 1
					r4
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 371/32, magnitude: 1/4
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
					% performer: Cello 02, offset: 379/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 95/8, magnitude: 7/32
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
					% performer: Cello 02, offset: 387/32, magnitude: 1/8
					\stopStaff
					r32
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 391/32, magnitude: 1/4
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
					% performer: Cello 02, offset: 399/32, magnitude: 23/32
					\stopStaff
					r32
					r4
					r4..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 211/16, magnitude: 1/4
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
					% performer: Cello 02, offset: 215/16, magnitude: 3/8
					\stopStaff
					r16
					r4
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 221/16, magnitude: 3/16
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
					% performer: Cello 02, offset: 14, magnitude: 3/16
					\stopStaff
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 227/16, magnitude: 5/32
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
					% performer: Cello 02, offset: 459/32, magnitude: 135/32
					\stopStaff
					r32
					r8
					r4
					r4
					R2. * 4
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 297/16, magnitude: 7/16
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
					% performer: Cello 02, offset: 19, magnitude: 1/4
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
					% performer: Cello 02, offset: 77/4, magnitude: 33/32
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
						e'32 \glissando
						s32
						s32
						s32
					}
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
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
					}
					{
						a32 \glissando
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
					% performer: Cello 02, offset: 649/32, magnitude: 1/4
					\stopStaff
					r16.
					r8
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 657/32, magnitude: 27/32
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
					}
				}
				{
					% performer: Cello 02, offset: 171/8, magnitude: 7/32
					\stopStaff
					r8
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 691/32, magnitude: 25/32
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
						f32
					}
				}
				{
					% performer: Cello 02, offset: 179/8, magnitude: 11/32
					\stopStaff
					r8
					r8..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 727/32, magnitude: 21/32
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
						g'32
					}
				}
				{
					% performer: Cello 02, offset: 187/8, magnitude: 1/2
					\stopStaff
					r8
					r4
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 191/8, magnitude: 1/8
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
					% performer: Cello 02, offset: 24, magnitude: 1/4
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
					% performer: Cello 02, offset: 97/4, magnitude: 13/32
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
					% performer: Cello 02, offset: 789/32, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 99/4, magnitude: 1/4
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
					{
						r32
						r32
						r32
						r32
					}
				}
				{
					% performer: Cello 02, offset: 25, magnitude: 11/32
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
					% performer: Cello 02, offset: 811/32, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Cello 02, offset: 815/32, magnitude: 7/8
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
						s32
					}
					{
						g'32 \glissando
						s32
						s32
						g'32
						\breathe
					}
				}
				{
					% performer: Cello 02, offset: 843/32, magnitude: 1/8
					{
						f32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Cello 02, offset: 847/32, magnitude: 41/32
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
					% performer: Cello 02, offset: 111/4, magnitude: 5/8
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
						a32
					}
				}
				{
					% performer: Cello 02, offset: 227/8, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 911/32, magnitude: 1/4
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
					% performer: Cello 02, offset: 919/32, magnitude: 13/32
					\stopStaff
					r32
					r4
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 233/8, magnitude: 17/32
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
						a32
					}
				}
				{
					% performer: Cello 02, offset: 949/32, magnitude: 3/16
					\stopStaff
					r16.
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 955/32, magnitude: 3/16
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
					% performer: Cello 02, offset: 961/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 965/32, magnitude: 3/16
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
					% performer: Cello 02, offset: 971/32, magnitude: 11/16
					\stopStaff
					r32
					r8
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 993/32, magnitude: 3/16
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
					% performer: Cello 02, offset: 999/32, magnitude: 3/8
					\stopStaff
					r32
					r4
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1011/32, magnitude: 1/4
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
					% performer: Cello 02, offset: 1019/32, magnitude: 1/8
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
					% performer: Cello 02, offset: 1023/32, magnitude: 1
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
					% performer: Cello 02, offset: 1055/32, magnitude: 1
					\stopStaff
					r32
					R2. * 1
					r8..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1087/32, magnitude: 39/32
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
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 563/16, magnitude: 61/16
					\stopStaff
					r16
					R2. * 5
					\startStaff
				}
				{
					% performer: Cello 02, offset: 39, magnitude: 1/4
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						s32
						\revert Glissando #'style
					}
					{
						\override Glissando #'style = #'zigzag
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
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Cello 02, offset: 157/4, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 315/8, magnitude: 15/16
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
					% performer: Cello 02, offset: 645/16, magnitude: 451/32
					\stopStaff
					r16
					r8
					R2. * 18
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1741/32, magnitude: 5/32
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Cello 02, offset: 873/16, magnitude: 7/16
					\stopStaff
					r16
					r8
					r4
					\startStaff
				}
				{
					% performer: Cello 02, offset: 55, magnitude: 3/16
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
						e'32
					}
				}
				{
					% performer: Cello 02, offset: 883/16, magnitude: 9/16
					\stopStaff
					r16
					r4
					r4
					\startStaff
				}
				{
					% performer: Cello 02, offset: 223/4, magnitude: 1/8
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
					% performer: Cello 02, offset: 447/8, magnitude: 21/8
					\stopStaff
					r8
					r4
					R2. * 3
					\startStaff
				}
				{
					% performer: Cello 02, offset: 117/2, magnitude: 1/4
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
						s32
						g'32
					}
				}
				{
					% performer: Cello 02, offset: 235/4, magnitude: 9/4
					\stopStaff
					r4
					r4
					R2. * 2
					r4
					\startStaff
				}
				{
					% performer: Cello 02, offset: 61, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Cello 02, offset: 489/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1957/32, magnitude: 3/16
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
					% performer: Cello 02, offset: 1963/32, magnitude: 27/32
					\stopStaff
					r32
					r8
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 995/16, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Cello 02, offset: 997/16, magnitude: 21/32
					\stopStaff
					r16
					r8
					r4
					r8..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2015/32, magnitude: 1/8
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
					% performer: Cello 02, offset: 2019/32, magnitude: 1/2
					\stopStaff
					r32
					r8
					r4
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2035/32, magnitude: 1/8
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
					% performer: Cello 02, offset: 2039/32, magnitude: 15/32
					\stopStaff
					r32
					r4..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1027/16, magnitude: 1/8
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
					% performer: Cello 02, offset: 1029/16, magnitude: 11/16
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 65, magnitude: 9/32
					\stopStaff
					r4
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2089/32, magnitude: 39/32
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
						s32
						s32
						s32
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
					% performer: Cello 02, offset: 133/2, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1065/16, magnitude: 15/32
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
					% performer: Cello 02, offset: 2145/32, magnitude: 9/32
					\stopStaff
					r16.
					r8
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1077/16, magnitude: 11/16
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
					% performer: Cello 02, offset: 68, magnitude: 15/16
					\stopStaff
					r4
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1103/16, magnitude: 3/16
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
					% performer: Cello 02, offset: 553/8, magnitude: 1/8
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
					% performer: Cello 02, offset: 277/4, magnitude: 5/8
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
						s32
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 559/8, magnitude: 7/32
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
						e'32
					}
				}
				{
					% performer: Cello 02, offset: 2243/32, magnitude: 11/16
					\stopStaff
					r32
					r8
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2265/32, magnitude: 1
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
						e'32 \glissando
						s32
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
					% performer: Cello 02, offset: 2297/32, magnitude: 5/32
					\stopStaff
					r16.
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1151/16, magnitude: 1/8
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
					% performer: Cello 02, offset: 1153/16, magnitude: 7/32
					\stopStaff
					r16
					r8
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2313/32, magnitude: 31/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 293/4, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 587/8, magnitude: 1/4
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
					% performer: Cello 02, offset: 589/8, magnitude: 9/16
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
						\override Glissando #'style = #'zigzag
						c'32 \glissando
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
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 1187/16, magnitude: 9/32
					\stopStaff
					r16
					r8..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2383/32, magnitude: 1/4
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
						c'32 \glissando \startTextSpan
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
					% performer: Cello 02, offset: 2391/32, magnitude: 13/16
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
					% performer: Cello 02, offset: 2417/32, magnitude: 3/16
					\stopStaff
					r16.
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2423/32, magnitude: 7/32
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
					% performer: Cello 02, offset: 1215/16, magnitude: 35/32
					\stopStaff
					r16
					r4
					r4
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2465/32, magnitude: 7/32
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
					% performer: Cello 02, offset: 309/4, magnitude: 1/4
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
					% performer: Cello 02, offset: 155/2, magnitude: 1/4
					\stopStaff
					r4
					\startStaff
				}
				{
					% performer: Cello 02, offset: 311/4, magnitude: 3/16
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
					% performer: Cello 02, offset: 1247/16, magnitude: 15/16
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
						c'32 \glissando \startTextSpan
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
						e'32 \glissando
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
					% performer: Cello 02, offset: 631/8, magnitude: 5/32
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
					% performer: Cello 02, offset: 2529/32, magnitude: 1/8
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
					% performer: Cello 02, offset: 2533/32, magnitude: 1/2
					\stopStaff
					r16.
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2549/32, magnitude: 1/8
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
					% performer: Cello 02, offset: 2553/32, magnitude: 5/32
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
					% performer: Cello 02, offset: 1279/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2561/32, magnitude: 1/4
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
						s32
						c'32
					}
				}
				{
					% performer: Cello 02, offset: 2569/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2573/32, magnitude: 1/4
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
					}
					{
						e'32 \glissando
						e'32
					}
				}
				{
					% performer: Cello 02, offset: 2581/32, magnitude: 7/16
					\stopStaff
					r16.
					r4
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2595/32, magnitude: 7/32
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
					% performer: Cello 02, offset: 1301/16, magnitude: 1/4
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
						s32
						e'32
					}
				}
				{
					% performer: Cello 02, offset: 1305/16, magnitude: 23/32
					\stopStaff
					r16
					r8
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2633/32, magnitude: 5/32
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
					% performer: Cello 02, offset: 1319/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 165/2, magnitude: 7/32
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Cello 02, offset: 2647/32, magnitude: 27/32
					\stopStaff
					r32
					r4
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1337/16, magnitude: 3/16
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
					}
				}
				{
					% performer: Cello 02, offset: 335/4, magnitude: 7/4
					\stopStaff
					r4
					R2. * 2
					\startStaff
				}
				{
					% performer: Cello 02, offset: 171/2, magnitude: 3/16
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
						c'32
					}
				}
				{
					% performer: Cello 02, offset: 1371/16, magnitude: 9/16
					\stopStaff
					r16
					r4
					r4
					\startStaff
				}
				{
					% performer: Cello 02, offset: 345/4, magnitude: 1/8
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
					% performer: Cello 02, offset: 691/8, magnitude: 9/16
					\stopStaff
					r8
					r4
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1391/16, magnitude: 1/4
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
						s32
						g'32
					}
				}
				{
					% performer: Cello 02, offset: 1395/16, magnitude: 43/32
					\stopStaff
					r16
					r4
					r4
					R2. * 1
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2833/32, magnitude: 7/32
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
					% performer: Cello 02, offset: 355/4, magnitude: 7/16
					\stopStaff
					r4
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1427/16, magnitude: 5/32
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Cello 02, offset: 2859/32, magnitude: 11/32
					\stopStaff
					r32
					r8
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1435/16, magnitude: 5/32
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
					% performer: Cello 02, offset: 2875/32, magnitude: 7/32
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
						e'32
					}
				}
				{
					% performer: Cello 02, offset: 1441/16, magnitude: 35/16
					\stopStaff
					r16
					r8
					r4
					r4
					R2. * 2
					\startStaff
				}
				{
					% performer: Cello 02, offset: 369/4, magnitude: 3/16
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
					% performer: Cello 02, offset: 1479/16, magnitude: 5/4
					\stopStaff
					r16
					r4
					r4
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1499/16, magnitude: 1/4
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
					% performer: Cello 02, offset: 1503/16, magnitude: 39/16
					\stopStaff
					r16
					r4
					r4
					R2. * 2
					r4.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 771/8, magnitude: 9/32
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
					% performer: Cello 02, offset: 3093/32, magnitude: 67/16
					\stopStaff
					r16.
					R2. * 5
					r4
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 3227/32, magnitude: 1/4
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
					}
				}
				{
					% performer: Cello 02, offset: 3235/32, magnitude: 21/8
					\stopStaff
					r32
					r8
					R2. * 3
					r8..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 3319/32, magnitude: 9/32
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
					% performer: Cello 02, offset: 104, magnitude: 9/4
					\stopStaff
					r4
					R2. * 2
					r2
					\startStaff
				}
				{
					% performer: Cello 02, offset: 425/4, magnitude: 5/16
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
					}
				}
				{
					% performer: Cello 02, offset: 1705/16, magnitude: 61/16
					\stopStaff
					r16
					r8
					r4
					r4
					R2. * 4
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 883/8, magnitude: 5/16
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
					}
				}
				{
					% performer: Cello 02, offset: 1771/16, magnitude: 13/32
					\stopStaff
					r16
					r4
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 3555/32, magnitude: 13/32
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
					}
				}
				{
					% performer: Cello 02, offset: 223/2, magnitude: 39/16
					\stopStaff
					r4
					R2. * 2
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1823/16, magnitude: 47/32
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
						a32
					}
				}
				{
					% performer: Cello 02, offset: 3693/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 3695/32, magnitude: 25/32
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
						a32
						\breathe
					}
				}
				{
					% performer: Cello 02, offset: 465/4, magnitude: 5/32
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
					% performer: Cello 02, offset: 3725/32, magnitude: 17/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 1871/16, magnitude: 1/2
					\stopStaff
					r16
					r4..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 1879/16, magnitude: 43/32
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
						s32
						a32
					}
				}
				{
					% performer: Cello 02, offset: 3801/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 3803/32, magnitude: 13/16
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
						s32
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 3829/32, magnitude: 9/16
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
						a32
					}
				}
				{
					% performer: Cello 02, offset: 3847/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 481/4, magnitude: 9/8
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
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 971/8, magnitude: 11/16
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
						a32
						\breathe
					}
				}
				{
					% performer: Cello 02, offset: 1953/16, magnitude: 15/16
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
					% performer: Cello 02, offset: 123, magnitude: 13/16
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
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 1981/16, magnitude: 9/32
					\stopStaff
					r16
					r8
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 3971/32, magnitude: 19/16
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
					% performer: Cello 02, offset: 4009/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2005/16, magnitude: 3/2
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
					% performer: Cello 02, offset: 2029/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4061/32, magnitude: 9/8
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 4097/32, magnitude: 3/16
					\stopStaff
					r16.
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4103/32, magnitude: 21/32
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
						f32
					}
				}
				{
					% performer: Cello 02, offset: 1031/8, magnitude: 13/16
					\stopStaff
					r8
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2075/16, magnitude: 3/16
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
					% performer: Cello 02, offset: 1039/8, magnitude: 23/8
					\stopStaff
					r8
					r4
					r4
					R2. * 3
					\startStaff
				}
				{
					% performer: Cello 02, offset: 531/4, magnitude: 3/16
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
						g'32
					}
				}
				{
					% performer: Cello 02, offset: 2127/16, magnitude: 19/8
					\stopStaff
					r16
					r4
					r4
					R2. * 2
					r4
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2165/16, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Cello 02, offset: 4335/32, magnitude: 7/32
					\stopStaff
					r32
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2171/16, magnitude: 1/4
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Cello 02, offset: 2175/16, magnitude: 15/32
					\stopStaff
					r16
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4365/32, magnitude: 1/8
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 4369/32, magnitude: 9/32
					\stopStaff
					r16.
					r8
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2189/16, magnitude: 7/32
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
					% performer: Cello 02, offset: 4385/32, magnitude: 3/16
					\stopStaff
					r16.
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4391/32, magnitude: 5/32
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
					}
				}
				{
					% performer: Cello 02, offset: 1099/8, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Cello 02, offset: 275/2, magnitude: 3/16
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
					% performer: Cello 02, offset: 2203/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 551/4, magnitude: 1/4
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
					}
					{
						a32 \glissando
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Cello 02, offset: 138, magnitude: 5/16
					\stopStaff
					r4
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2213/16, magnitude: 5/32
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
					% performer: Cello 02, offset: 4431/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4437/32, magnitude: 1/8
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
					% performer: Cello 02, offset: 4441/32, magnitude: 17/32
					\stopStaff
					r16.
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2229/16, magnitude: 1/4
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
					% performer: Cello 02, offset: 2233/16, magnitude: 29/32
					\stopStaff
					r16
					r8
					r4
					r4
					r8..
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4495/32, magnitude: 5/32
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
						\revert Glissando #'style
					}
				}
				{
					% performer: Cello 02, offset: 1125/8, magnitude: 9/32
					\stopStaff
					r8
					r8
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4509/32, magnitude: 1/4
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
						e'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Cello 02, offset: 4517/32, magnitude: 9/32
					\stopStaff
					r16.
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2263/16, magnitude: 1/8
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
					% performer: Cello 02, offset: 2265/16, magnitude: 27/32
					\stopStaff
					r16
					r8
					r4
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4557/32, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Cello 02, offset: 4561/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4563/32, magnitude: 3/16
					{
						\override Glissando #'style = #'zigzag
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
					% performer: Cello 02, offset: 4569/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4571/32, magnitude: 1/8
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
					% performer: Cello 02, offset: 4575/32, magnitude: 9/32
					\stopStaff
					r32
					r4
					\startStaff
				}
				{
					% performer: Cello 02, offset: 573/4, magnitude: 7/32
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
					% performer: Cello 02, offset: 4591/32, magnitude: 7/32
					\stopStaff
					r32
					r8.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2299/16, magnitude: 3/16
					{
						\override Glissando #'style = #'zigzag
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
					% performer: Cello 02, offset: 1151/8, magnitude: 7/32
					\stopStaff
					r8
					r16.
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4611/32, magnitude: 1/4
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
						c'32
					}
				}
				{
					% performer: Cello 02, offset: 4619/32, magnitude: 7/16
					\stopStaff
					r32
					r8
					r4
					r32
					\startStaff
				}
				{
					% performer: Cello 02, offset: 4633/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Cello 02, offset: 2319/16, magnitude: 1/8
					\stopStaff
					r16
					r16
					\startStaff
				}
				{
					% performer: Cello 02, offset: 2321/16, magnitude: 1/4
					{
						c'32 \glissando
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
					% performer: Cello 02, offset: 2325/16, magnitude: 39/16
					\stopStaff
					r16
					r8
					R2. * 3
					\startStaff
				}
			}
			\new Staff \with {
				\remove Instrument_name_engraver
				\override Glissando #'zigzag-length = #1
				\override Glissando #'zigzag-width = #2
				instrumentName = #"Cello 02"
				shortInstrumentName = #"Cello 02"
			} {
				\clef "bass"
				\time 3/4
				\tempo 4 = 66
				\compressFullBarRests
				\mergeDifferentlyDottedOn
				\mergeDifferentlyHeadedOn
				{
					% performer: Cello 02, offset: 0, magnitude: 1/32
					r32
				}
				<<
					% performer: Cello 02, offset: 1/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cs,8 [ ~ ~ \startTrillSpan d,
							cs,32 * 99/100 ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 3/16, magnitude: 1/4
					r16
					r8.
				}
				<<
					% performer: Cello 02, offset: 7/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							ef16 [ ~ \startTrillSpan fs
							ef16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
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
					% performer: Cello 02, offset: 19/32, magnitude: 7/16
					r32
					r8
					r4
					r32
				}
				<<
					% performer: Cello 02, offset: 33/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							dqs8 * 99/100 \startTrillSpan fqs
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							gqs,16 * 99/100 :128 \startTrillSpan bqs,
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
					% performer: Cello 02, offset: 39/32, magnitude: 13/32
					r32
					r4
					r8
				}
				<<
					% performer: Cello 02, offset: 13/8, magnitude: 1/8
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
								f32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c32 \glissando
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 7/4, magnitude: 5/8
					r4
					r4
					r8
				}
				<<
					% performer: Cello 02, offset: 19/8, magnitude: 1/8
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
								eqs32 [ (
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
								eqs32 \glissando
								s32
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
							s32
						}
					}
				>>
				{
					% performer: Cello 02, offset: 5/2, magnitude: 1/2
					r4
					r4
				}
				<<
					% performer: Cello 02, offset: 3, magnitude: 5/32
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
								eqs32 [ (
								r32
								aqf,32 ] )
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
								eqs32 \glissando
								s32
								aqf,32
							}
						>>
						{
							\pitchedTrill
							cqs16 * 99/100 :128 \startTrillSpan dqf
							s16 * 1/100 \stopTrillSpan
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
					% performer: Cello 02, offset: 101/32, magnitude: 23/32
					r16.
					r4
					r4
					r8
				}
				<<
					% performer: Cello 02, offset: 31/8, magnitude: 5/32
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
								gqf32 [ (
								r32
								r32
								r32
								cs'32 ] )
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
								gqf32 \glissando
								s32
								s32
								s32
								cs'32
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
					% performer: Cello 02, offset: 129/32, magnitude: 29/32
					r16.
					r8
					r4
					r4..
				}
				<<
					% performer: Cello 02, offset: 79/16, magnitude: 1/8
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
								eqs'32 \glissando
								s32
								s32
								aqf'32
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
					% performer: Cello 02, offset: 81/16, magnitude: 21/16
					r16
					r8
					R2. * 1
					r4.
				}
				<<
					% performer: Cello 02, offset: 51/8, magnitude: 3/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf16. * 99/100 \startTrillSpan dqf'
							s16. * 1/100 \stopTrillSpan
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
						}
					}
				>>
				{
					% performer: Cello 02, offset: 207/32, magnitude: 9/32
					r32
					r4
				}
				<<
					% performer: Cello 02, offset: 27/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf'16. * 99/100 -\accent \startTrillSpan d'
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
							bqs,16. * 99/100 \startTrillSpan cqs
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							gqs,16 * 99/100 :128 \startTrillSpan cqs
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
					% performer: Cello 02, offset: 7, magnitude: 87/32
					r4
					r4
					R2. * 2
					r4
					r4
					r8..
				}
				<<
					% performer: Cello 02, offset: 311/32, magnitude: 1/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fqs32 [ ~ \startTrillSpan fs
							fqs32 * 99/100 ]
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
						}
					}
				>>
				{
					% performer: Cello 02, offset: 313/32, magnitude: 29/16
					r16.
					r8
					r4
					r4
					R2. * 1
					r4
					r16.
				}
				<<
					% performer: Cello 02, offset: 371/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqs,32 [
								r32
								r32
								eqf32 ]
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
								eqf32
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
								\override NoteHead #'style = #'harmonic
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
					% performer: Cello 02, offset: 379/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Cello 02, offset: 95/8, magnitude: 7/32
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
								r32
								r32
								r32
								dqf'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 \glissando
								s32
								s32
								s32
								s32
								s32
								dqf'32
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
					% performer: Cello 02, offset: 387/32, magnitude: 1/8
					r32
					r16.
				}
				<<
					% performer: Cello 02, offset: 391/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							e'32 -\accent ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d32 -\open
							ef32
							af,32 ] )
						}
						\revert TextScript #'staff-padding
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqs,32 ^ \markup { \italic Pizz. } [
								r32
								r32
								d,32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqs,32 \glissando
								s32
								s32
								d,32
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
					% performer: Cello 02, offset: 399/32, magnitude: 23/32
					r32
					r4
					r4..
				}
				<<
					% performer: Cello 02, offset: 211/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								e,32 -\accent [
								r32
								r32
								cqs,32 ]
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
								cqs,32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								fs32 ^ \markup { \italic Pizz. } [
								r32
								r32
								d32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fs32 \glissando
								s32
								s32
								d32
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
					% performer: Cello 02, offset: 215/16, magnitude: 3/8
					r16
					r4
					r16
				}
				<<
					% performer: Cello 02, offset: 221/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bf,32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							f32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							e'32 -\staccato ] )
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
					% performer: Cello 02, offset: 14, magnitude: 3/16
					r8.
				}
				<<
					% performer: Cello 02, offset: 227/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								f'32 -\accent [
								r32
								r32
								r32
								cqs'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								f'32 \glissando
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
							s32 \sfz \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 459/32, magnitude: 135/32
					r32
					r8
					r4
					r4
					R2. * 4
					r4
					r4
					r16
				}
				<<
					% performer: Cello 02, offset: 297/16, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef8.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cs8 * 99/100 \startTrillSpan e
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							c,32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							ef32
							\once \override NoteHead #'style = #'harmonic
							bf32
							\once \override NoteHead #'style = #'harmonic
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
					% performer: Cello 02, offset: 19, magnitude: 1/4
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
								d32 [ (
								r32
								r32
								dqs32 ] )
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
								d32 \glissando
								s32
								s32
								dqs32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								f,32 ^ \markup { \italic Pizz. } [
								r32
								r32
								fqs,32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								f,32 \glissando
								s32
								s32
								fqs,32
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
				<<
					% performer: Cello 02, offset: 77/4, magnitude: 33/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							eqs'4 :32 ~
							eqs'16 :128
						}
						{
							\pitchedTrill
							fs'8 * 99/100 :64 \startTrillSpan aqf'
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							e'16 [ ~ \startTrillSpan af'
							e'16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs8. [ ~ \startTrillSpan bf
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
							dqs'8 * 99/100 \startTrillSpan f'
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							f'32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf32
							\once \override NoteHead #'style = #'harmonic
							e32
							\once \override NoteHead #'style = #'harmonic
							a,32 ] )
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
					% performer: Cello 02, offset: 649/32, magnitude: 1/4
					r16.
					r8
					r32
				}
				<<
					% performer: Cello 02, offset: 657/32, magnitude: 27/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e,8 [ ~ ~
							e,32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							c16 :128 [ ~ \startTrillSpan cqs
							c8 * 99/100 :64 ]
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							cs8 ] ~ \startTrillSpan eqf
							cs4 * 99/100
							s4 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							c,32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							f32
							d32 -\open
							f'32 ] )
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
					% performer: Cello 02, offset: 171/8, magnitude: 7/32
					r8
					r16.
				}
				<<
					% performer: Cello 02, offset: 691/32, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g'8 [ ~ ~ \startTrillSpan a'
							g'32 ~
							g'8 * 99/100 ]
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
							b8 * 99/100 \startTrillSpan dqf'
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
							b8 * 99/100 \startTrillSpan e'
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
							af8 * 99/100 \startTrillSpan b
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							c'8 * 99/100 \startTrillSpan f'
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 179/8, magnitude: 11/32
					r8
					r8..
				}
				<<
					% performer: Cello 02, offset: 727/32, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d'32 ] ~
							d'4 ~
							d'16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs'8. * 99/100 \startTrillSpan aqf'
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
							eqs'8 * 99/100 \startTrillSpan gqs'
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
					% performer: Cello 02, offset: 187/8, magnitude: 1/2
					r8
					r4
					r8
				}
				<<
					% performer: Cello 02, offset: 191/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf'8
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
					% performer: Cello 02, offset: 24, magnitude: 1/4
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
								aqf,32 -\accent [ (
								r32
								r32
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
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf,32 \glissando
								s32
								s32
								s32
								s32
								cqs32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqf16 * 99/100 :128 \startTrillSpan eqs
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
					% performer: Cello 02, offset: 97/4, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a'8
							\revert NoteHead #'style
						}
						{
							\pitchedTrill
							fqs'8 [ ~ \startTrillSpan a'
							fqs'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							ef'32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							d32
							\once \override NoteHead #'style = #'harmonic
							af,32 ] )
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
					% performer: Cello 02, offset: 789/32, magnitude: 3/32
					r16.
				}
				<<
					% performer: Cello 02, offset: 99/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqs,32 [
								r32
								r32
								cqs,32 ]
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
								cqs,32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqf,32 -\snappizzicato ^ \markup { \italic Pizz. } [
								r32
								r32
								eqs32 ]
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
								bqf,32 \glissando
								s32
								s32
								eqs32
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
					% performer: Cello 02, offset: 25, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							ef,8.. :64
						}
						\override TextScript #'staff-padding = #6
						{
							c,32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							cs32
							d32 -\open
							cs'32 ] )
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
					% performer: Cello 02, offset: 811/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							d8 -\open
						}
					}
					\context Voice = "span" {
						{
							s32 \mf
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 815/32, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqs32 ] ~ \startTrillSpan c'
							bqs4 ~
							bqs16 * 99/100
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fs8. [ ~ \startTrillSpan af
							fs16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							d'8 * 99/100 :64 \startTrillSpan e'
							s8 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							e'32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d32 -\open
							g,32 -\open
							\once \override NoteHead #'style = #'harmonic
							a,32 ] )
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
					% performer: Cello 02, offset: 843/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs8
							\revert NoteHead #'style
						}
					}
					\context Voice = "span" {
						{
							s32 \mf
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 847/32, magnitude: 41/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cs,32 :256 [ ~
							cs,8 :64 ]
							\revert NoteHead #'style
						}
						{
							\pitchedTrill
							eqf,8 [ ~ \startTrillSpan aqf,
							eqf,16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							c,8 -\open [ ~ ~ \startTrillSpan dqf,
							c,32 ~
							c,8. * 99/100 ]
							s8. * 1/100 \stopTrillSpan
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							gqs,16 [ ~ \startTrillSpan bqf,
							gqs,8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cqs,8 [ ~ \startTrillSpan cs,
							cqs,8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							d,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							af,32
							ef32
							bf32 ] )
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
					% performer: Cello 02, offset: 111/4, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b4 ~
							b32
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bqf8.. :64 [ ~
							bqf8 :64 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 227/8, magnitude: 3/32
					r16.
				}
				<<
					% performer: Cello 02, offset: 911/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e,32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							b,32 -\staccato
							d32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs'32 -\staccato ] )
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
								d'32 ^ \markup { \italic Pizz. } [
								r32
								r32
								cqs'32 ]
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
								cqs'32
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
					% performer: Cello 02, offset: 919/32, magnitude: 13/32
					r32
					r4
					r8
				}
				<<
					% performer: Cello 02, offset: 233/8, magnitude: 17/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f8 [ ~
							f8 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							cqs'8 :64 [ ~
							cqs'8 :64 ~ ~
							cqs'32 :256 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
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
					% performer: Cello 02, offset: 949/32, magnitude: 3/16
					r16.
					r16.
				}
				<<
					% performer: Cello 02, offset: 955/32, magnitude: 3/16
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
								bqs32 [ (
								r32
								r32
								r32
								r32
								f'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs32 \glissando
								s32
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
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 961/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Cello 02, offset: 965/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								e'32 [
								r32
								r32
								r32
								r32
								bqf32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								e'32 \glissando
								s32
								s32
								s32
								s32
								bqf32
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
					% performer: Cello 02, offset: 971/32, magnitude: 11/16
					r32
					r8
					r4
					r4
					r32
				}
				<<
					% performer: Cello 02, offset: 993/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							f32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f,32 -\staccato ] )
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 999/32, magnitude: 3/8
					r32
					r4
					r16.
				}
				<<
					% performer: Cello 02, offset: 1011/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf8 [ ~ ~
							bqf32 ~
							bqf16. ]
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
					% performer: Cello 02, offset: 1019/32, magnitude: 1/8
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
								af,32 [ (
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
								af,32 \glissando
								s32
								s32
								aqf,32
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
					% performer: Cello 02, offset: 1023/32, magnitude: 1
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf'32 [ ~
							gqf'8.. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							bqs32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							gqf8.. [ ~
							gqf8.. ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 1055/32, magnitude: 1
					r32
					R2. * 1
					r8..
				}
				<<
					% performer: Cello 02, offset: 1087/32, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef32 ] ~
							ef4 ~
							ef32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							c32 [ (
							\once \override NoteHead #'style = #'harmonic
							b,32
							\once \override NoteHead #'style = #'harmonic
							bqf,32
							\once \override NoteHead #'style = #'harmonic
							aqf,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							af,32
							\once \override NoteHead #'style = #'harmonic
							aqs,32
							\once \override NoteHead #'style = #'harmonic
							bf,32
							\once \override NoteHead #'style = #'harmonic
							b,32
							\once \override NoteHead #'style = #'harmonic
							bf,32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bf32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							b32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqf'8 [ ~ ~
							dqf'32 ~
							dqf'8. ]
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
					% performer: Cello 02, offset: 563/16, magnitude: 61/16
					r16
					R2. * 5
				}
				<<
					% performer: Cello 02, offset: 39, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqs16. * 99/100 -\accent \startTrillSpan gqf
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
								f32 [
								r32
								d'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								f32 \glissando
								s32
								d'32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef16 * 99/100 :128 \startTrillSpan eqs
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
					% performer: Cello 02, offset: 157/4, magnitude: 1/8
					r8
				}
				<<
					% performer: Cello 02, offset: 315/8, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf8 [ ~
							eqf8 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							a32 [ (
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							bf32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							aqs32
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							fs32
							\once \override NoteHead #'style = #'harmonic
							af32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							e8. [ ~
							e16 ]
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
					% performer: Cello 02, offset: 645/16, magnitude: 451/32
					r16
					r8
					R2. * 18
					r4
					r8
					r32
				}
				<<
					% performer: Cello 02, offset: 1741/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							eqf16. * 99/100 -\accent \startTrillSpan fs
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							ef'16 * 99/100 :128 \startTrillSpan e'
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
					% performer: Cello 02, offset: 873/16, magnitude: 7/16
					r16
					r8
					r4
				}
				<<
					% performer: Cello 02, offset: 55, magnitude: 3/16
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
								ef32 ] )
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
								ef32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqs16 * 99/100 :128 \startTrillSpan cqs'
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
					% performer: Cello 02, offset: 883/16, magnitude: 9/16
					r16
					r4
					r4
				}
				<<
					% performer: Cello 02, offset: 223/4, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							cs8 * 99/100 -\accent \startTrillSpan f
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 447/8, magnitude: 21/8
					r8
					r4
					R2. * 3
				}
				<<
					% performer: Cello 02, offset: 117/2, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cs,8 -\accent [ ~ ~ \startTrillSpan dqf,
							cs,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							af,16. * 99/100 :128 \startTrillSpan cs
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
					% performer: Cello 02, offset: 235/4, magnitude: 9/4
					r4
					r4
					R2. * 2
					r4
				}
				<<
					% performer: Cello 02, offset: 61, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqs,32 -\accent [
								r32
								r32
								aqf,32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqs,32 \glissando
								s32
								s32
								aqf,32
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
					% performer: Cello 02, offset: 489/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Cello 02, offset: 1957/32, magnitude: 3/16
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
								r32
								r32
								cs,32 ] )
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
								cs,32
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
					% performer: Cello 02, offset: 1963/32, magnitude: 27/32
					r32
					r8
					r4
					r4
					r8.
				}
				<<
					% performer: Cello 02, offset: 995/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqs,32 -\accent [
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
					% performer: Cello 02, offset: 997/16, magnitude: 21/32
					r16
					r8
					r4
					r8..
				}
				<<
					% performer: Cello 02, offset: 2015/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bf,32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							f32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato ] )
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
					% performer: Cello 02, offset: 2019/32, magnitude: 1/2
					r32
					r8
					r4
					r16.
				}
				<<
					% performer: Cello 02, offset: 2035/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqf'32 -\accent [
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
								eqf'32 \glissando
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
							s32 \sfz \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 2039/32, magnitude: 15/32
					r32
					r4..
				}
				<<
					% performer: Cello 02, offset: 1027/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							c'32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							g32 -\staccato
							c32 -\staccato
							f,32 -\staccato ] )
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
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 1029/16, magnitude: 11/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							af,8. [ ~
							af,8.. ]
						}
						{
							bf,32 ] ~
							bf,4
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
					% performer: Cello 02, offset: 65, magnitude: 9/32
					r4
					r32
				}
				<<
					% performer: Cello 02, offset: 2089/32, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs8.. [ ~
							fs32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqf'32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							d'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							eqf2
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
					% performer: Cello 02, offset: 133/2, magnitude: 1/16
					r16
				}
				<<
					% performer: Cello 02, offset: 1065/16, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf,8. ] ~
							bf,4 ~
							bf,32
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
					% performer: Cello 02, offset: 2145/32, magnitude: 9/32
					r16.
					r8
					r16
				}
				<<
					% performer: Cello 02, offset: 1077/16, magnitude: 11/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf8. [ ~
							bqf8 ~ ~
							bqf32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs'16. :128 ] ~
							fqs'4 :32
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
					% performer: Cello 02, offset: 68, magnitude: 15/16
					r4
					r4
					r4
					r8.
				}
				<<
					% performer: Cello 02, offset: 1103/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bqf16 [ ~
							bqf8 ]
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
					% performer: Cello 02, offset: 553/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							eqf32 -\accent -\staccato [ (
							dqs32 -\staccato
							e32 -\staccato
							eqf32 -\staccato ] )
							\slurSolid
						}
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
					% performer: Cello 02, offset: 277/4, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d'4 ~
							d'8
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							eqf'8 [ ~
							eqf'8 ]
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
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 559/8, magnitude: 7/32
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
								dqf'32 [ (
								r32
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
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqf'32 \glissando
								s32
								s32
								s32
								gqf32
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
								c'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqs'32 \glissando
								c'32
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
					% performer: Cello 02, offset: 2243/32, magnitude: 11/16
					r32
					r8
					r4
					r4
					r32
				}
				<<
					% performer: Cello 02, offset: 2265/32, magnitude: 1
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf8.. [ ~
							aqf8 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							g32 [ (
							\once \override NoteHead #'style = #'harmonic
							f32
							\once \override NoteHead #'style = #'harmonic
							fs32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							f32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							f32
							\once \override NoteHead #'style = #'harmonic
							e32
							\once \override NoteHead #'style = #'harmonic
							fs32 ] )
						}
						{
							gqs16. ] ~
							gqs4 ~
							gqs32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 2297/32, magnitude: 5/32
					r16.
					r16
				}
				<<
					% performer: Cello 02, offset: 1151/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							dqs32 -\staccato
							d32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato ] )
							\slurSolid
						}
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
					% performer: Cello 02, offset: 1153/16, magnitude: 7/32
					r16
					r8
					r32
				}
				<<
					% performer: Cello 02, offset: 2313/32, magnitude: 31/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf8.. [ ~
							gqf8. ]
							\revert NoteHead #'style
						}
						{
							b,32 [ (
							aqs,32
							af,32
							a,32
							aqf,32
							g,32
							af,32
							aqf,32
							bqf,32
							bf,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							f4
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
					% performer: Cello 02, offset: 293/4, magnitude: 1/8
					r8
				}
				<<
					% performer: Cello 02, offset: 587/8, magnitude: 1/4
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
								eqf32 -\accent [ (
								r32
								r32
								bf,32 ] )
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
								eqf32 \glissando
								s32
								s32
								bf,32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqf32 :256 [
								r32
								r32
								ef32 :256 ]
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
								bqf32 \glissando
								s32
								s32
								ef32
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
					% performer: Cello 02, offset: 589/8, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							ef,8 [ ~
							ef,8 ~ ~
							ef,32 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							ef16. [ ~
							ef8. ]
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
							s32 \p \>
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
					% performer: Cello 02, offset: 1187/16, magnitude: 9/32
					r16
					r8..
				}
				<<
					% performer: Cello 02, offset: 2383/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							eqf32 -\staccato [ (
							d32 -\staccato
							eqf32 -\staccato ] )
							\slurSolid
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							dqf,32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqf,32 :256 [
								c32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqf,32 \glissando
								c32
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
							s32
							s32 \mp \>
							s32
						}
						{
							s32
							s32
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 2391/32, magnitude: 13/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							g,32 -\open ] ~
							g,4 ~
							g,8.
						}
						{
							f,16 ] ~
							f,4 ~
							f,32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 2417/32, magnitude: 3/16
					r16.
					r16.
				}
				<<
					% performer: Cello 02, offset: 2423/32, magnitude: 7/32
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
								bf,32 [ (
								r32
								r32
								r32
								bqf,32 ] )
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
								bf,32 \glissando
								s32
								s32
								s32
								bqf,32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqs32 :256 [
								e32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqs32 \glissando
								e32
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
					% performer: Cello 02, offset: 1215/16, magnitude: 35/32
					r16
					r4
					r4
					r4
					r4
					r32
				}
				<<
					% performer: Cello 02, offset: 2465/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							dqs8..
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
					% performer: Cello 02, offset: 309/4, magnitude: 1/4
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
								f32 -\accent [ (
								r32
								r32
								cs'32 ] )
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
								f32 \glissando
								s32
								s32
								cs'32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e'8 * 99/100 :64 \startTrillSpan a'
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
					% performer: Cello 02, offset: 155/2, magnitude: 1/4
					r4
				}
				<<
					% performer: Cello 02, offset: 311/4, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							dqf'32 -\accent -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							d'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato
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
								bqs32 :256 [
								eqf'32 :256 ]
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
								eqf'32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fp \>
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
					% performer: Cello 02, offset: 1247/16, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bqf,16 ] ~
							bqf,4
						}
						{
							fqs32 [ (
							gqs32
							gqf32
							eqs32
							e32
							eqf32
							d32 -\open
							eqf32
							dqs32
							eqs32 ] )
						}
						{
							ef'8. :64 [ ~
							ef'8 :64 ]
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
					% performer: Cello 02, offset: 631/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							g,32 -\staccato [ (
							a,32 -\staccato
							af,32 -\staccato
							a,32 -\staccato
							aqf,32 -\staccato ] )
							\slurSolid
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
					% performer: Cello 02, offset: 2529/32, magnitude: 1/8
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
								a32 ] )
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
					% performer: Cello 02, offset: 2533/32, magnitude: 1/2
					r16.
					r4
					r8
					r32
				}
				<<
					% performer: Cello 02, offset: 2549/32, magnitude: 1/8
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
								cs,32 [ (
								r32
								r32
								dqf,32 ] )
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
								cs,32 \glissando
								s32
								s32
								dqf,32
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
					% performer: Cello 02, offset: 2553/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							b32 -\accent -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							bqf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							aqf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							aqs32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf32 -\staccato ] )
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 1279/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Cello 02, offset: 2561/32, magnitude: 1/4
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
								dqf32 ] )
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
								a,32 \glissando
								s32
								dqf32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqf32 :256 [
								r32
								r32
								r32
								d'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqf32 \glissando
								s32
								s32
								s32
								d'32
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
					% performer: Cello 02, offset: 2569/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Cello 02, offset: 2573/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bqs32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							cs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							dqf'32 -\staccato ] )
							\slurSolid
						}
						{
							cs'32 [ (
							dqf'32
							cqs'32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								c'32 :256 [
								b32 :256 ]
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
								b32
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
					% performer: Cello 02, offset: 2581/32, magnitude: 7/16
					r16.
					r4
					r16.
				}
				<<
					% performer: Cello 02, offset: 2595/32, magnitude: 7/32
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
								eqs32 ] )
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
								aqs,32 \glissando
								s32
								s32
								eqs32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								g32 :256 [
								r32
								af32 :256 ]
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
								g32 \glissando
								s32
								af32
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
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 1301/16, magnitude: 1/4
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
								gqf32 [ (
								r32
								r32
								r32
								b32 ] )
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
								gqf32 \glissando
								s32
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
								bqf,32 :256 [
								r32
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
								bqf,32 \glissando
								s32
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
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \f \>
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 1305/16, magnitude: 23/32
					r16
					r8
					r4
					r4
					r32
				}
				<<
					% performer: Cello 02, offset: 2633/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							d32 -\staccato [ (
							c32 -\staccato
							b,32 -\staccato
							bf,32 -\staccato
							c32 -\staccato ] )
							\slurSolid
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
					% performer: Cello 02, offset: 1319/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Cello 02, offset: 165/2, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a,8 -\accent [ ~ ~ \startTrillSpan bqs,
							a,32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							ef,16 * 99/100 :128 \startTrillSpan gqf,
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
					% performer: Cello 02, offset: 2647/32, magnitude: 27/32
					r32
					r4
					r4
					r4
					r16
				}
				<<
					% performer: Cello 02, offset: 1337/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							bqs32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bqf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bqs32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqf,32 :256 [
								a,32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqf,32 \glissando
								a,32
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
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 335/4, magnitude: 7/4
					r4
					R2. * 2
				}
				<<
					% performer: Cello 02, offset: 171/2, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs8 * 99/100 -\accent \startTrillSpan gqf
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g,16 * 99/100 :128 -\open \startTrillSpan bqs,
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
							s32
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 1371/16, magnitude: 9/16
					r16
					r4
					r4
				}
				<<
					% performer: Cello 02, offset: 345/4, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							eqs32 -\staccato [ (
							dqs32 -\staccato
							e32 -\staccato
							fqs32 -\staccato ] )
							\slurSolid
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
					% performer: Cello 02, offset: 691/8, magnitude: 9/16
					r8
					r4
					r8.
				}
				<<
					% performer: Cello 02, offset: 1391/16, magnitude: 1/4
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
								r32
								gqs'32 ] )
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
								gqf'32 \glissando
								s32
								s32
								s32
								gqs'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								g32 :256 [
								r32
								fs32 :256 ]
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
								g32 \glissando
								s32
								fs32
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
						}
						{
							s32
							s32
							s32
						}
					}
				>>
				{
					% performer: Cello 02, offset: 1395/16, magnitude: 43/32
					r16
					r4
					r4
					R2. * 1
					r32
				}
				<<
					% performer: Cello 02, offset: 2833/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							aqs,32 -\staccato [ (
							aqf,32 -\staccato
							bqf,32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								ef32 :256 [
								r32
								r32
								d'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								ef32 \glissando
								s32
								s32
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
					% performer: Cello 02, offset: 355/4, magnitude: 7/16
					r4
					r8.
				}
				<<
					% performer: Cello 02, offset: 1427/16, magnitude: 5/32
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
								dqf'32 [ (
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
								dqf'32 \glissando
								s32
								g'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqs32 :256 [
								eqf'32 :256 ]
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
						}
					}
				>>
				{
					% performer: Cello 02, offset: 2859/32, magnitude: 11/32
					r32
					r8
					r8.
				}
				<<
					% performer: Cello 02, offset: 1435/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							bqf32 -\staccato [ (
							c'32 -\staccato
							cqs'32 -\staccato
							bqs32 -\staccato
							dqf'32 -\staccato ] )
							\slurSolid
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
					% performer: Cello 02, offset: 2875/32, magnitude: 7/32
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
								fqs32 [ (
								r32
								r32
								r32
								dqs32 ] )
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
								fqs32 \glissando
								s32
								s32
								s32
								dqs32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqf'32 :256 [
								a32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqf'32 \glissando
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
					% performer: Cello 02, offset: 1441/16, magnitude: 35/16
					r16
					r8
					r4
					r4
					R2. * 2
				}
				<<
					% performer: Cello 02, offset: 369/4, magnitude: 3/16
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
								dqs,32 \glissando
								s32
								s32
								f,32
							}
						>>
						{
							\pitchedTrill
							gqs,16 * 99/100 :128 \startTrillSpan aqf,
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
					% performer: Cello 02, offset: 1479/16, magnitude: 5/4
					r16
					r4
					r4
					r4
					r4
					r8.
				}
				<<
					% performer: Cello 02, offset: 1499/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							c,32 -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							cs32 -\staccato
							fs32 -\staccato
							cs'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							cs'8 * 99/100 \startTrillSpan dqs'
							s8 * 1/100 \stopTrillSpan
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
					% performer: Cello 02, offset: 1503/16, magnitude: 39/16
					r16
					r4
					r4
					R2. * 2
					r4.
				}
				<<
					% performer: Cello 02, offset: 771/8, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef'32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d32 -\staccato
							c,32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g,8 [ ~ ~ \startTrillSpan aqf,
							g,32 * 99/100 ]
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
					% performer: Cello 02, offset: 3093/32, magnitude: 67/16
					r16.
					R2. * 5
					r4
					r16.
				}
				<<
					% performer: Cello 02, offset: 3227/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							c,32 -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							a,32 -\staccato
							d32 -\open -\staccato
							a32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqs32 [ ~ \startTrillSpan dqf'
							aqs16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 3235/32, magnitude: 21/8
					r32
					r8
					R2. * 3
					r8..
				}
				<<
					% performer: Cello 02, offset: 3319/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf,32 -\staccato
							c,32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							af,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							d32
							d32 -\open
							e'32 ] )
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 104, magnitude: 9/4
					r4
					R2. * 2
					r2
				}
				<<
					% performer: Cello 02, offset: 425/4, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs'4 ~
							gqs'16
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 1705/16, magnitude: 61/16
					r16
					r8
					r4
					r4
					R2. * 4
					r8
				}
				<<
					% performer: Cello 02, offset: 883/8, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e'8 [ ~
							e'8. ]
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
				{
					% performer: Cello 02, offset: 1771/16, magnitude: 13/32
					r16
					r4
					r16.
				}
				<<
					% performer: Cello 02, offset: 3555/32, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs8 [ ~ ~
							gqs32 ] ~
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
					% performer: Cello 02, offset: 223/2, magnitude: 39/16
					r4
					R2. * 2
					r4
					r4
					r8.
				}
				<<
					% performer: Cello 02, offset: 1823/16, magnitude: 47/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs'16 ] ~
							dqs'4 ~
							dqs'32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							d'32 [ (
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							cs'32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							c'32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							fs32
							\once \override NoteHead #'style = #'harmonic
							gqf32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							bf32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							bqs32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							f16 :128 ] ~
							f4 :32 ~
							f8 :64 [ ~ ~
							f32 :256 ]
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
					% performer: Cello 02, offset: 3693/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Cello 02, offset: 3695/32, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cs32 ] ~
							cs4 ~
							cs16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							e8. :64 ] ~
							e4 :32
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
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 465/4, magnitude: 5/32
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
								cs,32 -\accent [ (
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
								cs,32 \glissando
								s32
								s32
								s32
								g,32
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
					% performer: Cello 02, offset: 3725/32, magnitude: 17/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs16. [ ~
							aqs8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							cqs16 [ ~
							cqs8. ]
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
					% performer: Cello 02, offset: 1871/16, magnitude: 1/2
					r16
					r4..
				}
				<<
					% performer: Cello 02, offset: 1879/16, magnitude: 43/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs,16 ] ~
							aqs,4 ~
							aqs,32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							f32 [ (
							\once \override NoteHead #'style = #'harmonic
							fqs32
							\once \override NoteHead #'style = #'harmonic
							fs32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							f32
							\once \override NoteHead #'style = #'harmonic
							gqf32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							fs32
							\once \override NoteHead #'style = #'harmonic
							eqs32
							\once \override NoteHead #'style = #'harmonic
							dqs32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqf32 [ (
							\once \override NoteHead #'style = #'harmonic
							c32
							\once \override NoteHead #'style = #'harmonic
							cqs32
							\once \override NoteHead #'style = #'harmonic
							c32
							\once \override NoteHead #'style = #'harmonic
							dqf32
							\once \override NoteHead #'style = #'harmonic
							cs32
							\once \override NoteHead #'style = #'harmonic
							ef32
							\once \override NoteHead #'style = #'harmonic
							eqf32
							\once \override NoteHead #'style = #'harmonic
							f32
							\once \override NoteHead #'style = #'harmonic
							gqf32
							\once \override NoteHead #'style = #'harmonic
							f32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							g16 :128 ] ~
							g4 :32 ~
							g32 :256
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
					% performer: Cello 02, offset: 3801/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Cello 02, offset: 3803/32, magnitude: 13/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf8 [ ~ ~
							eqf32 ~
							eqf8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							f16 ] ~
							f4 ~
							f8 [ ~ ~
							f32 ]
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
					}
				>>
				<<
					% performer: Cello 02, offset: 3829/32, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b16. [ ~
							b8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs16 :128 [ ~
							fqs8.. :64 ]
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
					}
				>>
				{
					% performer: Cello 02, offset: 3847/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Cello 02, offset: 481/4, magnitude: 9/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d4 ~
							d32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cqs,32 [ (
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							dqs,32
							\once \override NoteHead #'style = #'harmonic
							ef,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							d,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32
							\once \override NoteHead #'style = #'harmonic
							e,32
							\once \override NoteHead #'style = #'harmonic
							eqf,32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							a,8 ] ~
							a,4 ~
							a,8
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
							s32
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 971/8, magnitude: 11/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf,8 [ ~
							bqf,8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							ef,32 :256 ] ~
							ef,4 :32 ~
							ef,16 :128
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
					}
				>>
				<<
					% performer: Cello 02, offset: 1953/16, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf8. [ ~
							bqf16. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							c'32 [ (
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							fs8 [ ~ ~
							fs32 ] ~
							fs4
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
							s32
						}
					}
				>>
				<<
					% performer: Cello 02, offset: 123, magnitude: 13/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf4...
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							b32 ] ~
							b4 ~
							b16
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 1981/16, magnitude: 9/32
					r16
					r8
					r16.
				}
				<<
					% performer: Cello 02, offset: 3971/32, magnitude: 19/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs'8 [ ~ ~
							fs'32 ] ~
							fs'4 ~
							fs'32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqf'32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							cs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bf8 :64 ] ~
							bf4 :32 ~
							bf32 :256
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
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
					% performer: Cello 02, offset: 4009/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Cello 02, offset: 2005/16, magnitude: 3/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs8. [ ~
							gqs8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							c'32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							c'8 ] ~
							c'4 ~
							c'16
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
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 2029/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Cello 02, offset: 4061/32, magnitude: 9/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d'16. [ ~
							d'8 ~ ~
							d'32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							af'32 [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							e'32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							f'32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							a'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							g'8.. [ ~
							g'32 ]
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
					% performer: Cello 02, offset: 4097/32, magnitude: 3/16
					r16.
					r16.
				}
				<<
					% performer: Cello 02, offset: 4103/32, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs'32 ] ~
							cqs'4 ~
							cqs'16.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs8 :64 [ ~ ~
							fqs32 :256 ~
							fqs8 :64 ]
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
				{
					% performer: Cello 02, offset: 1031/8, magnitude: 13/16
					r8
					r4
					r4
					r8.
				}
				<<
					% performer: Cello 02, offset: 2075/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								c'32 [
								r32
								r32
								r32
								r32
								aqs32 ]
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
								c'32 \glissando
								s32
								s32
								s32
								s32
								aqs32
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
					% performer: Cello 02, offset: 1039/8, magnitude: 23/8
					r8
					r4
					r4
					R2. * 3
				}
				<<
					% performer: Cello 02, offset: 531/4, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g16. * 99/100 -\accent \startTrillSpan aqf
							s16. * 1/100 \stopTrillSpan
						}
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							d16. * 99/100 :128 -\open \startTrillSpan f
							s16. * 1/100 \stopTrillSpan
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
					% performer: Cello 02, offset: 2127/16, magnitude: 19/8
					r16
					r4
					r4
					R2. * 2
					r4
					r16
				}
				<<
					% performer: Cello 02, offset: 2165/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							a8 :64 -\open [ ~ ~
							a32 :256 ]
						}
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
					% performer: Cello 02, offset: 4335/32, magnitude: 7/32
					r32
					r8.
				}
				<<
					% performer: Cello 02, offset: 2171/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs16 [ ~
							eqs16 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf8 * 99/100 \startTrillSpan cs'
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
					% performer: Cello 02, offset: 2175/16, magnitude: 15/32
					r16
					r4
					r8
					r32
				}
				<<
					% performer: Cello 02, offset: 4365/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							f'16. [ ~
							f'32 ]
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
				{
					% performer: Cello 02, offset: 4369/32, magnitude: 9/32
					r16.
					r8
					r16
				}
				<<
					% performer: Cello 02, offset: 2189/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							b,32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							bqf,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf,32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							aqf,32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqs,32 :256 [
								eqs,32 :256 ]
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
								dqs,32 \glissando
								eqs,32
							}
						>>
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
					% performer: Cello 02, offset: 4385/32, magnitude: 3/16
					r16.
					r16.
				}
				<<
					% performer: Cello 02, offset: 4391/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							g32 -\staccato [ (
							fqs32 -\staccato
							g32 -\staccato ] )
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
								eqs32 :256 ]
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
								c'32 \glissando
								eqs32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 1099/8, magnitude: 1/8
					r8
				}
				<<
					% performer: Cello 02, offset: 275/2, magnitude: 3/16
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
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cqs32 \glissando
								s32
								s32
								s32
								s32
								aqf,32
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
					% performer: Cello 02, offset: 2203/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Cello 02, offset: 551/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							eqf16. * 99/100 -\accent \startTrillSpan fs
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							dqf16. * 99/100 \startTrillSpan e
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							aqf,16 * 99/100 :128 \startTrillSpan c
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
					% performer: Cello 02, offset: 138, magnitude: 5/16
					r4
					r16
				}
				<<
					% performer: Cello 02, offset: 2213/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bf16. * 99/100 -\accent \startTrillSpan cqs'
							s16. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							cs'16 * 99/100 :128 \startTrillSpan eqf'
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
					% performer: Cello 02, offset: 4431/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Cello 02, offset: 4437/32, magnitude: 1/8
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
								fqs'32 -\accent [ (
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
								fqs'32 \glissando
								s32
								s32
								aqf'32
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
					% performer: Cello 02, offset: 4441/32, magnitude: 17/32
					r16.
					r8
					r4
					r16
				}
				<<
					% performer: Cello 02, offset: 2229/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bqf8 :64
						}
						\override TextScript #'staff-padding = #6
						{
							c'32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							g32
							c32
							c,32 -\open ] )
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
						}
						{
							s32
							s32
							s32
							s32 \mf
						}
					}
				>>
				{
					% performer: Cello 02, offset: 2233/16, magnitude: 29/32
					r16
					r8
					r4
					r4
					r8..
				}
				<<
					% performer: Cello 02, offset: 4495/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							f,32 [ ~ \startTrillSpan gqs,
							f,8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
						}
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
					% performer: Cello 02, offset: 1125/8, magnitude: 9/32
					r8
					r8
					r32
				}
				<<
					% performer: Cello 02, offset: 4509/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							gqs,16. :128 [ ~
							gqs,32 :256 ]
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							b,32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							f'32 ] )
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
							s32 \f \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 4517/32, magnitude: 9/32
					r16.
					r8.
				}
				<<
					% performer: Cello 02, offset: 2263/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f'16 :128 [ ~
							f'16 :128 ]
							\revert NoteHead #'style
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
					% performer: Cello 02, offset: 2265/16, magnitude: 27/32
					r16
					r8
					r4
					r4
					r8
					r32
				}
				<<
					% performer: Cello 02, offset: 4557/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqs16. :128 [ ~ \startTrillSpan bf
							aqs32 * 99/100 :256 ]
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
							s32 \<
							s32
							s32
							s32 \mf
						}
					}
				>>
				{
					% performer: Cello 02, offset: 4561/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Cello 02, offset: 4563/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							c'8 -\accent [ ~ ~
							c'32 ~
							c'32 ]
						}
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
					% performer: Cello 02, offset: 4569/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Cello 02, offset: 4571/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							aqf'8 :64 -\accent
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
					% performer: Cello 02, offset: 4575/32, magnitude: 9/32
					r32
					r4
				}
				<<
					% performer: Cello 02, offset: 573/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							dqf8 -\accent [ ~ ~ \startTrillSpan gqf
							dqf32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							cs,16 * 99/100 :128 \startTrillSpan e,
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
					% performer: Cello 02, offset: 4591/32, magnitude: 7/32
					r32
					r8.
				}
				<<
					% performer: Cello 02, offset: 2299/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							d16 -\open [ ~ \startTrillSpan eqs
							d8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
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
				{
					% performer: Cello 02, offset: 1151/8, magnitude: 7/32
					r8
					r16.
				}
				<<
					% performer: Cello 02, offset: 4611/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							dqf'8 * 99/100 :64 -\accent \startTrillSpan dqs'
							s8 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							ef'32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							cs32
							\once \override NoteHead #'style = #'harmonic
							a,32 ] )
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
					% performer: Cello 02, offset: 4619/32, magnitude: 7/16
					r32
					r8
					r4
					r32
				}
				<<
					% performer: Cello 02, offset: 4633/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf,8 :64 [ ~ ~
							bf,32 :256 ]
							\revert NoteHead #'style
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
					% performer: Cello 02, offset: 2319/16, magnitude: 1/8
					r16
					r16
				}
				<<
					% performer: Cello 02, offset: 2321/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							b,8 * 99/100 :64 -\accent \startTrillSpan dqs
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs16 [ ~ \startTrillSpan b
							gqs16 * 99/100 ]
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
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Cello 02, offset: 2325/16, magnitude: 39/16
					r16
					r8
					R2. * 3
					\bar "|."
				}
			}
		>>
	>>
}