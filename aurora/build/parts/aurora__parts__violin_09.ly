% Abjad revision 4356
% 2011-05-15 23:27

\version "2.13.37"
\include "english.ly"
\include "/media/Work/dev/scores/abjad/cfg/abjad.scm"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 10)

\header {
	composer = #"Josiah Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	instrument = #"Violin 09"
	tagline = \markup { "" }
	title = #"mbrsi/aurora"
}

\paper {
	#(define page-breaking ly:optimal-breaking)
	between-system-spacing = #'((space . 0) (padding . 2) (stretchability . 0) (minimum-distance . 0))
	bottom-margin = 0.75\in
	bottom-system-spacing = #'((space . 0) (padding . 4) (stretchability . 0) (minimum-distance . 0))
	evenFooterMarkup = \markup { \fill-line { "violin 09 - mbrsi/aurora - josiah wolf oberholtzer" } }
	left-margin = 0.75\in
	max-systems-per-page = #8
	oddFooterMarkup = \markup { \fill-line { "josiah wolf oberholtzer - mbrsi/aurora - violin 09" } }
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
		\context StaffGroup = "Violin 09" \with {
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
					% performer: Violin 09, offset: 0, magnitude: 7/32
					\stopStaff
					r8..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 7/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 3/8, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 15/32, magnitude: 1/4
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
					% performer: Violin 09, offset: 23/32, magnitude: 5/8
					\stopStaff
					r32
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 43/32, magnitude: 7/32
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
					% performer: Violin 09, offset: 25/16, magnitude: 7/8
					\stopStaff
					r16
					r8
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 39/16, magnitude: 3/16
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 21/8, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 89/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 47/16, magnitude: 7/16
					\stopStaff
					r16
					r4.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 27/8, magnitude: 1/8
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
					% performer: Violin 09, offset: 7/2, magnitude: 29/32
					\stopStaff
					r4
					r4
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 141/32, magnitude: 1/8
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
					% performer: Violin 09, offset: 145/32, magnitude: 15/32
					\stopStaff
					r16.
					r8
					r4
					\startStaff
				}
				{
					% performer: Violin 09, offset: 5, magnitude: 1/8
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
					% performer: Violin 09, offset: 41/8, magnitude: 61/32
					\stopStaff
					r8
					R2. * 2
					r4
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 225/32, magnitude: 3/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 09, offset: 57/8, magnitude: 87/32
					\stopStaff
					r8
					r4
					R2. * 3
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 315/32, magnitude: 3/16
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
					% performer: Violin 09, offset: 321/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 325/32, magnitude: 1/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						e'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 09, offset: 327/32, magnitude: 59/32
					\stopStaff
					r32
					r4
					R2. * 2
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 193/16, magnitude: 7/32
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
						c'32
					}
				}
				{
					% performer: Violin 09, offset: 393/32, magnitude: 7/16
					\stopStaff
					r16.
					r8
					r8..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 407/32, magnitude: 3/16
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
					% performer: Violin 09, offset: 413/32, magnitude: 17/32
					\stopStaff
					r16.
					r4
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 215/16, magnitude: 1/8
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
					% performer: Violin 09, offset: 217/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 55/4, magnitude: 1/8
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
					% performer: Violin 09, offset: 111/8, magnitude: 9/8
					\stopStaff
					r8
					r4
					R2. * 1
					\startStaff
				}
				{
					% performer: Violin 09, offset: 15, magnitude: 3/16
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
					% performer: Violin 09, offset: 243/16, magnitude: 13/16
					\stopStaff
					r16
					r4
					r4
					r4
					\startStaff
				}
				{
					% performer: Violin 09, offset: 16, magnitude: 1/8
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
					% performer: Violin 09, offset: 129/8, magnitude: 31/16
					\stopStaff
					r8
					r4
					R2. * 2
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 289/16, magnitude: 25/32
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
						s32
						s32
					}
					{
						f32 \glissando
						s32
						s32
						a32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 603/32, magnitude: 1/4
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
					% performer: Violin 09, offset: 611/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 153/8, magnitude: 5/32
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
					% performer: Violin 09, offset: 617/32, magnitude: 5/16
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
						a32
					}
				}
				{
					% performer: Violin 09, offset: 627/32, magnitude: 15/32
					\stopStaff
					r32
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 321/16, magnitude: 1/4
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
					% performer: Violin 09, offset: 325/16, magnitude: 7/32
					{
						c'32 \glissando
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
					% performer: Violin 09, offset: 657/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 331/16, magnitude: 1/4
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
						f32
					}
				}
				{
					% performer: Violin 09, offset: 335/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 169/8, magnitude: 5/32
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
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 09, offset: 681/32, magnitude: 1/8
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
					% performer: Violin 09, offset: 685/32, magnitude: 1/2
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
						g'32
					}
				}
				{
					% performer: Violin 09, offset: 701/32, magnitude: 15/32
					\stopStaff
					r16.
					r4
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 179/8, magnitude: 27/32
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
						e'32
					}
				}
				{
					% performer: Violin 09, offset: 743/32, magnitude: 5/32
					\stopStaff
					r32
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 187/8, magnitude: 5/8
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
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 24, magnitude: 1/8
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
					% performer: Violin 09, offset: 193/8, magnitude: 13/32
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
						g'32 \glissando
						s32
						s32
						g'32
					}
				}
				{
					% performer: Violin 09, offset: 785/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 393/16, magnitude: 9/16
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
						g'32 \glissando \startTextSpan
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
					% performer: Violin 09, offset: 201/8, magnitude: 5/32
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
					% performer: Violin 09, offset: 809/32, magnitude: 1
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
						g'32 \glissando \startTextSpan
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
					% performer: Violin 09, offset: 841/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 843/32, magnitude: 5/8
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
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 863/32, magnitude: 9/32
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
					% performer: Violin 09, offset: 109/4, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 873/32, magnitude: 47/32
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
					}
				}
				{
					% performer: Violin 09, offset: 115/4, magnitude: 9/16
					\stopStaff
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 469/16, magnitude: 9/16
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 239/8, magnitude: 1/4
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
					% performer: Violin 09, offset: 241/8, magnitude: 11/32
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
					% performer: Violin 09, offset: 975/32, magnitude: 7/32
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
					% performer: Violin 09, offset: 491/16, magnitude: 3/4
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
						s32
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 503/16, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Violin 09, offset: 1011/32, magnitude: 11/32
					\stopStaff
					r32
					r8
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 511/16, magnitude: 3/16
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
					% performer: Violin 09, offset: 257/8, magnitude: 1/8
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
					% performer: Violin 09, offset: 129/4, magnitude: 29/32
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
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 09, offset: 1061/32, magnitude: 23/32
					\stopStaff
					r16.
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 271/8, magnitude: 39/32
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
					% performer: Violin 09, offset: 1123/32, magnitude: 5/4
					\stopStaff
					r32
					r8
					R2. * 1
					r4
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1163/32, magnitude: 3/2
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
						a32 \glissando
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
					% performer: Violin 09, offset: 1211/32, magnitude: 19/32
					\stopStaff
					r32
					r8
					r4
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 615/16, magnitude: 5/8
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
					% performer: Violin 09, offset: 625/16, magnitude: 7/32
					\stopStaff
					r16
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1257/32, magnitude: 15/16
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
						s32
						s32
						f32
					}
				}
				{
					% performer: Violin 09, offset: 1287/32, magnitude: 585/32
					\stopStaff
					r32
					r4
					R2. * 24
					\startStaff
				}
				{
					% performer: Violin 09, offset: 117/2, magnitude: 1/4
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 235/4, magnitude: 37/16
					\stopStaff
					r4
					r4
					R2. * 2
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 977/16, magnitude: 1/8
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
					% performer: Violin 09, offset: 979/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1961/32, magnitude: 7/32
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
					% performer: Violin 09, offset: 123/2, magnitude: 27/32
					\stopStaff
					R2. * 1
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1995/32, magnitude: 3/16
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
					% performer: Violin 09, offset: 2001/32, magnitude: 29/32
					\stopStaff
					r16.
					r8
					r4
					r4..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1015/16, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						e'32
					}
				}
				{
					% performer: Violin 09, offset: 2035/32, magnitude: 19/32
					\stopStaff
					r32
					r8
					r4..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1027/16, magnitude: 11/32
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
						e'32
					}
				}
				{
					% performer: Violin 09, offset: 2065/32, magnitude: 11/32
					\stopStaff
					r16.
					r8
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 519/8, magnitude: 7/8
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 263/4, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2109/32, magnitude: 27/32
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
					% performer: Violin 09, offset: 267/4, magnitude: 1/4
					\stopStaff
					r4
					\startStaff
				}
				{
					% performer: Violin 09, offset: 67, magnitude: 19/32
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
						s32
						s32
						f32
					}
				}
				{
					% performer: Violin 09, offset: 2163/32, magnitude: 33/32
					\stopStaff
					r32
					r8
					r4
					r4
					r4.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 549/8, magnitude: 35/32
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
						g'32
					}
				}
				{
					% performer: Violin 09, offset: 2231/32, magnitude: 1/4
					\stopStaff
					r32
					r8..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2239/32, magnitude: 15/16
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
					% performer: Violin 09, offset: 2269/32, magnitude: 15/32
					\stopStaff
					r16.
					r4
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 571/8, magnitude: 33/32
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
						s32
						s32
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
					% performer: Violin 09, offset: 2317/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2319/32, magnitude: 35/32
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 1177/16, magnitude: 9/32
					\stopStaff
					r16
					r8
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2363/32, magnitude: 7/32
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
					% performer: Violin 09, offset: 1185/16, magnitude: 7/32
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 2377/32, magnitude: 7/16
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 2391/32, magnitude: 3/32
					\stopStaff
					r32
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1197/16, magnitude: 5/8
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
						f32
					}
				}
				{
					% performer: Violin 09, offset: 1207/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2415/32, magnitude: 15/32
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
						e'32
					}
				}
				{
					% performer: Violin 09, offset: 1215/16, magnitude: 17/32
					\stopStaff
					r16
					r4
					r8..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2447/32, magnitude: 1/4
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
						c'32 \glissando
						e'32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 2455/32, magnitude: 11/32
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
						e'32
					}
				}
				{
					% performer: Violin 09, offset: 1233/16, magnitude: 13/32
					\stopStaff
					r16
					r8
					r8..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2479/32, magnitude: 1/4
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 2487/32, magnitude: 1/4
					\stopStaff
					r32
					r8..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2495/32, magnitude: 11/16
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
					}
					{
						e'32 \glissando
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
					% performer: Violin 09, offset: 2517/32, magnitude: 3/16
					\stopStaff
					r16.
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2523/32, magnitude: 3/16
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 2529/32, magnitude: 3/16
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
					% performer: Violin 09, offset: 2535/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 317/4, magnitude: 1/8
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
					% performer: Violin 09, offset: 635/8, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1271/16, magnitude: 3/16
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
					% performer: Violin 09, offset: 637/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2549/32, magnitude: 1/8
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
					% performer: Violin 09, offset: 2553/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2555/32, magnitude: 3/16
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
						f32
					}
				}
				{
					% performer: Violin 09, offset: 2561/32, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2563/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 321/4, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2571/32, magnitude: 7/32
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 1289/16, magnitude: 3/16
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
					% performer: Violin 09, offset: 323/4, magnitude: 5/8
					\stopStaff
					r4
					r4.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 651/8, magnitude: 5/32
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
					% performer: Violin 09, offset: 2609/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 1307/16, magnitude: 5/32
					\stopStaff
					r16
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2619/32, magnitude: 7/32
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
					% performer: Violin 09, offset: 1313/16, magnitude: 3/16
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
					}
				}
				{
					% performer: Violin 09, offset: 329/4, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 659/8, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						e'32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 165/2, magnitude: 1/8
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
					% performer: Violin 09, offset: 661/8, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 331/4, magnitude: 7/32
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 2655/32, magnitude: 47/32
					\stopStaff
					r32
					r4
					R2. * 1
					r4..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1351/16, magnitude: 1/4
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
					% performer: Violin 09, offset: 1355/16, magnitude: 1/8
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
					% performer: Violin 09, offset: 1357/16, magnitude: 1/8
					\stopStaff
					r16
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1359/16, magnitude: 3/16
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
					% performer: Violin 09, offset: 681/8, magnitude: 13/32
					\stopStaff
					r8
					r4
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2737/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 09, offset: 1371/16, magnitude: 5/32
					\stopStaff
					r16
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2747/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 86, magnitude: 1/4
					\stopStaff
					r4
					\startStaff
				}
				{
					% performer: Violin 09, offset: 345/4, magnitude: 7/32
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
					% performer: Violin 09, offset: 2767/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 173/2, magnitude: 7/32
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
					% performer: Violin 09, offset: 2775/32, magnitude: 1/8
					\stopStaff
					r32
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2779/32, magnitude: 1/8
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
					% performer: Violin 09, offset: 2783/32, magnitude: 7/32
					\stopStaff
					r32
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1395/16, magnitude: 5/32
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
					% performer: Violin 09, offset: 2795/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 699/8, magnitude: 1/8
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
					% performer: Violin 09, offset: 175/2, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2803/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						e'32
					}
				}
				{
					% performer: Violin 09, offset: 351/4, magnitude: 9/32
					\stopStaff
					r4
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2817/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 1411/16, magnitude: 7/32
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 2829/32, magnitude: 1/8
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
					% performer: Violin 09, offset: 2833/32, magnitude: 7/32
					\stopStaff
					r16.
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 355/4, magnitude: 5/32
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
					% performer: Violin 09, offset: 2845/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1423/16, magnitude: 3/16
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
					% performer: Violin 09, offset: 713/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2853/32, magnitude: 3/16
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 2859/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2865/32, magnitude: 1/4
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
					% performer: Violin 09, offset: 2873/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2877/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Violin 09, offset: 1441/16, magnitude: 5/16
					\stopStaff
					r16
					r8
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 723/8, magnitude: 7/32
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
					% performer: Violin 09, offset: 2899/32, magnitude: 9/32
					\stopStaff
					r32
					r8
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 727/8, magnitude: 1/8
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
					% performer: Violin 09, offset: 91, magnitude: 13/32
					\stopStaff
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2925/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Violin 09, offset: 1465/16, magnitude: 11/16
					\stopStaff
					r16
					r8
					r4
					r4
					\startStaff
				}
				{
					% performer: Violin 09, offset: 369/4, magnitude: 5/32
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
					% performer: Violin 09, offset: 2957/32, magnitude: 5/32
					\stopStaff
					r16.
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1481/16, magnitude: 3/16
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
					% performer: Violin 09, offset: 371/4, magnitude: 7/32
					\stopStaff
					r8..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2975/32, magnitude: 3/16
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
					% performer: Violin 09, offset: 2981/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2985/32, magnitude: 7/32
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
					% performer: Violin 09, offset: 187/2, magnitude: 3/16
					\stopStaff
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1499/16, magnitude: 11/32
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 3009/32, magnitude: 11/32
					\stopStaff
					r16.
					r8
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 755/8, magnitude: 7/32
					{
						c'32 \glissando
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
					% performer: Violin 09, offset: 3027/32, magnitude: 1/8
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
					% performer: Violin 09, offset: 3031/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 379/4, magnitude: 1/8
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
					% performer: Violin 09, offset: 759/8, magnitude: 15/32
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
						s32
					}
					{
						f32 \glissando
						s32
						s32
						f32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 3051/32, magnitude: 9/32
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
					% performer: Violin 09, offset: 765/8, magnitude: 21/32
					\stopStaff
					r8
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 3081/32, magnitude: 19/32
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
					% performer: Violin 09, offset: 775/8, magnitude: 21/16
					\stopStaff
					r8
					r4
					r4
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1571/16, magnitude: 1/8
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
					% performer: Violin 09, offset: 1573/16, magnitude: 1/4
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
					% performer: Violin 09, offset: 1577/16, magnitude: 7/16
					{
						c'32 \glissando
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
					}
					{
						f32 \glissando
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 09, offset: 99, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1585/16, magnitude: 21/32
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
					}
				}
				{
					% performer: Violin 09, offset: 3191/32, magnitude: 13/32
					\stopStaff
					r32
					r4.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 801/8, magnitude: 15/32
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
					% performer: Violin 09, offset: 3219/32, magnitude: 9/32
					\stopStaff
					r32
					r8
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 807/8, magnitude: 1/2
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
					}
					{
						f32 \glissando
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
					% performer: Violin 09, offset: 811/8, magnitude: 1/4
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 813/8, magnitude: 7/16
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
						c'32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 1633/16, magnitude: 35/32
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
						s32
						c'32
					}
				}
				{
					% performer: Violin 09, offset: 3301/32, magnitude: 11/32
					\stopStaff
					r16.
					r4
					\startStaff
				}
				{
					% performer: Violin 09, offset: 207/2, magnitude: 7/16
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
					% performer: Violin 09, offset: 1663/16, magnitude: 15/32
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
						e'32 \glissando
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
					% performer: Violin 09, offset: 3341/32, magnitude: 1/4
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
					% performer: Violin 09, offset: 3349/32, magnitude: 23/32
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
					}
					{
						f32 \glissando
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
					% performer: Violin 09, offset: 843/8, magnitude: 7/32
					\stopStaff
					r8
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 3379/32, magnitude: 3/16
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
					% performer: Violin 09, offset: 3385/32, magnitude: 19/16
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
						\override Glissando #'style = #'zigzag
						c'32 \glissando
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
					% performer: Violin 09, offset: 3423/32, magnitude: 31/32
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
					% performer: Violin 09, offset: 1727/16, magnitude: 5/32
					\stopStaff
					r16
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 3459/32, magnitude: 13/32
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
					% performer: Violin 09, offset: 217/2, magnitude: 43/32
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
					% performer: Violin 09, offset: 3515/32, magnitude: 1/16
					\stopStaff
					r32
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 3517/32, magnitude: 1/2
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
					% performer: Violin 09, offset: 3533/32, magnitude: 19/16
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
						\revert Glissando #'style
					}
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
						c'32
					}
				}
				{
					% performer: Violin 09, offset: 3571/32, magnitude: 9/32
					\stopStaff
					r32
					r8
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 895/8, magnitude: 19/16
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
						a32 \glissando
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 1809/16, magnitude: 27/32
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
					% performer: Violin 09, offset: 3645/32, magnitude: 47/32
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 923/8, magnitude: 7/8
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
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 09, offset: 465/4, magnitude: 1/8
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
					% performer: Violin 09, offset: 931/8, magnitude: 3/8
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
					% performer: Violin 09, offset: 467/4, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 3739/32, magnitude: 29/32
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 471/4, magnitude: 7/32
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
					% performer: Violin 09, offset: 3775/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 3781/32, magnitude: 11/16
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
						f32
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 3803/32, magnitude: 41/32
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
					% performer: Violin 09, offset: 961/8, magnitude: 5/32
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
					% performer: Violin 09, offset: 3849/32, magnitude: 29/32
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
					% performer: Violin 09, offset: 1939/16, magnitude: 1/4
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
					% performer: Violin 09, offset: 1943/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 3887/32, magnitude: 7/8
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
						s32
						c'32
					}
				}
				{
					% performer: Violin 09, offset: 3915/32, magnitude: 17/32
					\stopStaff
					r32
					r8
					r4
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 983/8, magnitude: 1/4
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
					% performer: Violin 09, offset: 985/8, magnitude: 5/8
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
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 09, offset: 495/4, magnitude: 1/8
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
					% performer: Violin 09, offset: 991/8, magnitude: 1/8
					\stopStaff
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 124, magnitude: 1/8
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
					% performer: Violin 09, offset: 993/8, magnitude: 7/16
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
					% performer: Violin 09, offset: 1993/16, magnitude: 3/16
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 499/4, magnitude: 1/2
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
					% performer: Violin 09, offset: 501/4, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2005/16, magnitude: 1/8
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
					% performer: Violin 09, offset: 2007/16, magnitude: 7/16
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
					% performer: Violin 09, offset: 1007/8, magnitude: 1/8
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
					% performer: Violin 09, offset: 126, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4033/32, magnitude: 13/32
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
					% performer: Violin 09, offset: 2023/16, magnitude: 3/8
					\stopStaff
					r16
					r4
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2029/16, magnitude: 3/16
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
					% performer: Violin 09, offset: 127, magnitude: 1/8
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
					% performer: Violin 09, offset: 1017/8, magnitude: 5/8
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
					}
				}
				{
					% performer: Violin 09, offset: 511/4, magnitude: 1/4
					\stopStaff
					r4
					\startStaff
				}
				{
					% performer: Violin 09, offset: 128, magnitude: 21/32
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
					% performer: Violin 09, offset: 4117/32, magnitude: 131/32
					\stopStaff
					r16.
					r4
					R2. * 5
					\startStaff
				}
				{
					% performer: Violin 09, offset: 531/4, magnitude: 7/32
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
					% performer: Violin 09, offset: 4255/32, magnitude: 7/32
					\stopStaff
					r32
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2131/16, magnitude: 9/32
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
						f32
					}
				}
				{
					% performer: Violin 09, offset: 4271/32, magnitude: 31/16
					\stopStaff
					r32
					R2. * 2
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4333/32, magnitude: 9/32
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
						s32
						e'32
					}
				}
				{
					% performer: Violin 09, offset: 2171/16, magnitude: 1/4
					\stopStaff
					r16
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2175/16, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Violin 09, offset: 2177/16, magnitude: 5/16
					\stopStaff
					r16
					r8
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1091/8, magnitude: 3/16
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
					}
				}
				{
					% performer: Violin 09, offset: 2185/16, magnitude: 3/8
					\stopStaff
					r16
					r8
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2191/16, magnitude: 1/8
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 09, offset: 2193/16, magnitude: 1/4
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
					}
				}
				{
					% performer: Violin 09, offset: 2197/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4397/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 2201/16, magnitude: 11/32
					\stopStaff
					r16
					r8
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4413/32, magnitude: 5/32
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 2209/16, magnitude: 3/16
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
					% performer: Violin 09, offset: 553/4, magnitude: 1/4
					\stopStaff
					r4
					\startStaff
				}
				{
					% performer: Violin 09, offset: 277/2, magnitude: 5/32
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 4437/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 2221/16, magnitude: 3/8
					\stopStaff
					r16
					r8
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2227/16, magnitude: 7/32
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
					% performer: Violin 09, offset: 4461/32, magnitude: 25/32
					\stopStaff
					r16.
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2243/16, magnitude: 9/32
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
						f32
					}
				}
				{
					% performer: Violin 09, offset: 4495/32, magnitude: 7/16
					\stopStaff
					r32
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4509/32, magnitude: 5/32
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
					% performer: Violin 09, offset: 2257/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4517/32, magnitude: 3/16
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
					% performer: Violin 09, offset: 4523/32, magnitude: 9/32
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
					% performer: Violin 09, offset: 1133/8, magnitude: 1/2
					\stopStaff
					r8
					r4.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 1137/8, magnitude: 1/4
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
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Violin 09, offset: 1139/8, magnitude: 11/32
					\stopStaff
					r8
					r8..
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4567/32, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						c'32
					}
				}
				{
					% performer: Violin 09, offset: 4571/32, magnitude: 7/32
					\stopStaff
					r32
					r8
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2289/16, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 09, offset: 4583/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4589/32, magnitude: 5/32
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 09, offset: 2297/16, magnitude: 1/8
					\stopStaff
					r16
					r16
					\startStaff
				}
				{
					% performer: Violin 09, offset: 2299/16, magnitude: 1/4
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
					% performer: Violin 09, offset: 2303/16, magnitude: 9/16
					\stopStaff
					r16
					r2
					\startStaff
				}
				{
					% performer: Violin 09, offset: 289/2, magnitude: 3/16
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
						\breathe
					}
				}
				{
					% performer: Violin 09, offset: 2315/16, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Violin 09, offset: 4635/32, magnitude: 5/32
					\stopStaff
					r32
					r8
					\startStaff
				}
				{
					% performer: Violin 09, offset: 145, magnitude: 1/8
					{
						\override Glissando #'style = #'zigzag
						c'32 \glissando
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Violin 09, offset: 1161/8, magnitude: 1/8
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
					% performer: Violin 09, offset: 581/4, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Violin 09, offset: 4651/32, magnitude: 7/32
					{
						\override Glissando #'style = #'zigzag
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
					% performer: Violin 09, offset: 2329/16, magnitude: 35/16
					\stopStaff
					r16
					r8
					r4
					r4
					R2. * 2
					\startStaff
				}
			}
			\new Staff \with {
				\remove Instrument_name_engraver
				\override Glissando #'zigzag-length = #1
				\override Glissando #'zigzag-width = #2
				instrumentName = #"Violin 09"
				shortInstrumentName = #"Violin 09"
			} {
				\clef "treble"
				\time 3/4
				\tempo 4 = 66
				\compressFullBarRests
				\mergeDifferentlyDottedOn
				\mergeDifferentlyHeadedOn
				{
					% performer: Violin 09, offset: 0, magnitude: 7/32
					r8..
				}
				<<
					% performer: Violin 09, offset: 7/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a32 [ ~ \startTrillSpan bqs
							a8 * 99/100 ]
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
							s32 \fppp \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 3/8, magnitude: 3/32
					r16.
				}
				<<
					% performer: Violin 09, offset: 15/32, magnitude: 1/4
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
								dqs'32 [ (
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
								dqs'32 \glissando
								s32
								bqs'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 [
								r32
								dqf'32 ]
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
								aqf32 \glissando
								s32
								dqf'32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqf'16 * 99/100 :128 \startTrillSpan bqs'
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
						}
						{
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
					% performer: Violin 09, offset: 23/32, magnitude: 5/8
					r32
					r4
					r4
					r16.
				}
				<<
					% performer: Violin 09, offset: 43/32, magnitude: 7/32
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
								ef'32 \glissando
								s32
								s32
								s32
								cs''32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqf'16 * 99/100 :128 \startTrillSpan dqf''
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
					% performer: Violin 09, offset: 25/16, magnitude: 7/8
					r16
					r8
					r4
					r4
					r8.
				}
				<<
					% performer: Violin 09, offset: 39/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bqs'16 [ ~ \startTrillSpan c''
							bqs'16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							dqs''16 * 99/100 :128 \startTrillSpan fs''
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
					% performer: Violin 09, offset: 21/8, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 89/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef'''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato ] )
							\slurSolid
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
					% performer: Violin 09, offset: 47/16, magnitude: 7/16
					r16
					r4.
				}
				<<
					% performer: Violin 09, offset: 27/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g'8 * 99/100 \startTrillSpan d''
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
				{
					% performer: Violin 09, offset: 7/2, magnitude: 29/32
					r4
					r4
					r4
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 141/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g'16. [ ~ \startTrillSpan b'
							g'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 145/32, magnitude: 15/32
					r16.
					r8
					r4
				}
				<<
					% performer: Violin 09, offset: 5, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							aqf8 * 99/100 \startTrillSpan cs'
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
				{
					% performer: Violin 09, offset: 41/8, magnitude: 61/32
					r8
					R2. * 2
					r4
					r32
				}
				<<
					% performer: Violin 09, offset: 225/32, magnitude: 3/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							eqs'16. * 99/100 \startTrillSpan bqf'
							s16. * 1/100 \stopTrillSpan
						}
					}
					\context Voice = "span" \with {
						\override Hairpin #'circled-tip = ##t
					} {
						{
							s32 \fppp \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 57/8, magnitude: 87/32
					r8
					r4
					R2. * 3
					r16.
				}
				<<
					% performer: Violin 09, offset: 315/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\once \override NoteHead #'style = #'harmonic
							af32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
							s32
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 321/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Violin 09, offset: 325/32, magnitude: 1/16
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
								c''32 [ (
								eqs''32 ] )
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
								eqs''32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \p
							s32
						}
					}
				>>
				{
					% performer: Violin 09, offset: 327/32, magnitude: 59/32
					r32
					r4
					R2. * 2
					r16
				}
				<<
					% performer: Violin 09, offset: 193/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							dqs'16. * 99/100 \startTrillSpan g'
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							dqs'16. :128 [ ~ \startTrillSpan fs'
							dqs'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 393/32, magnitude: 7/16
					r16.
					r8
					r8..
				}
				<<
					% performer: Violin 09, offset: 407/32, magnitude: 3/16
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
								eqf'32 [ (
								r32
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
								eqf'32 \glissando
								s32
								s32
								s32
								s32
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
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 413/32, magnitude: 17/32
					r16.
					r4
					r8.
				}
				<<
					% performer: Violin 09, offset: 215/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs'16 [ ~ \startTrillSpan fs'
							eqs'16 * 99/100 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 217/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Violin 09, offset: 55/4, magnitude: 1/8
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
								dqf''32 ] )
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
								dqf''32
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
					% performer: Violin 09, offset: 111/8, magnitude: 9/8
					r8
					r4
					R2. * 1
				}
				<<
					% performer: Violin 09, offset: 15, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fs''8. * 99/100 -\accent \startTrillSpan gqs''
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
					% performer: Violin 09, offset: 243/16, magnitude: 13/16
					r16
					r4
					r4
					r4
				}
				<<
					% performer: Violin 09, offset: 16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							c'''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							cs'32 ] )
						}
						\revert TextScript #'staff-padding
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
					% performer: Violin 09, offset: 129/8, magnitude: 31/16
					r8
					r4
					R2. * 2
					r16
				}
				<<
					% performer: Violin 09, offset: 289/16, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs''8. :64 [ ~
							gqs''32 :256 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							fqs''8.. * 99/100 \startTrillSpan aqf''
							s8.. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							eqf''8.. * 99/100 :64 \startTrillSpan a''
							s8.. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fqs'32 [ ~ \startTrillSpan bf'
							fqs'16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
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
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 603/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							d'''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\open -\staccato
							bf'32 -\staccato
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
								bf32 -\snappizzicato ^ \markup { \italic Pizz. } [
								r32
								r32
								bqf32 ]
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
								s32
								s32
								bqf32
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
					% performer: Violin 09, offset: 611/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 153/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							d'32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							b'32 -\staccato
							a'32 -\open -\staccato
							e''32 -\open -\staccato ] )
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 617/32, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							af8.
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqs'32 [ ~ \startTrillSpan dqf''
							gqs'16. * 99/100 ]
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
					% performer: Violin 09, offset: 627/32, magnitude: 15/32
					r32
					r8
					r4
					r16
				}
				<<
					% performer: Violin 09, offset: 321/16, magnitude: 1/4
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
								eqs'32 ]
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
								b32 ^ \markup { \italic Pizz. } [
								r32
								r32
								bqf32 ]
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
								s32
								bqf32
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
					% performer: Violin 09, offset: 325/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a'8. :64 [ ~ \startTrillSpan bqf'
							a'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 657/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cs'''32 -\accent [
								r32
								r32
								r32
								dqf'''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cs'''32 \glissando
								s32
								s32
								s32
								dqf'''32
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
					% performer: Violin 09, offset: 331/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf''16 [ ~
							dqf''16 ]
							\revert NoteHead #'style
						}
						\override TextScript #'staff-padding = #6
						{
							ef'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							b'32
							af''32
							ef'''32 ] )
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
							s32 \mp \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 335/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Violin 09, offset: 169/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							a''8 [ ~
							a''32 ]
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
					% performer: Violin 09, offset: 681/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							bf''32 -\accent ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\open
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							cs'32 ] )
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
					% performer: Violin 09, offset: 685/32, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							ef''16. :128 [ ~
							ef''32 :256 ]
						}
						{
							\pitchedTrill
							e''8 * 99/100 \startTrillSpan gqf''
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a'16. [ ~ \startTrillSpan aqs'
							a'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							cs''8 * 99/100 \startTrillSpan dqs''
							s8 * 1/100 \stopTrillSpan
						}
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
				{
					% performer: Violin 09, offset: 701/32, magnitude: 15/32
					r16.
					r4
					r8
				}
				<<
					% performer: Violin 09, offset: 179/8, magnitude: 27/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							cs'''8 :64 [ ~
							cs'''32 :256 ]
						}
						{
							\pitchedTrill
							e''8 [ ~ ~ \startTrillSpan eqs''
							e''32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							bqf''16 [ ~ \startTrillSpan dqf'''
							bqf''16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							cqs''8 [ ~ ~ \startTrillSpan fqs''
							cqs''32 ~
							cqs''16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							ef'''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 743/32, magnitude: 5/32
					r32
					r8
				}
				<<
					% performer: Violin 09, offset: 187/8, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf8 :64 [ ~
							bqf8 :64 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqf'8 * 99/100 :64 \startTrillSpan bf'
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							bf8 * 99/100 \startTrillSpan bqf
							s8 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							ef'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							e''32 -\open ] )
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 24, magnitude: 1/8
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
								cqs''32 -\accent [ (
								r32
								r32
								f''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cqs''32 \glissando
								s32
								s32
								f''32
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
					% performer: Violin 09, offset: 193/8, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf''8 [ ~
							gqf''32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							gqf''8 * 99/100 :64 \startTrillSpan bqs''
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							b''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\open
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
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
						}
						{
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
					% performer: Violin 09, offset: 785/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 393/16, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							eqs'8. :64 [ ~
							eqs'16 :128 ]
						}
						{
							\pitchedTrill
							aqs'8. * 99/100 \startTrillSpan c''
							s8. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf'8 * 99/100 \startTrillSpan eqs'
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
					% performer: Violin 09, offset: 201/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs''8 [ ~
							gqs''32 ]
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
					% performer: Violin 09, offset: 809/32, magnitude: 1
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							d'8. * 99/100 -\open \startTrillSpan dqs'
							s8. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf'32 :256 ] ~ \startTrillSpan bqs'
							bf'4 :32 ~
							bf'32 * 99/100 :256
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
							b'8.. [ ~ \startTrillSpan bqs'
							b'8 ~ ~
							b'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							d'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							a'32
							f''32
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
					% performer: Violin 09, offset: 841/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 09, offset: 843/32, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							aqs''8 :64 [ ~ ~
							aqs''32 :256 ~
							aqs''8.. :64 ]
						}
						{
							\pitchedTrill
							cqs''32 [ ~ \startTrillSpan eqf''
							cqs''16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							dqs''8 * 99/100 \startTrillSpan aqf''
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
							s32 \p \>
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
					% performer: Violin 09, offset: 863/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf''32 ] ~
							aqf''4
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
					% performer: Violin 09, offset: 109/4, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 873/32, magnitude: 47/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							a'8.. -\open [ ~
							a'16 ]
						}
						{
							\once \override NoteHead #'style = #'harmonic
							f''32 [ (
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							dqs''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							e'''32 [ (
							\once \override NoteHead #'style = #'harmonic
							ef'''32
							\once \override NoteHead #'style = #'harmonic
							dqf'''32
							\once \override NoteHead #'style = #'harmonic
							d'''32
							\once \override NoteHead #'style = #'harmonic
							dqf'''32
							\once \override NoteHead #'style = #'harmonic
							c'''32
							\once \override NoteHead #'style = #'harmonic
							bqf''32
							\once \override NoteHead #'style = #'harmonic
							c'''32
							\once \override NoteHead #'style = #'harmonic
							bqf''32
							\once \override NoteHead #'style = #'harmonic
							bqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							eqf'''8. :64 ] ~
							eqf'''4 :32
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
				{
					% performer: Violin 09, offset: 115/4, magnitude: 9/16
					r4
					r4
					r16
				}
				<<
					% performer: Violin 09, offset: 469/16, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''8. [ ~
							cqs''8 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							gqs'8 :64 [ ~
							gqs'8 :64 ]
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 239/8, magnitude: 1/4
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
								e''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs''32 \glissando
								s32
								s32
								e''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf''32 ^ \markup { \italic Pizz. } [
								r32
								r32
								fqs''32 ]
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
								aqf''32 \glissando
								s32
								s32
								fqs''32
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
					% performer: Violin 09, offset: 241/8, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf'8 [ ~
							aqf'8.. ]
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
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 975/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqs'32 [
								r32
								r32
								r32
								r32
								r32
								a''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs'32 \glissando
								s32
								s32
								s32
								s32
								s32
								a''32
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
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 491/16, magnitude: 3/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf16 [ ~
							bqf8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bf32 :256 ] ~
							bf4 :32 ~
							bf8. :64
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
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 503/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								b''32 [
								r32
								r32
								r32
								e'''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b''32 \glissando
								s32
								s32
								s32
								e'''32
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
					% performer: Violin 09, offset: 1011/32, magnitude: 11/32
					r32
					r8
					r8.
				}
				<<
					% performer: Violin 09, offset: 511/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g'16 [ ~
							g'8 ]
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 257/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							bf''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d''32 -\staccato
							g'32 -\staccato
							c'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
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
					% performer: Violin 09, offset: 129/4, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c'4..
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqf16 :128 ] ~
							aqf4 :32 ~
							aqf8 :64 [ ~ ~
							aqf32 :256 ]
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
					% performer: Violin 09, offset: 1061/32, magnitude: 23/32
					r16.
					r4
					r4
					r8
				}
				<<
					% performer: Violin 09, offset: 271/8, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c'8 [ ~
							c'8.. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							cqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							cqs''16 :128 ] ~
							cqs''4 :32 ~
							cqs''16. :128
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
					% performer: Violin 09, offset: 1123/32, magnitude: 5/4
					r32
					r8
					R2. * 1
					r4
					r16.
				}
				<<
					% performer: Violin 09, offset: 1163/32, magnitude: 3/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e'8 [ ~ ~
							e'32 ~
							e'16. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32 ] )
						}
						{
							g32 -\open [ (
							\once \override NoteHead #'style = #'harmonic
							aqf32
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							gqs32
							g32 -\open
							\once \override NoteHead #'style = #'harmonic
							gqs32
							\once \override NoteHead #'style = #'harmonic
							a32
							g32 -\open ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqf''32 [ (
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							bqf'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							fs'8 :64 [ ~ ~
							fs'32 :256 ~
							fs'16. :128 ]
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
					% performer: Violin 09, offset: 1211/32, magnitude: 19/32
					r32
					r8
					r4
					r8.
				}
				<<
					% performer: Violin 09, offset: 615/16, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b'16 ] ~
							b'4
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							ef'4 ~
							ef'16
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
					% performer: Violin 09, offset: 625/16, magnitude: 7/32
					r16
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 1257/32, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cs''8.. ] ~
							cs''4
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							ef'4... :32
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
					% performer: Violin 09, offset: 1287/32, magnitude: 585/32
					r32
					r4
					R2. * 24
				}
				<<
					% performer: Violin 09, offset: 117/2, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqf8. * 99/100 -\accent \startTrillSpan d'
							s8. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							b16 * 99/100 :128 \startTrillSpan eqf'
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
					% performer: Violin 09, offset: 235/4, magnitude: 37/16
					r4
					r4
					R2. * 2
					r4
					r16
				}
				<<
					% performer: Violin 09, offset: 977/16, magnitude: 1/8
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
								a'32 -\accent [ (
								r32
								r32
								d''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								a'32 \glissando
								s32
								s32
								d''32
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
					% performer: Violin 09, offset: 979/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Violin 09, offset: 1961/32, magnitude: 7/32
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
								r32
								r32
								a'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								d''32 \glissando
								s32
								s32
								s32
								s32
								s32
								a'32
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
					% performer: Violin 09, offset: 123/2, magnitude: 27/32
					R2. * 1
					r16.
				}
				<<
					% performer: Violin 09, offset: 1995/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							g32 -\accent -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							af'32
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
					% performer: Violin 09, offset: 2001/32, magnitude: 29/32
					r16.
					r8
					r4
					r4..
				}
				<<
					% performer: Violin 09, offset: 1015/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							b''32 -\accent ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							cs''32
							fs'32
							b32 ] )
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
					% performer: Violin 09, offset: 2035/32, magnitude: 19/32
					r32
					r8
					r4..
				}
				<<
					% performer: Violin 09, offset: 1027/16, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							b''16 ] ~
							b''4 ~
							b''32
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
							s32 \mp \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2065/32, magnitude: 11/32
					r16.
					r8
					r8
				}
				<<
					% performer: Violin 09, offset: 519/8, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							e''8 -\open ] ~
							e''4
						}
						{
							bqf'32 [ (
							aqs'32
							b'32
							bf'32
							c''32
							dqf''32
							ef''32
							dqs''32 ] )
						}
						{
							cqs''4 :32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 263/4, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 2109/32, magnitude: 27/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							gqs'16. ] ~
							gqs'4 ~
							gqs'16
						}
						{
							f'8. ] ~
							f'4
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
					% performer: Violin 09, offset: 267/4, magnitude: 1/4
					r4
				}
				<<
					% performer: Violin 09, offset: 67, magnitude: 19/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqs4 ~
							bqs32
							\revert NoteHead #'style
						}
						{
							b'8.. :64 [ ~
							b'16. :128 ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2163/32, magnitude: 33/32
					r32
					r8
					r4
					r4
					r4.
				}
				<<
					% performer: Violin 09, offset: 549/8, magnitude: 35/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							cqs''8 ] ~
							cqs''4 ~
							cqs''16
						}
						{
							bqs'32 [ (
							b'32
							bqf'32
							bf'32
							b'32
							c''32
							bqf'32
							cqs''32
							bqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							gqf'8 :64 [ ~ ~
							gqf'32 :256 ~
							gqf'8.. :64 ]
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
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2231/32, magnitude: 1/4
					r32
					r8..
				}
				<<
					% performer: Violin 09, offset: 2239/32, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bf'32 ] ~
							bf'4 ~
							bf'32
						}
						{
							\once \override NoteHead #'style = #'harmonic
							d'''32 [ (
							\once \override NoteHead #'style = #'harmonic
							cs'''32
							\once \override NoteHead #'style = #'harmonic
							dqs'''32
							\once \override NoteHead #'style = #'harmonic
							d'''32
							\once \override NoteHead #'style = #'harmonic
							dqf'''32
							\once \override NoteHead #'style = #'harmonic
							c'''32
							\once \override NoteHead #'style = #'harmonic
							b''32
							\once \override NoteHead #'style = #'harmonic
							a''32
							\once \override NoteHead #'style = #'harmonic
							af''32 ] )
						}
						{
							f''8. [ ~
							f''8 ~ ~
							f''32 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2269/32, magnitude: 15/32
					r16.
					r4
					r8
				}
				<<
					% performer: Violin 09, offset: 571/8, magnitude: 33/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bqf'8 [ ~
							bqf'8 ~ ~
							bqf'32 ]
						}
						{
							\once \override NoteHead #'style = #'harmonic
							f''32 [ (
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							e''32 -\open
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32 ] )
						}
						{
							gqs''8.. [ ~
							gqs''8 ~ ~
							gqs''32 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2317/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 09, offset: 2319/32, magnitude: 35/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							gqs''32 ] ~
							gqs''4 ~
							gqs''16
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							af''32
							\once \override NoteHead #'style = #'harmonic
							a''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs''8 :64 [ ~ ~
							fqs''32 :256 ] ~
							fqs''4 :32 ~
							fqs''16 :128
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
					% performer: Violin 09, offset: 1177/16, magnitude: 9/32
					r16
					r8
					r16.
				}
				<<
					% performer: Violin 09, offset: 2363/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d''8 [ ~ ~
							d''32 ~
							d''16 ]
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
					% performer: Violin 09, offset: 1185/16, magnitude: 7/32
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
								dqs'''32 ] )
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
								gqs''32 \glissando
								s32
								s32
								s32
								dqs'''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf''32 :256 [
								e'''32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf''32 \glissando
								e'''32
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 2377/32, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf'8.. [ ~
							bf'8.. ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2391/32, magnitude: 3/32
					r32
					r16
				}
				<<
					% performer: Violin 09, offset: 1197/16, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							gqf''8. [ ~
							gqf''16 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							af''8. :64 [ ~
							af''8. :64 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 1207/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 2415/32, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							bqs'32 ] ~
							bqs'4 ~
							bqs'8.
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
					% performer: Violin 09, offset: 1215/16, magnitude: 17/32
					r16
					r4
					r8..
				}
				<<
					% performer: Violin 09, offset: 2447/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							af''32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							gqf''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af''32 -\staccato ] )
							\slurSolid
						}
						{
							fqs'32 [ (
							eqs'32
							dqs'32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								f'32 :256 [
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
								f'32 \glissando
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
						}
						{
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
					% performer: Violin 09, offset: 2455/32, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g''32 ] ~
							g''4 ~
							g''16
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
							s32 \mp \>
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 1233/16, magnitude: 13/32
					r16
					r8
					r8..
				}
				<<
					% performer: Violin 09, offset: 2479/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs''32 [ ~
							fs''8.. ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2487/32, magnitude: 1/4
					r32
					r8..
				}
				<<
					% performer: Violin 09, offset: 2495/32, magnitude: 11/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a'32 ] ~
							a'4 ~
							a'8 [ ~ ~
							a'32 ]
							\revert NoteHead #'style
						}
						{
							af16. :128 [ ~
							af8 :64 ~ ~
							af32 :256 ]
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
					% performer: Violin 09, offset: 2517/32, magnitude: 3/16
					r16.
					r16.
				}
				<<
					% performer: Violin 09, offset: 2523/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							bf'32 -\staccato [ (
							aqf'32 -\staccato
							bqf'32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqf'32 :256 [
								r32
								gqf''32 :256 ]
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
								gqf''32
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
					% performer: Violin 09, offset: 2529/32, magnitude: 3/16
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
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								ef'32 \glissando
								s32
								s32
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
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2535/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 317/4, magnitude: 1/8
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
								r32
								e'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cqs''32 \glissando
								s32
								s32
								e'32
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
					% performer: Violin 09, offset: 635/8, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 09, offset: 1271/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqs'32 [
								r32
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
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqs'32 \glissando
								s32
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
					% performer: Violin 09, offset: 637/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 2549/32, magnitude: 1/8
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
								e''32 [ (
								r32
								r32
								bqf'32 ] )
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
								e''32 \glissando
								s32
								s32
								bqf'32
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
					% performer: Violin 09, offset: 2553/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 09, offset: 2555/32, magnitude: 3/16
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
								ef''32 ] )
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
								ef''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqs'32 :256 [
								r32
								ef'32 :256 ]
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
								aqs'32 \glissando
								s32
								ef'32
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
					% performer: Violin 09, offset: 2561/32, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 09, offset: 2563/32, magnitude: 5/32
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
								r32
								f'32 ] )
								\slurSolid
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
					% performer: Violin 09, offset: 321/4, magnitude: 3/32
					r16.
				}
				<<
					% performer: Violin 09, offset: 2571/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							eqf'32 -\staccato [ (
							fqs'32 -\staccato
							fs'32 -\staccato
							gqf'32 -\staccato
							f'32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								b32 :256 [
								e'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b32 \glissando
								e'32
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
					% performer: Violin 09, offset: 1289/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							dqs'32 -\staccato [ (
							d'32 -\open -\staccato
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
								aqf'32 :256 [
								r32
								cqs''32 :256 ]
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
								aqf'32 \glissando
								s32
								cqs''32
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
					% performer: Violin 09, offset: 323/4, magnitude: 5/8
					r4
					r4.
				}
				<<
					% performer: Violin 09, offset: 651/8, magnitude: 5/32
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
								cs''32 ] )
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
								cs''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cqs''32 :256 [
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
								cqs''32 \glissando
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
				<<
					% performer: Violin 09, offset: 2609/32, magnitude: 5/32
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
								cs'32 ]
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
								cs'32
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
					% performer: Violin 09, offset: 1307/16, magnitude: 5/32
					r16
					r16.
				}
				<<
					% performer: Violin 09, offset: 2619/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							g32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							af''32
							e''32 -\open ] )
						}
						\revert TextScript #'staff-padding
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
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 1313/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\once \override NoteHead #'style = #'harmonic
							b''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e''32
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
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \f \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 329/4, magnitude: 1/8
					r8
				}
				<<
					% performer: Violin 09, offset: 659/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							af32 -\accent ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							e'32
							b'32
							af''32 ] )
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
					% performer: Violin 09, offset: 165/2, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							cs''8 * 99/100 -\accent \startTrillSpan f''
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
					% performer: Violin 09, offset: 661/8, magnitude: 1/8
					r8
				}
				<<
					% performer: Violin 09, offset: 331/4, magnitude: 7/32
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
								bqf'32 ] )
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
								aqf''32 :256 [
								r32
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
								aqf''32 \glissando
								s32
								cs''32
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
				{
					% performer: Violin 09, offset: 2655/32, magnitude: 47/32
					r32
					r4
					R2. * 1
					r4..
				}
				<<
					% performer: Violin 09, offset: 1351/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e''32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							e''32 -\staccato
							fs'32 -\staccato
							b32 -\staccato ] )
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
								a32 ^ \markup { \italic Pizz. } [
								r32
								r32
								b32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								a32 \glissando
								s32
								s32
								b32
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
						}
						{
							s32
							s32
							s32
							s32 \mf
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 1355/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef'32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							b'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d'''32 -\staccato ] )
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
					% performer: Violin 09, offset: 1357/16, magnitude: 1/8
					r16
					r16
				}
				<<
					% performer: Violin 09, offset: 1359/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							e''32 -\accent -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d''32 -\staccato
							g'32 -\staccato
							bf32 -\staccato ] )
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
					% performer: Violin 09, offset: 681/8, magnitude: 13/32
					r8
					r4
					r32
				}
				<<
					% performer: Violin 09, offset: 2737/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							b32 -\accent ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							g'32
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
							s32 \fp \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 1371/16, magnitude: 5/32
					r16
					r16.
				}
				<<
					% performer: Violin 09, offset: 2747/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							gqs''32 -\staccato [ (
							aqf''32 -\staccato
							gqs''32 -\staccato
							fs''32 -\staccato
							g''32 -\staccato ] )
							\slurSolid
						}
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
					% performer: Violin 09, offset: 86, magnitude: 1/4
					r4
				}
				<<
					% performer: Violin 09, offset: 345/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bf''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							d''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g'32 -\staccato
							g32 -\open -\staccato ] )
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2767/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 173/2, magnitude: 7/32
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
								g''32 [ (
								r32
								r32
								eqf''32 ] )
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
								g''32 \glissando
								s32
								s32
								eqf''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqs'''32 :256 [
								r32
								ef'''32 :256 ]
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
								dqs'''32 \glissando
								s32
								ef'''32
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
				{
					% performer: Violin 09, offset: 2775/32, magnitude: 1/8
					r32
					r16.
				}
				<<
					% performer: Violin 09, offset: 2779/32, magnitude: 1/8
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
								gqs32 ]
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
								gqs32
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
					% performer: Violin 09, offset: 2783/32, magnitude: 7/32
					r32
					r8.
				}
				<<
					% performer: Violin 09, offset: 1395/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							a32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							a''32 ] )
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
					% performer: Violin 09, offset: 2795/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 699/8, magnitude: 1/8
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
								b''32 [ (
								r32
								r32
								dqf'''32 ] )
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
								b''32 \glissando
								s32
								s32
								dqf'''32
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
					% performer: Violin 09, offset: 175/2, magnitude: 3/32
					r16.
				}
				<<
					% performer: Violin 09, offset: 2803/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqs''32 -\accent [
								r32
								r32
								r32
								dqf''32 ]
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
								eqs''32 \glissando
								s32
								s32
								s32
								dqf''32
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
					% performer: Violin 09, offset: 351/4, magnitude: 9/32
					r4
					r32
				}
				<<
					% performer: Violin 09, offset: 2817/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							c'''32 -\accent ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							c'32 ] )
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
					% performer: Violin 09, offset: 1411/16, magnitude: 7/32
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
								aqf''32 [ (
								r32
								d''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf''32 \glissando
								s32
								d''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqf'32 :256 [
								r32
								r32
								aqf''32 :256 ]
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
								bqf'32 \glissando
								s32
								s32
								aqf''32
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
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 2829/32, magnitude: 1/8
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
								dqf'32 -\accent [ (
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
								dqf'32 \glissando
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
							s32 \fp \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2833/32, magnitude: 7/32
					r16.
					r8
				}
				<<
					% performer: Violin 09, offset: 355/4, magnitude: 5/32
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
								eqf'32 -\accent [ (
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
								eqf'32 \glissando
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
							s32 \sfz \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2845/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 1423/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqf'32 [
								r32
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
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqf'32 \glissando
								s32
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
					% performer: Violin 09, offset: 713/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 2853/32, magnitude: 3/16
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
								eqf'''32 \glissando
								s32
								s32
								f''32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqf''32 :256 [
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
								gqf''32 \glissando
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
					% performer: Violin 09, offset: 2859/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 2865/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							d''32 -\staccato [ (
							dqf''32 -\staccato
							d''32 -\staccato
							cqs''32 -\staccato
							dqf''32 -\staccato
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
								e''32 :256 [
								gqs''32 :256 ]
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
								e''32 \glissando
								gqs''32
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
					% performer: Violin 09, offset: 2873/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Violin 09, offset: 2877/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf''32 -\accent [
								r32
								r32
								r32
								fqs''32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf''32 \glissando
								s32
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
							s32 \sfz \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 1441/16, magnitude: 5/16
					r16
					r8
					r8
				}
				<<
					% performer: Violin 09, offset: 723/8, magnitude: 7/32
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
								r32
								r32
								r32
								r32
								aqs'32 ] )
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
								c''32 \glissando
								s32
								s32
								s32
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
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2899/32, magnitude: 9/32
					r32
					r8
					r8
				}
				<<
					% performer: Violin 09, offset: 727/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							bf''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\open -\staccato
							g'32 -\staccato
							b32 -\staccato ] )
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
							s32 \mf
						}
					}
				>>
				{
					% performer: Violin 09, offset: 91, magnitude: 13/32
					r4
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 2925/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								af32 -\accent [
								r32
								r32
								r32
								gqs32 ]
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
								af32 \glissando
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 1465/16, magnitude: 11/16
					r16
					r8
					r4
					r4
				}
				<<
					% performer: Violin 09, offset: 369/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							f'8 -\accent [ ~ ~ \startTrillSpan bqf'
							f'32 * 99/100 ]
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
							s32 \sfz \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2957/32, magnitude: 5/32
					r16.
					r16
				}
				<<
					% performer: Violin 09, offset: 1481/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								a32 [
								r32
								r32
								r32
								r32
								cs'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								a32 \glissando
								s32
								s32
								s32
								s32
								cs'32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 371/4, magnitude: 7/32
					r8..
				}
				<<
					% performer: Violin 09, offset: 2975/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								d''32 [
								r32
								r32
								r32
								r32
								g'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								d''32 \glissando
								s32
								s32
								s32
								s32
								g'32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2981/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Violin 09, offset: 2985/32, magnitude: 7/32
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
								g'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 \glissando
								s32
								s32
								s32
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
					% performer: Violin 09, offset: 187/2, magnitude: 3/16
					r8.
				}
				<<
					% performer: Violin 09, offset: 1499/16, magnitude: 11/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							e'16 [ ~ \startTrillSpan f'
							e'8 ~ ~
							e'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						\override TextScript #'staff-padding = #6
						{
							ef'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							b'32
							fs''32
							d'''32 ] )
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
					% performer: Violin 09, offset: 3009/32, magnitude: 11/32
					r16.
					r8
					r8
				}
				<<
					% performer: Violin 09, offset: 755/8, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqs32 [
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
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs32 \glissando
								s32
								s32
								s32
								s32
								s32
								b32
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
					% performer: Violin 09, offset: 3027/32, magnitude: 1/8
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
								g32 [ (
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
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								g32 \glissando
								s32
								s32
								bf32
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
					% performer: Violin 09, offset: 3031/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 379/4, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							e'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							d'32 -\open
							g''32
							ef'''32 ] )
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
							s32 \mf
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 759/8, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							aqf''8 [ ~ \startTrillSpan d'''
							aqf''32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fs''8. * 99/100 :64 \startTrillSpan gqf''
							s8. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqs'32 [ ~ \startTrillSpan d''
							bqs'16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 3051/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							c'''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							f''32 -\staccato
							af'32 -\staccato
							cs'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							d'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							cs'''32 ] )
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
					% performer: Violin 09, offset: 765/8, magnitude: 21/32
					r8
					r4
					r4
					r32
				}
				<<
					% performer: Violin 09, offset: 3081/32, magnitude: 19/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf'8 :64 [ ~ ~
							aqf'32 :256 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf'16 [ ~ \startTrillSpan d''
							bf'16. * 99/100 ]
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
							d''8 [ ~ ~ \startTrillSpan eqf''
							d''32 * 99/100 ]
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
							c''8 * 99/100 \startTrillSpan dqf''
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
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
					% performer: Violin 09, offset: 775/8, magnitude: 21/16
					r8
					r4
					r4
					r4
					r4
					r8.
				}
				<<
					% performer: Violin 09, offset: 1571/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							e'16 :128 [ ~ \startTrillSpan fqs'
							e'16 * 99/100 :128 ]
							s16 * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 1573/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							ef'''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\open -\staccato
							c''32 -\staccato
							e'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							d'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
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
					% performer: Violin 09, offset: 1577/16, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g'8 :64 [ ~ ~ \startTrillSpan cqs''
							g'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							fs'32 [ ~ \startTrillSpan bqf'
							fs'8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							eqs''8 * 99/100 \startTrillSpan gqf''
							s8 * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 99, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 09, offset: 1585/16, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cs''8.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef''8.. * 99/100 \startTrillSpan a''
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
							f''32 [ ~ \startTrillSpan g''
							f''16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							e''32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							e''32
							af'32
							g32 -\open ] )
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
					% performer: Violin 09, offset: 3191/32, magnitude: 13/32
					r32
					r4.
				}
				<<
					% performer: Violin 09, offset: 801/8, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf'8 [ ~
							gqf'16 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e'8 :64 [ ~ ~ \startTrillSpan gqs'
							e'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							g32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g'32
							d''32
							bf''32 ] )
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 3219/32, magnitude: 9/32
					r32
					r8
					r8
				}
				<<
					% performer: Violin 09, offset: 807/8, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							c'''8 * 99/100 \startTrillSpan dqs'''
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							cs''8 * 99/100 :64 \startTrillSpan e''
							s8 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							d'8 * 99/100 :64 -\open \startTrillSpan a'
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a'8 * 99/100 \startTrillSpan aqs'
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
							s32
							s32
							s32
							s32
						}
						{
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 811/8, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							af''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							cs'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							bf'32
							a'32 -\open
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
							s32 \p \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 813/8, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							b8 [ ~ \startTrillSpan fqs'
							b32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs'8 :64 [ ~ ~ \startTrillSpan g'
							eqs'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							g32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							b''32 ] )
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
							s32 \mf \>
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
					% performer: Violin 09, offset: 1633/16, magnitude: 35/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs''8. [ ~
							fs''8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							f''32 [ (
							e''32 -\open
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bqf''32 :256 ] ~
							bqf''4 :32 ~
							bqf''8 :64 [ ~ ~
							bqf''32 :256 ]
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
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 3301/32, magnitude: 11/32
					r16.
					r4
				}
				<<
					% performer: Violin 09, offset: 207/2, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f''4..
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
				<<
					% performer: Violin 09, offset: 1663/16, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							eqf'''16 :128 [ ~
							eqf'''8 :64 ~ ~
							eqf'''32 :256 ]
						}
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e''16. :128 -\open [ ~ \startTrillSpan f''
							e''32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a'8 * 99/100 -\open \startTrillSpan dqs''
							s8 * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 3341/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e''32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							bf32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32
							a'32 -\open
							\once \override NoteHead #'style = #'harmonic
							af''32 ] )
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
					% performer: Violin 09, offset: 3349/32, magnitude: 23/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							cs''16. [ ~
							cs''16. ]
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							b''8 [ ~ ~ \startTrillSpan eqf'''
							b''32 ~
							b''16 * 99/100 ]
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
							eqf''8. * 99/100 :64 \startTrillSpan e''
							s8. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							b''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							ef''32
							af'32
							c'32 ] )
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
					% performer: Violin 09, offset: 843/8, magnitude: 7/32
					r8
					r16.
				}
				<<
					% performer: Violin 09, offset: 3379/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b''8 [ ~ ~
							b''32 ~
							b''32 ]
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
					% performer: Violin 09, offset: 3385/32, magnitude: 19/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqs'8. * 99/100 :64 \startTrillSpan e'
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
							cqs'32 [ ~ \startTrillSpan f'
							cqs'8 * 99/100 ]
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
							bf8 * 99/100 \startTrillSpan bqf
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
							eqf'8 * 99/100 \startTrillSpan e'
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							gqs8 * 99/100 \startTrillSpan bf
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e'8.. * 99/100 \startTrillSpan gqf'
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
							dqs'32 [ ~ \startTrillSpan e'
							dqs'16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							cqs'8 * 99/100 \startTrillSpan fqs'
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
					% performer: Violin 09, offset: 3423/32, magnitude: 31/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf'32 ] ~
							bf'4 ~
							bf'8.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							fs'16 ] ~
							fs'4 ~
							fs'8.
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
				{
					% performer: Violin 09, offset: 1727/16, magnitude: 5/32
					r16
					r16.
				}
				<<
					% performer: Violin 09, offset: 3459/32, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs''8 [ ~ ~
							fs''32 ] ~
							fs''4
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
					% performer: Violin 09, offset: 217/2, magnitude: 43/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf'4 ~
							bqf'8
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							a''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							a''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqs'''32 [ (
							\once \override NoteHead #'style = #'harmonic
							cs'''32
							\once \override NoteHead #'style = #'harmonic
							dqf'''32
							\once \override NoteHead #'style = #'harmonic
							dqs'''32
							\once \override NoteHead #'style = #'harmonic
							cs'''32
							\once \override NoteHead #'style = #'harmonic
							c'''32
							\once \override NoteHead #'style = #'harmonic
							d'''32
							\once \override NoteHead #'style = #'harmonic
							dqs'''32
							\once \override NoteHead #'style = #'harmonic
							e'''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bqs''8. :64 [ ~
							bqs''16. :128 ]
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
					% performer: Violin 09, offset: 3515/32, magnitude: 1/16
					r32
					r32
				}
				<<
					% performer: Violin 09, offset: 3517/32, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs''16. ] ~
							aqs''4 ~
							aqs''8 [ ~ ~
							aqs''32 ]
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
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 3533/32, magnitude: 19/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							ef'16. :128 [ ~
							ef'16. :128 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqf'8 [ ~ ~ \startTrillSpan d''
							bqf'32 ~
							bqf'32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							bf'8 * 99/100 \startTrillSpan f''
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g''16. :128 [ ~ \startTrillSpan dqf'''
							g''8 :64 ~ ~
							g''32 * 99/100 :256 ]
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
							bqs'16. [ ~ \startTrillSpan d''
							bqs'32 * 99/100 ]
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
							ef''8. * 99/100 \startTrillSpan fs''
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
							f'32 [ ~ \startTrillSpan af'
							f'16. * 99/100 ]
							s16. * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 3571/32, magnitude: 9/32
					r32
					r8
					r8
				}
				<<
					% performer: Violin 09, offset: 895/8, magnitude: 19/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							e''8 :64 [ ~ \startTrillSpan aqf''
							e''16. * 99/100 :128 ]
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							eqs''8 [ ~ ~ \startTrillSpan f''
							eqs''32 ~
							eqs''16 * 99/100 ]
							s16 * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							e'8. :64 [ ~ \startTrillSpan gqs'
							e'32 * 99/100 :256 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'8.. * 99/100 :64 \startTrillSpan fs'
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
							bqf'8. * 99/100 :64 \startTrillSpan d''
							s8. * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							g32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g'32
							a'32 -\open
							e''32 -\open ] )
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
					% performer: Violin 09, offset: 1809/16, magnitude: 27/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							af''8. ] ~
							af''4 ~
							af''16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							aqf''8. :64 [ ~
							aqf''8 :64 ~ ~
							aqf''32 :256 ]
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
					% performer: Violin 09, offset: 3645/32, magnitude: 47/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs''16. ] ~
							eqs''4
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							b'32 [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							ef'32 [ (
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							aqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							gqs'4 :32 ~
							gqs'8 :64
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
					% performer: Violin 09, offset: 923/8, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							af''8 ] ~
							af''4 ~
							af''16.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bf'8 [ ~ ~
							bf'32 ] ~
							bf'4
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
					}
				>>
				<<
					% performer: Violin 09, offset: 465/4, magnitude: 1/8
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
								bqf''32 ] )
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
								bqf''32
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
					% performer: Violin 09, offset: 931/8, magnitude: 3/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b''8 ] ~
							b''4
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
					% performer: Violin 09, offset: 467/4, magnitude: 3/32
					r16.
				}
				<<
					% performer: Violin 09, offset: 3739/32, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef''8 [ ~ ~
							ef''32 ~
							ef''16. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							e''32 -\open
							\once \override NoteHead #'style = #'harmonic
							f''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs''16. :128 ] ~
							fqs''4 :32
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 471/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e'16. * 99/100 -\accent \startTrillSpan bf'
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
							fs'8 * 99/100 :64 \startTrillSpan bqs'
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
					% performer: Violin 09, offset: 3775/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 3781/32, magnitude: 11/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs'''16. [ ~
							dqs'''8. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							f''16 :128 ] ~
							f''4 :32 ~
							f''16. :128
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
					% performer: Violin 09, offset: 3803/32, magnitude: 41/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs''8 [ ~ ~
							fqs''32 ~
							fqs''16. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							e'''32 [ (
							\once \override NoteHead #'style = #'harmonic
							d'''32
							\once \override NoteHead #'style = #'harmonic
							dqf'''32
							\once \override NoteHead #'style = #'harmonic
							d'''32
							\once \override NoteHead #'style = #'harmonic
							dqf'''32
							\once \override NoteHead #'style = #'harmonic
							eqf'''32
							\once \override NoteHead #'style = #'harmonic
							d'''32
							\once \override NoteHead #'style = #'harmonic
							cqs'''32
							\once \override NoteHead #'style = #'harmonic
							b''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqf''32
							\once \override NoteHead #'style = #'harmonic
							aqs''32
							\once \override NoteHead #'style = #'harmonic
							af''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							e''32 -\open
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bqf''8 :64 [ ~
							bqf''8 :64 ]
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
						}
						{
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
					% performer: Violin 09, offset: 961/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs''8 [ ~
							dqs''32 ]
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
					% performer: Violin 09, offset: 3849/32, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf''8.. [ ~
							dqf''8 ]
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
							a''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							a''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							aqf'8 [ ~
							aqf'8. ]
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 1939/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e'''16 [ ~
							e'''8. ]
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
					% performer: Violin 09, offset: 1943/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 3887/32, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							af''32 ] ~
							af''4 ~
							af''16.
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							e'''8 :64 [ ~ ~
							e'''32 :256 ] ~
							e'''4 :32 ~
							e'''16. :128
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
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 3915/32, magnitude: 17/32
					r32
					r8
					r4
					r8
				}
				<<
					% performer: Violin 09, offset: 983/8, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''8 [ ~
							cqs''8 ]
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
					% performer: Violin 09, offset: 985/8, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqf''8 ] ~
							gqf''4
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							af'4
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
					% performer: Violin 09, offset: 495/4, magnitude: 1/8
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
								a32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs32 \glissando
								s32
								s32
								a32
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
					% performer: Violin 09, offset: 991/8, magnitude: 1/8
					r8
				}
				<<
					% performer: Violin 09, offset: 124, magnitude: 1/8
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
								dqs'32 [ (
								r32
								r32
								bqs'32 ] )
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
								dqs'32 \glissando
								s32
								s32
								bqs'32
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
					% performer: Violin 09, offset: 993/8, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a''8 ] ~
							a''4 ~
							a''16
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
					% performer: Violin 09, offset: 1993/16, magnitude: 3/16
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
								dqf'32 ] )
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
								aqf32 \glissando
								s32
								dqf'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								bqs'32 :256 [
								r32
								aqf'32 :256 ]
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
								bqs'32 \glissando
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
						}
						{
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 499/4, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs''4 ~
							fs''4
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
					% performer: Violin 09, offset: 501/4, magnitude: 1/16
					r16
				}
				<<
					% performer: Violin 09, offset: 2005/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							fs'32 -\staccato [ (
							fqs'32 -\staccato
							e'32 -\staccato
							fs'32 -\staccato ] )
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
					% performer: Violin 09, offset: 2007/16, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef'''16 ] ~
							ef'''4 ~
							ef'''8
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 1007/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							gqs'32 -\staccato [ (
							g'32 -\staccato
							aqf'32 -\staccato
							a'32 -\staccato ] )
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
					% performer: Violin 09, offset: 126, magnitude: 1/32
					r32
				}
				<<
					% performer: Violin 09, offset: 4033/32, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf''8.. [ ~
							bqf''8. ]
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
					}
				>>
				{
					% performer: Violin 09, offset: 2023/16, magnitude: 3/8
					r16
					r4
					r16
				}
				<<
					% performer: Violin 09, offset: 2029/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs''8.
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
					% performer: Violin 09, offset: 127, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							bf'32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							b'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bqs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf'32 -\staccato ] )
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
				<<
					% performer: Violin 09, offset: 1017/8, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c''8 [ ~
							c''8 ~ ~
							c''32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bf''16. :128 ] ~
							bf''4 :32
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
							s32 \mp \>
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
					% performer: Violin 09, offset: 511/4, magnitude: 1/4
					r4
				}
				<<
					% performer: Violin 09, offset: 128, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a''4 ~
							a''8 [ ~ ~
							a''32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							f''16. [ ~
							f''8 ~ ~
							f''32 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 4117/32, magnitude: 131/32
					r16.
					r4
					R2. * 5
				}
				<<
					% performer: Violin 09, offset: 531/4, magnitude: 7/32
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
								a32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs32 \glissando
								s32
								a32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'8 * 99/100 :64 \startTrillSpan eqf'
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
					% performer: Violin 09, offset: 4255/32, magnitude: 7/32
					r32
					r8.
				}
				<<
					% performer: Violin 09, offset: 2131/16, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							b''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d''32 -\staccato
							fs'32 -\staccato
							b32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							cs'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
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
					% performer: Violin 09, offset: 4271/32, magnitude: 31/16
					r32
					R2. * 2
					r4
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 4333/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e''32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							d'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							cs'''32 ] )
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
					% performer: Violin 09, offset: 2171/16, magnitude: 1/4
					r16
					r8.
				}
				<<
					% performer: Violin 09, offset: 2175/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs'16 :128 [ ~
							fqs'16 :128 ]
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
					% performer: Violin 09, offset: 2177/16, magnitude: 5/16
					r16
					r8
					r8
				}
				<<
					% performer: Violin 09, offset: 1091/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							cqs'8 :64 [ ~
							cqs'16 :128 ]
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
					% performer: Violin 09, offset: 2185/16, magnitude: 3/8
					r16
					r8
					r8.
				}
				<<
					% performer: Violin 09, offset: 2191/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							e'16 [ ~
							e'16 ]
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
					% performer: Violin 09, offset: 2193/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							ef'''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							g''32 -\staccato
							c''32 -\staccato
							ef'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							ef'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							f''32
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
					% performer: Violin 09, offset: 2197/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Violin 09, offset: 4397/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf16. :128 -\accent [ ~ \startTrillSpan c'
							bf16 * 99/100 :128 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2201/16, magnitude: 11/32
					r16
					r8
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 4413/32, magnitude: 5/32
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
								a'32 -\accent [ (
								r32
								d''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								a'32 \glissando
								s32
								d''32
							}
						>>
						{
							\pitchedTrill
							a'16 * 99/100 :128 \startTrillSpan d''
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
					% performer: Violin 09, offset: 2209/16, magnitude: 3/16
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
								dqf''32 -\accent [ (
								r32
								r32
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
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								dqf''32 \glissando
								s32
								s32
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
					% performer: Violin 09, offset: 553/4, magnitude: 1/4
					r4
				}
				<<
					% performer: Violin 09, offset: 277/2, magnitude: 5/32
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
								cs'32 -\accent [ (
								r32
								g'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cs'32 \glissando
								s32
								g'32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							b16 * 99/100 :128 \startTrillSpan e'
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
					% performer: Violin 09, offset: 4437/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf''16. [ ~
							bqf''16 ]
							\revert NoteHead #'style
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
					% performer: Violin 09, offset: 2221/16, magnitude: 3/8
					r16
					r8
					r8.
				}
				<<
					% performer: Violin 09, offset: 2227/16, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e'16 :128 -\accent [ ~ \startTrillSpan aqf'
							e'8 :64 ~ ~
							e'32 * 99/100 :256 ]
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
					% performer: Violin 09, offset: 4461/32, magnitude: 25/32
					r16.
					r4
					r4
					r8.
				}
				<<
					% performer: Violin 09, offset: 2243/16, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							d'''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							g''32 -\staccato
							bf'32 -\staccato
							d'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							c'8 [ ~ ~ \startTrillSpan f'
							c'32 * 99/100 ]
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
					% performer: Violin 09, offset: 4495/32, magnitude: 7/16
					r32
					r4
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 4509/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							f'16. -\accent [ ~
							f'16 ]
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
					% performer: Violin 09, offset: 2257/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Violin 09, offset: 4517/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							ef'16. :128 [ ~
							ef'16. :128 ]
						}
					}
					\context Voice = "span" {
						{
							s32 \fppp \>
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 4523/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							g32 -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf'32 -\staccato
							a'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs'''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							bf''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
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
					% performer: Violin 09, offset: 1133/8, magnitude: 1/2
					r8
					r4.
				}
				<<
					% performer: Violin 09, offset: 1137/8, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqs'8 * 99/100 -\accent \startTrillSpan gqf'
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						\override TextScript #'staff-padding = #6
						{
							d'32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							b'32
							a'32 -\open
							d'''32 ] )
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
					% performer: Violin 09, offset: 1139/8, magnitude: 11/32
					r8
					r8..
				}
				<<
					% performer: Violin 09, offset: 4567/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							f''32 :256 [ ~ \startTrillSpan af''
							f''16. * 99/100 :128 ]
							s16. * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 4571/32, magnitude: 7/32
					r32
					r8
					r16
				}
				<<
					% performer: Violin 09, offset: 2289/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							aqf''8 :64 -\accent [ ~ ~ \startTrillSpan a''
							aqf''32 * 99/100 :256 ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 4583/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Violin 09, offset: 4589/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs''16. -\accent [ ~ \startTrillSpan aqf''
							eqs''16 * 99/100 ]
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
							s32 \fp \>
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2297/16, magnitude: 1/8
					r16
					r16
				}
				<<
					% performer: Violin 09, offset: 2299/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs''16 :128 [ ~
							eqs''16 :128 ]
							\revert NoteHead #'style
						}
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							d'''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs''32
							\once \override NoteHead #'style = #'harmonic
							a'32
							\once \override NoteHead #'style = #'harmonic
							d'32 ] )
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
					% performer: Violin 09, offset: 2303/16, magnitude: 9/16
					r16
					r2
				}
				<<
					% performer: Violin 09, offset: 289/2, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							aqs8. :64 -\accent
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
						}
					}
				>>
				<<
					% performer: Violin 09, offset: 2315/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef'16 :128 [ ~
							ef'16. :128 ]
							\revert NoteHead #'style
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
							s32 \mf
						}
					}
				>>
				{
					% performer: Violin 09, offset: 4635/32, magnitude: 5/32
					r32
					r8
				}
				<<
					% performer: Violin 09, offset: 145, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							d'8 * 99/100 -\accent \startTrillSpan fs'
							s8 * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: 1161/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g8 * 99/100 -\open \startTrillSpan bf
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
					% performer: Violin 09, offset: 581/4, magnitude: 3/32
					r16.
				}
				<<
					% performer: Violin 09, offset: 4651/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'8 [ ~ ~ \startTrillSpan g'
							ef'32 ~
							ef'16 * 99/100 ]
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
							s32 \f \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Violin 09, offset: 2329/16, magnitude: 35/16
					r16
					r8
					r4
					r4
					R2. * 2
					\bar "|."
				}
			}
		>>
	>>
}