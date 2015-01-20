% Abjad revision 4356
% 2011-05-15 23:31

\version "2.13.37"
\include "english.ly"
\include "/media/Work/dev/scores/abjad/cfg/abjad.scm"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 10)

\header {
	composer = #"Josiah Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	instrument = #"Viola 04"
	tagline = \markup { "" }
	title = #"mbrsi/aurora"
}

\paper {
	#(define page-breaking ly:optimal-breaking)
	between-system-spacing = #'((space . 0) (padding . 2) (stretchability . 0) (minimum-distance . 0))
	bottom-margin = 0.75\in
	bottom-system-spacing = #'((space . 0) (padding . 4) (stretchability . 0) (minimum-distance . 0))
	evenFooterMarkup = \markup { \fill-line { "viola 04 - mbrsi/aurora - josiah wolf oberholtzer" } }
	left-margin = 0.75\in
	max-systems-per-page = #8
	oddFooterMarkup = \markup { \fill-line { "josiah wolf oberholtzer - mbrsi/aurora - viola 04" } }
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
		\context StaffGroup = "Viola 04" \with {
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
					% performer: Viola 04, offset: 0, magnitude: 7/32
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
						g'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 7/32, magnitude: 17/32
					\stopStaff
					r32
					r4
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3/4, magnitude: 5/32
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
					% performer: Viola 04, offset: 29/32, magnitude: 1/4
					\stopStaff
					r16.
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 37/32, magnitude: 7/32
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
					% performer: Viola 04, offset: 11/8, magnitude: 7/8
					\stopStaff
					r8
					R2. * 1
					\startStaff
				}
				{
					% performer: Viola 04, offset: 9/4, magnitude: 3/16
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
					% performer: Viola 04, offset: 39/16, magnitude: 21/32
					\stopStaff
					r16
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 99/32, magnitude: 5/32
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
					% performer: Viola 04, offset: 13/4, magnitude: 17/32
					\stopStaff
					r4
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 121/32, magnitude: 1/4
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
					% performer: Viola 04, offset: 129/32, magnitude: 11/32
					\stopStaff
					r16.
					r8
					r8
					\startStaff
				}
				{
					% performer: Viola 04, offset: 35/8, magnitude: 1/8
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
					% performer: Viola 04, offset: 9/2, magnitude: 13/32
					\stopStaff
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 157/32, magnitude: 1/8
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
					% performer: Viola 04, offset: 161/32, magnitude: 3/16
					\stopStaff
					r16.
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 167/32, magnitude: 9/32
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
						e'32
					}
				}
				{
					% performer: Viola 04, offset: 11/2, magnitude: 7/32
					\stopStaff
					r8..
					\startStaff
				}
				{
					% performer: Viola 04, offset: 183/32, magnitude: 3/32
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						s32
						e'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 93/16, magnitude: 15/16
					\stopStaff
					r16
					r8
					R2. * 1
					\startStaff
				}
				{
					% performer: Viola 04, offset: 27/4, magnitude: 7/32
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
						c'32
					}
				}
				{
					% performer: Viola 04, offset: 223/32, magnitude: 7/8
					\stopStaff
					r32
					r4
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 251/32, magnitude: 1/4
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 259/32, magnitude: 31/32
					\stopStaff
					r32
					r8
					R2. * 1
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 145/16, magnitude: 5/32
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
					% performer: Viola 04, offset: 295/32, magnitude: 1/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 297/32, magnitude: 33/32
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
					% performer: Viola 04, offset: 165/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 169/16, magnitude: 33/32
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
					% performer: Viola 04, offset: 371/32, magnitude: 1/4
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
					% performer: Viola 04, offset: 379/32, magnitude: 31/32
					\stopStaff
					r32
					r8
					R2. * 1
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 205/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 209/16, magnitude: 7/8
					\stopStaff
					r16
					r8
					r4
					r4..
					\startStaff
				}
				{
					% performer: Viola 04, offset: 223/16, magnitude: 9/32
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
					}
				}
				{
					% performer: Viola 04, offset: 455/32, magnitude: 37/32
					\stopStaff
					r32
					R2. * 1
					r4.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 123/8, magnitude: 7/32
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
						f32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 499/32, magnitude: 15/16
					\stopStaff
					r32
					r8
					R2. * 1
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 529/32, magnitude: 5/16
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
						f32
					}
				}
				{
					% performer: Viola 04, offset: 539/32, magnitude: 229/32
					\stopStaff
					r32
					r8
					r4
					R2. * 9
					\startStaff
				}
				{
					% performer: Viola 04, offset: 24, magnitude: 5/32
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
					% performer: Viola 04, offset: 773/32, magnitude: 3/32
					\stopStaff
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 97/4, magnitude: 15/16
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
						a32
					}
				}
				{
					% performer: Viola 04, offset: 403/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 807/32, magnitude: 7/32
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
					% performer: Viola 04, offset: 407/16, magnitude: 5/32
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
					% performer: Viola 04, offset: 819/32, magnitude: 29/32
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
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 53/2, magnitude: 5/8
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
					% performer: Viola 04, offset: 217/8, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 435/16, magnitude: 21/32
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
						a32
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 891/32, magnitude: 3/16
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
					% performer: Viola 04, offset: 897/32, magnitude: 3/16
					\stopStaff
					r16.
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 903/32, magnitude: 37/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 235/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 941/32, magnitude: 3/8
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
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 953/32, magnitude: 5/32
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
					% performer: Viola 04, offset: 479/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 30, magnitude: 7/32
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
					% performer: Viola 04, offset: 967/32, magnitude: 3/8
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
					% performer: Viola 04, offset: 979/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 985/32, magnitude: 5/32
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
					% performer: Viola 04, offset: 495/16, magnitude: 3/16
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
					% performer: Viola 04, offset: 249/8, magnitude: 5/8
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
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 127/4, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1017/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						a32
					}
				}
				{
					% performer: Viola 04, offset: 511/16, magnitude: 9/32
					\stopStaff
					r16
					r8..
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1031/32, magnitude: 13/16
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
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 1057/32, magnitude: 1/4
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
					% performer: Viola 04, offset: 1065/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1069/32, magnitude: 21/16
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
					% performer: Viola 04, offset: 1111/32, magnitude: 1/8
					\stopStaff
					r32
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1115/32, magnitude: 1/4
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 1123/32, magnitude: 25/16
					\stopStaff
					r32
					r8
					R2. * 1
					r4
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1173/32, magnitude: 13/32
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
					% performer: Viola 04, offset: 593/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 597/16, magnitude: 17/32
					\stopStaff
					r16
					r8
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1211/32, magnitude: 39/32
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
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 625/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1251/32, magnitude: 7/32
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
					% performer: Viola 04, offset: 629/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 633/16, magnitude: 19/32
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
						f32
					}
				}
				{
					% performer: Viola 04, offset: 1285/32, magnitude: 5/16
					\stopStaff
					r16.
					r8..
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1295/32, magnitude: 1/4
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
					% performer: Viola 04, offset: 1303/32, magnitude: 29/32
					\stopStaff
					r32
					r4
					r4
					r4.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 333/8, magnitude: 9/32
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
					% performer: Viola 04, offset: 1341/32, magnitude: 7/16
					\stopStaff
					r16.
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1355/32, magnitude: 1/4
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 1363/32, magnitude: 47/32
					\stopStaff
					r32
					r8
					R2. * 1
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 705/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 709/16, magnitude: 49/32
					\stopStaff
					r16
					r8
					r4
					r4
					R2. * 1
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1467/32, magnitude: 1/4
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
					% performer: Viola 04, offset: 1475/32, magnitude: 43/32
					\stopStaff
					r32
					r8
					r4
					R2. * 1
					r8.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 759/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 763/16, magnitude: 7/4
					\stopStaff
					r16
					r4
					R2. * 1
					r4
					r4
					r8.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 791/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 795/16, magnitude: 195/32
					\stopStaff
					r16
					r4
					r4
					R2. * 7
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1785/32, magnitude: 5/32
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
					% performer: Viola 04, offset: 895/16, magnitude: 41/16
					\stopStaff
					r16
					r4
					R2. * 3
					\startStaff
				}
				{
					% performer: Viola 04, offset: 117/2, magnitude: 7/32
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
					% performer: Viola 04, offset: 1879/32, magnitude: 73/32
					\stopStaff
					r32
					r4
					r4
					R2. * 2
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 61, magnitude: 3/16
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
					% performer: Viola 04, offset: 979/16, magnitude: 5/16
					\stopStaff
					r16
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 123/2, magnitude: 1/8
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
					% performer: Viola 04, offset: 493/8, magnitude: 5/8
					\stopStaff
					r8
					r4
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 249/4, magnitude: 5/32
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
					% performer: Viola 04, offset: 1997/32, magnitude: 1/4
					\stopStaff
					r16.
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2005/32, magnitude: 3/16
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
					% performer: Viola 04, offset: 2011/32, magnitude: 9/32
					\stopStaff
					r32
					r8
					r8
					\startStaff
				}
				{
					% performer: Viola 04, offset: 505/8, magnitude: 5/32
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
					% performer: Viola 04, offset: 2025/32, magnitude: 21/32
					\stopStaff
					r16.
					r8
					r4
					r8.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1023/16, magnitude: 1/8
					{
						c'32 \glissando
						s32
						s32
						e'32
					}
				}
				{
					% performer: Viola 04, offset: 1025/16, magnitude: 47/16
					\stopStaff
					r16
					r8
					r4
					R2. * 3
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 67, magnitude: 7/32
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
					% performer: Viola 04, offset: 2151/32, magnitude: 177/32
					\stopStaff
					r32
					r4
					R2. * 7
					\startStaff
				}
				{
					% performer: Viola 04, offset: 291/4, magnitude: 7/32
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
					% performer: Viola 04, offset: 2335/32, magnitude: 5/32
					\stopStaff
					r32
					r8
					\startStaff
				}
				{
					% performer: Viola 04, offset: 585/8, magnitude: 1/4
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
					% performer: Viola 04, offset: 587/8, magnitude: 3/16
					\stopStaff
					r8
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1177/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 1181/16, magnitude: 25/32
					\stopStaff
					r16
					r8
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2387/32, magnitude: 5/32
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
					% performer: Viola 04, offset: 299/4, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1197/16, magnitude: 1/4
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
					}
					{
						g'32 \glissando
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 1201/16, magnitude: 15/32
					\stopStaff
					r16
					r8
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2417/32, magnitude: 1/4
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
					% performer: Viola 04, offset: 2425/32, magnitude: 1/2
					\stopStaff
					r16.
					r8
					r4
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2441/32, magnitude: 3/16
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
					% performer: Viola 04, offset: 2447/32, magnitude: 1/16
					\stopStaff
					r32
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2449/32, magnitude: 5/32
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
					% performer: Viola 04, offset: 1227/16, magnitude: 9/16
					\stopStaff
					r16
					r4
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 309/4, magnitude: 3/16
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
					% performer: Viola 04, offset: 1239/16, magnitude: 21/32
					\stopStaff
					r16
					r4
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2499/32, magnitude: 1/4
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
						g'32
					}
				}
				{
					% performer: Viola 04, offset: 2507/32, magnitude: 9/16
					\stopStaff
					r32
					r8
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2525/32, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Viola 04, offset: 1265/16, magnitude: 5/32
					\stopStaff
					r16
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2535/32, magnitude: 7/32
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
						c'32
					}
				}
				{
					% performer: Viola 04, offset: 1271/16, magnitude: 3/8
					\stopStaff
					r16
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1277/16, magnitude: 1/4
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
						c'32 \glissando
						e'32
					}
				}
				{
					% performer: Viola 04, offset: 1281/16, magnitude: 3/32
					\stopStaff
					r16
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2565/32, magnitude: 1/8
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
					% performer: Viola 04, offset: 2569/32, magnitude: 3/16
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
						a32
					}
				}
				{
					% performer: Viola 04, offset: 2575/32, magnitude: 1/16
					\stopStaff
					r32
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2577/32, magnitude: 1/8
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
					% performer: Viola 04, offset: 2581/32, magnitude: 7/16
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
					% performer: Viola 04, offset: 2595/32, magnitude: 7/32
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
					% performer: Viola 04, offset: 1301/16, magnitude: 9/16
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
					% performer: Viola 04, offset: 655/8, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1311/16, magnitude: 1/4
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
						f32
					}
				}
				{
					% performer: Viola 04, offset: 1315/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Viola 04, offset: 659/8, magnitude: 1/8
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
					% performer: Viola 04, offset: 165/2, magnitude: 7/32
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
						f32
					}
				}
				{
					% performer: Viola 04, offset: 2647/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2653/32, magnitude: 3/16
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
					% performer: Viola 04, offset: 2659/32, magnitude: 13/32
					\stopStaff
					r32
					r8
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 167/2, magnitude: 5/32
					{
						c'32 \glissando
						s32
						s32
						s32
						e'32
					}
				}
				{
					% performer: Viola 04, offset: 2677/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1339/16, magnitude: 1/4
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
						c'32 \glissando
						e'32
					}
				}
				{
					% performer: Viola 04, offset: 1343/16, magnitude: 25/16
					\stopStaff
					r16
					R2. * 2
					\startStaff
				}
				{
					% performer: Viola 04, offset: 171/2, magnitude: 3/16
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
					% performer: Viola 04, offset: 1371/16, magnitude: 5/16
					\stopStaff
					r16
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 86, magnitude: 5/16
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
						s32
						g'32
					}
				}
				{
					% performer: Viola 04, offset: 1381/16, magnitude: 1/8
					\stopStaff
					r16
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1383/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 1387/16, magnitude: 3/16
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
					}
				}
				{
					% performer: Viola 04, offset: 695/8, magnitude: 15/16
					\stopStaff
					r8
					R2. * 1
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1405/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 1409/16, magnitude: 13/32
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
					% performer: Viola 04, offset: 2831/32, magnitude: 9/32
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
						a32
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 355/4, magnitude: 1/4
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
					% performer: Viola 04, offset: 89, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2853/32, magnitude: 3/16
					{
						\override Glissando #'style = #'dashed-line
						c'32 \glissando
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
					% performer: Viola 04, offset: 2859/32, magnitude: 1/4
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
						c'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 2867/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 717/8, magnitude: 5/32
					{
						\override Glissando #'style = #'dashed-line
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
					% performer: Viola 04, offset: 2873/32, magnitude: 1/8
					\stopStaff
					r16.
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2877/32, magnitude: 9/32
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
						a32
					}
				}
				{
					% performer: Viola 04, offset: 1443/16, magnitude: 7/16
					\stopStaff
					r16
					r4
					r8
					\startStaff
				}
				{
					% performer: Viola 04, offset: 725/8, magnitude: 1/4
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
					% performer: Viola 04, offset: 727/8, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2909/32, magnitude: 7/16
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
					% performer: Viola 04, offset: 2923/32, magnitude: 1/4
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
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 2931/32, magnitude: 15/32
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
					% performer: Viola 04, offset: 1473/16, magnitude: 3/16
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
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 369/4, magnitude: 5/32
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
					% performer: Viola 04, offset: 2957/32, magnitude: 13/32
					\stopStaff
					r16.
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1485/16, magnitude: 1/4
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
						e'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 1489/16, magnitude: 1/2
					\stopStaff
					r16
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1497/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 1501/16, magnitude: 1/2
					\stopStaff
					r16
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1509/16, magnitude: 1/4
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
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 1513/16, magnitude: 1/2
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
					% performer: Viola 04, offset: 1521/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 1525/16, magnitude: 13/32
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
					% performer: Viola 04, offset: 3063/32, magnitude: 1/4
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
					% performer: Viola 04, offset: 3071/32, magnitude: 17/32
					\stopStaff
					r32
					r2
					\startStaff
				}
				{
					% performer: Viola 04, offset: 193/2, magnitude: 1/4
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
					}
				}
				{
					% performer: Viola 04, offset: 387/4, magnitude: 7/16
					\stopStaff
					r4..
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1555/16, magnitude: 9/32
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 3119/32, magnitude: 25/32
					\stopStaff
					r32
					R2. * 1
					\startStaff
				}
				{
					% performer: Viola 04, offset: 393/4, magnitude: 5/16
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
					}
					{
						c'32 \glissando
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
					% performer: Viola 04, offset: 1577/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 789/8, magnitude: 7/32
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
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 3163/32, magnitude: 25/32
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
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 797/8, magnitude: 7/32
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
						g'32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 3195/32, magnitude: 15/32
					\stopStaff
					r32
					r8
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1605/16, magnitude: 1
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
					% performer: Viola 04, offset: 1621/16, magnitude: 1/4
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
						e'32
					}
				}
				{
					% performer: Viola 04, offset: 1625/16, magnitude: 29/32
					\stopStaff
					r16
					r8
					r4
					r4...
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3279/32, magnitude: 17/16
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
						s32
						s32
						s32
						c'32
						\breathe
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 3313/32, magnitude: 5/32
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
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 1659/16, magnitude: 5/32
					{
						f32 \glissando
						s32
						s32
						s32
						f32
					}
				}
				{
					% performer: Viola 04, offset: 3323/32, magnitude: 9/16
					\stopStaff
					r32
					r8
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3341/32, magnitude: 23/32
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
						a32
						\breathe
					}
				}
				{
					% performer: Viola 04, offset: 841/8, magnitude: 1/4
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
						a32 \glissando \startTextSpan
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
					% performer: Viola 04, offset: 843/8, magnitude: 1/4
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
					% performer: Viola 04, offset: 845/8, magnitude: 21/16
					\stopStaff
					r8
					R2. * 1
					r4..
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1711/16, magnitude: 1
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
						s32
						s32
						s32
						c'32
					}
				}
				{
					% performer: Viola 04, offset: 1727/16, magnitude: 51/32
					\stopStaff
					r16
					R2. * 2
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3505/32, magnitude: 47/32
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
						f32
					}
				}
				{
					% performer: Viola 04, offset: 111, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3553/32, magnitude: 5/8
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
						a32
					}
				}
				{
					% performer: Viola 04, offset: 3573/32, magnitude: 1/4
					\stopStaff
					r16.
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3581/32, magnitude: 39/32
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
						a32
					}
				}
				{
					% performer: Viola 04, offset: 905/8, magnitude: 3/16
					\stopStaff
					r8
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1813/16, magnitude: 1/4
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
						s32
						f32
					}
				}
				{
					% performer: Viola 04, offset: 1817/16, magnitude: 13/32
					\stopStaff
					r16
					r8
					r8..
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3647/32, magnitude: 7/32
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
					% performer: Viola 04, offset: 1827/16, magnitude: 9/16
					\stopStaff
					r16
					r4
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 459/4, magnitude: 3/16
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
					% performer: Viola 04, offset: 1839/16, magnitude: 31/32
					\stopStaff
					r16
					r4
					r4
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3709/32, magnitude: 1/8
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
					% performer: Viola 04, offset: 3713/32, magnitude: 19/8
					\stopStaff
					r16.
					r8
					R2. * 2
					r4
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3789/32, magnitude: 19/32
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
						f32
					}
				}
				{
					% performer: Viola 04, offset: 119, magnitude: 5/16
					\stopStaff
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1909/16, magnitude: 25/32
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 3843/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 961/8, magnitude: 19/16
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
					% performer: Viola 04, offset: 1941/16, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 3883/32, magnitude: 25/32
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
						s32
						s32
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 977/8, magnitude: 5/8
					\stopStaff
					r8
					r2
					\startStaff
				}
				{
					% performer: Viola 04, offset: 491/4, magnitude: 7/8
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
					% performer: Viola 04, offset: 989/8, magnitude: 3/8
					\stopStaff
					r8
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 124, magnitude: 39/32
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
					% performer: Viola 04, offset: 4007/32, magnitude: 1/32
					\stopStaff
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 501/4, magnitude: 5/8
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
						c'32
						\revert Glissando #'style
					}
				}
				{
					% performer: Viola 04, offset: 1007/8, magnitude: 5/32
					\stopStaff
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 4033/32, magnitude: 9/16
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
					% performer: Viola 04, offset: 4051/32, magnitude: 1/8
					\stopStaff
					r32
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 4055/32, magnitude: 9/8
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
						c'32
					}
				}
				{
					% performer: Viola 04, offset: 4091/32, magnitude: 3/16
					\stopStaff
					r32
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 4097/32, magnitude: 15/32
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
					% performer: Viola 04, offset: 257/2, magnitude: 9/2
					\stopStaff
					r4
					r4
					R2. * 5
					r4
					\startStaff
				}
				{
					% performer: Viola 04, offset: 133, magnitude: 5/16
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
					}
					{
						\override TextSpanner #'bound-details #'left #'text = \markup { \filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0 }
						\override TextSpanner #'bound-details #'right #'text = #(markup #:draw-line '(0 . -1))
						\override TextSpanner #'bound-details #'right-broken #'text = ##f
						\override TextSpanner #'dash-fraction = #1
						\override TextSpanner #'direction = #up
						c'32 \glissando \startTextSpan
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
					% performer: Viola 04, offset: 2133/16, magnitude: 9/4
					\stopStaff
					r16
					r8
					R2. * 2
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2169/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 2173/16, magnitude: 1
					\stopStaff
					r16
					r8
					r4
					r4
					r4
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2189/16, magnitude: 1/4
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
					% performer: Viola 04, offset: 2193/16, magnitude: 13/16
					\stopStaff
					r16
					r8
					r4
					r4
					r8
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1103/8, magnitude: 3/16
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
					% performer: Viola 04, offset: 2209/16, magnitude: 1/8
					\stopStaff
					r16
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 2211/16, magnitude: 3/16
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
					% performer: Viola 04, offset: 1107/8, magnitude: 3/16
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
					% performer: Viola 04, offset: 2217/16, magnitude: 1/16
					\stopStaff
					r16
					\startStaff
				}
				{
					% performer: Viola 04, offset: 1109/8, magnitude: 1/8
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
					% performer: Viola 04, offset: 555/4, magnitude: 37/32
					\stopStaff
					R2. * 1
					r4
					r8
					r32
					\startStaff
				}
				{
					% performer: Viola 04, offset: 4477/32, magnitude: 9/32
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
						a32
					}
				}
				{
					% performer: Viola 04, offset: 2243/16, magnitude: 37/32
					\stopStaff
					r16
					R2. * 1
					r4
					r16.
					\startStaff
				}
				{
					% performer: Viola 04, offset: 4523/32, magnitude: 7/32
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
					% performer: Viola 04, offset: 2265/16, magnitude: 3/16
					\stopStaff
					r16
					r8
					\startStaff
				}
				{
					% performer: Viola 04, offset: 567/4, magnitude: 1/4
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
						a32 \stopTextSpan
						\revert TextSpanner #'bound-details #'left #'text
						\revert TextSpanner #'bound-details #'right #'text
						\revert TextSpanner #'bound-details #'right-broken #'text
						\revert TextSpanner #'dash-fraction
						\revert TextSpanner #'direction
					}
				}
				{
					% performer: Viola 04, offset: 142, magnitude: 5/4
					\stopStaff
					r4
					r4
					R2. * 1
					\startStaff
				}
				{
					% performer: Viola 04, offset: 573/4, magnitude: 7/32
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
					% performer: Viola 04, offset: 4591/32, magnitude: 89/32
					\stopStaff
					r32
					r4
					r4
					R2. * 3
					\startStaff
				}
				{
					% performer: Viola 04, offset: 585/4, magnitude: 5/32
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
					% performer: Viola 04, offset: 4685/32, magnitude: 43/32
					\stopStaff
					r16.
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
				instrumentName = #"Viola 04"
				shortInstrumentName = #"Viola 04"
			} {
				\clef "alto"
				\time 3/4
				\tempo 4 = 66
				\compressFullBarRests
				\mergeDifferentlyDottedOn
				\mergeDifferentlyHeadedOn
				<<
					% performer: Viola 04, offset: 0, magnitude: 7/32
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
								fs'32 \glissando
								s32
								s32
								g'32
							}
						>>
						{
							\pitchedTrill
							eqs''16. * 99/100 :128 \startTrillSpan gqf''
							s16. * 1/100 \stopTrillSpan
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 7/32, magnitude: 17/32
					r32
					r4
					r4
				}
				<<
					% performer: Viola 04, offset: 3/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							g''8 [ ~ ~ \startTrillSpan aqf''
							g''32 * 99/100 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 29/32, magnitude: 1/4
					r16.
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 37/32, magnitude: 7/32
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
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c''32 \glissando
								s32
								s32
								s32
								aqs'32
							}
						>>
						{
							\pitchedTrill
							c''16 * 99/100 :128 \startTrillSpan dqf''
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
					% performer: Viola 04, offset: 11/8, magnitude: 7/8
					r8
					R2. * 1
				}
				<<
					% performer: Viola 04, offset: 9/4, magnitude: 3/16
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
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								c''32 \glissando
								s32
								s32
								bqf'32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af'16 * 99/100 :128 \startTrillSpan bf'
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
						}
						{
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 39/16, magnitude: 21/32
					r16
					r4
					r4
					r16.
				}
				<<
					% performer: Viola 04, offset: 99/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'8 [ ~ ~ \startTrillSpan fqs'
							ef'32 * 99/100 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 13/4, magnitude: 17/32
					r4
					r4
					r32
				}
				<<
					% performer: Viola 04, offset: 121/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							af''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							c''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							c32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							e''32 ] )
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
					% performer: Viola 04, offset: 129/32, magnitude: 11/32
					r16.
					r8
					r8
				}
				<<
					% performer: Viola 04, offset: 35/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'8 * 99/100 \startTrillSpan gqf'
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
					% performer: Viola 04, offset: 9/2, magnitude: 13/32
					r4
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 157/32, magnitude: 1/8
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
								aqf'32 [ (
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
								aqf'32 \glissando
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
							s32 \fppp \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 161/32, magnitude: 3/16
					r16.
					r16.
				}
				<<
					% performer: Viola 04, offset: 167/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							af32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							b'32
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 11/2, magnitude: 7/32
					r8..
				}
				<<
					% performer: Viola 04, offset: 183/32, magnitude: 3/32
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
								d'32 ] )
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
								d'32
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
					% performer: Viola 04, offset: 93/16, magnitude: 15/16
					r16
					r8
					R2. * 1
				}
				<<
					% performer: Viola 04, offset: 27/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							g8 * 99/100 -\accent -\open \startTrillSpan bqf
							s8 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e'16. * 99/100 :128 \startTrillSpan eqs'
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
					% performer: Viola 04, offset: 223/32, magnitude: 7/8
					r32
					r4
					r4
					r4
					r16.
				}
				<<
					% performer: Viola 04, offset: 251/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a'32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							cs32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							a32
							fs'32
							cs''32 ] )
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
					% performer: Viola 04, offset: 259/32, magnitude: 31/32
					r32
					r8
					R2. * 1
					r16
				}
				<<
					% performer: Viola 04, offset: 145/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							f''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
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
					% performer: Viola 04, offset: 295/32, magnitude: 1/16
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
								gqs32 [ (
								e'32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqs32 \glissando
								e'32
							}
						>>
					}
					\context Voice = "span" {
						{
							s32 \fppp
							s32
						}
					}
				>>
				{
					% performer: Viola 04, offset: 297/32, magnitude: 33/32
					r16.
					r8
					r4
					r4
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 165/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							g32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							e'32 -\staccato
							c''32 -\staccato
							a'32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							e''16 [ ~ \startTrillSpan g''
							e''16 * 99/100 ]
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
					% performer: Viola 04, offset: 169/16, magnitude: 33/32
					r16
					r8
					r4
					r4
					r4
					r16.
				}
				<<
					% performer: Viola 04, offset: 371/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							af'32 -\staccato
							cs'32 -\staccato
							fs32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							ef32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							d''32 ] )
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
					% performer: Viola 04, offset: 379/32, magnitude: 31/32
					r32
					r8
					R2. * 1
					r16
				}
				<<
					% performer: Viola 04, offset: 205/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							cs''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							fs'32 -\staccato
							a32 -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							cs32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							cs''32 ] )
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
					% performer: Viola 04, offset: 209/16, magnitude: 7/8
					r16
					r8
					r4
					r4..
				}
				<<
					% performer: Viola 04, offset: 223/16, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							f''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							c32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							b'32
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
					% performer: Viola 04, offset: 455/32, magnitude: 37/32
					r32
					R2. * 1
					r4.
				}
				<<
					% performer: Viola 04, offset: 123/8, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							d''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							fs'32 -\staccato
							g32 -\open -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							af16. * 99/100 \startTrillSpan b
							s16. * 1/100 \stopTrillSpan
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
					% performer: Viola 04, offset: 499/32, magnitude: 15/16
					r32
					r8
					R2. * 1
					r32
				}
				<<
					% performer: Viola 04, offset: 529/32, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							fs'32 -\staccato
							d''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							dqs''16.
						}
						{
							\pitchedTrill
							fqs'16. * 99/100 \startTrillSpan aqs'
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
						}
						{
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
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
					% performer: Viola 04, offset: 539/32, magnitude: 229/32
					r32
					r8
					r4
					R2. * 9
				}
				<<
					% performer: Viola 04, offset: 24, magnitude: 5/32
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
								cs''32 ] )
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
								a'32 \glissando
								s32
								cs''32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							ef'16 * 99/100 :128 \startTrillSpan af'
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
					% performer: Viola 04, offset: 773/32, magnitude: 3/32
					r16.
				}
				<<
					% performer: Viola 04, offset: 97/4, magnitude: 15/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs4 ~
							gqs8..
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							g32 :256 ] ~
							g4.. :32
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 403/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 807/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs'32 [ ~
							dqs'8. ]
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
					% performer: Viola 04, offset: 407/16, magnitude: 5/32
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
								s32
								eqs'32
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
					% performer: Viola 04, offset: 819/32, magnitude: 29/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							c8 -\open [ ~ ~
							c32 ~
							c8 ~ ~
							c32 ]
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqs'16 :128 ] ~
							dqs'4 :32
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
					% performer: Viola 04, offset: 53/2, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf4 ~
							bf16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							a'8. [ ~
							a'8 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 217/8, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 04, offset: 435/16, magnitude: 21/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs'16 ] ~
							aqs'4 ~
							aqs'16
							\revert NoteHead #'style
						}
						{
							d'8. :64 -\open [ ~
							d'16. :128 ]
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
							s32
							s32
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 891/32, magnitude: 3/16
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
								r32
								dqf32 ] )
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
								dqs32 \glissando
								s32
								s32
								s32
								s32
								dqf32
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
					% performer: Viola 04, offset: 897/32, magnitude: 3/16
					r16.
					r16.
				}
				<<
					% performer: Viola 04, offset: 903/32, magnitude: 37/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs'32 [ ~
							eqs'8.. ]
							\revert NoteHead #'style
						}
						{
							g32 -\open [ (
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							aqf32
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							aqf32
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							gqs32
							g32 -\open
							\once \override NoteHead #'style = #'harmonic
							gqs32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bf32 [ (
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							bf32
							\once \override NoteHead #'style = #'harmonic
							aqs32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							d'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bqf8 [ ~ ~
							bqf32 ~
							bqf8 ]
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
					% performer: Viola 04, offset: 235/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 941/32, magnitude: 3/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							d'16. ] ~
							d'4 ~
							d'32
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
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 953/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								eqs32 [
								r32
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
								eqs32 \glissando
								s32
								s32
								s32
								cs32
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
					% performer: Viola 04, offset: 479/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 04, offset: 30, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cs32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato ] )
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
					% performer: Viola 04, offset: 967/32, magnitude: 3/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs'32 ] ~
							dqs'4 ~
							dqs'16.
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 979/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 985/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f'8 [ ~ ~
							f'32 ]
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
					% performer: Viola 04, offset: 495/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							cs''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							fs'32 -\staccato
							af32 -\staccato
							c32 -\open -\staccato ] )
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
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 249/8, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqs'8 [ ~
							aqs'8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							cqs'32 ] ~
							cqs'4
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
					% performer: Viola 04, offset: 127/4, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 1017/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								gqf32 [
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
								gqf32 \glissando
								s32
								s32
								s32
								c'32
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
					% performer: Viola 04, offset: 511/16, magnitude: 9/32
					r16
					r8..
				}
				<<
					% performer: Viola 04, offset: 1031/32, magnitude: 13/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b32 ] ~
							b4 ~
							b8 [ ~ ~
							b32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							dqf'16. ] ~
							dqf'4 ~
							dqf'32
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
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 1057/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							g32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							a'32 -\staccato
							fs''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							d''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							fs'32
							bf32
							d32 ] )
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
					% performer: Viola 04, offset: 1065/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Viola 04, offset: 1069/32, magnitude: 21/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef'16. ] ~
							ef'4 ~
							ef'8 [ ~ ~
							ef'32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqs32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							fqs'32
							\once \override NoteHead #'style = #'harmonic
							g'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							c''16. [ ~
							c''8.. ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1111/32, magnitude: 1/8
					r32
					r16.
				}
				<<
					% performer: Viola 04, offset: 1115/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cs32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							eqs''32 [ ~ \startTrillSpan gqs''
							eqs''16. * 99/100 ]
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
					% performer: Viola 04, offset: 1123/32, magnitude: 25/16
					r32
					r8
					R2. * 1
					r4
					r4
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 1173/32, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fs'16. ] ~
							fs'4 ~
							fs'16
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
				<<
					% performer: Viola 04, offset: 593/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							g''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							b'32 -\staccato
							e'32 -\staccato
							g32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							af32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							bf'32
							\once \override NoteHead #'style = #'harmonic
							fs''32 ] )
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
					% performer: Viola 04, offset: 597/16, magnitude: 17/32
					r16
					r8
					r4
					r16.
				}
				<<
					% performer: Viola 04, offset: 1211/32, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''8 [ ~ ~
							cqs''32 ~
							cqs''16. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							g''32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							gqf''32
							\once \override NoteHead #'style = #'harmonic
							gqs''32
							\once \override NoteHead #'style = #'harmonic
							aqf''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							af''32
							\once \override NoteHead #'style = #'harmonic
							a''32
							\once \override NoteHead #'style = #'harmonic
							af''32
							\once \override NoteHead #'style = #'harmonic
							g''32
							\once \override NoteHead #'style = #'harmonic
							fs''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							cqs''32 [ (
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							cs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							gqs4 ~
							gqs16
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
					% performer: Viola 04, offset: 625/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 1251/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''8 [ ~ ~
							cqs''32 ~
							cqs''16 ]
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
					% performer: Viola 04, offset: 629/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							d''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							cs16 [ ~ \startTrillSpan af
							cs16 * 99/100 ]
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
					% performer: Viola 04, offset: 633/16, magnitude: 19/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs''8. [ ~
							gqs''8 ~ ~
							gqs''32 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							ef''16. :128 [ ~
							ef''8 :64 ~ ~
							ef''32 :256 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1285/32, magnitude: 5/16
					r16.
					r8..
				}
				<<
					% performer: Viola 04, offset: 1295/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							g''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							c''32 -\staccato
							ef'32 -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							af32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							af''32 ] )
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
					% performer: Viola 04, offset: 1303/32, magnitude: 29/32
					r32
					r4
					r4
					r4.
				}
				<<
					% performer: Viola 04, offset: 333/8, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							f32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							cs'32 -\staccato
							a'32 -\staccato
							e''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							a'8 -\open [ ~ ~ \startTrillSpan d''
							a'32 * 99/100 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1341/32, magnitude: 7/16
					r16.
					r4
					r16.
				}
				<<
					% performer: Viola 04, offset: 1355/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							ef''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open -\staccato
							cs'32 -\staccato
							fs32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							cs32 [ ~ \startTrillSpan f
							cs16. * 99/100 ]
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
					% performer: Viola 04, offset: 1363/32, magnitude: 47/32
					r32
					r8
					R2. * 1
					r4
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 705/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							e32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							c'32 -\staccato
							af'32 -\staccato
							ef''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqf'16 [ ~ \startTrillSpan fqs''
							bqf'16 * 99/100 ]
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
					% performer: Viola 04, offset: 709/16, magnitude: 49/32
					r16
					r8
					r4
					r4
					R2. * 1
					r16.
				}
				<<
					% performer: Viola 04, offset: 1467/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a'32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							af'32 -\staccato
							c'32 -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							a32 [ ~ \startTrillSpan aqs
							a16. * 99/100 ]
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
					% performer: Viola 04, offset: 1475/32, magnitude: 43/32
					r32
					r8
					r4
					R2. * 1
					r8.
				}
				<<
					% performer: Viola 04, offset: 759/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							g32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							e''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							e''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							g'32
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
					% performer: Viola 04, offset: 763/16, magnitude: 7/4
					r16
					r4
					R2. * 1
					r4
					r4
					r8.
				}
				<<
					% performer: Viola 04, offset: 791/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							g32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							d'32 -\staccato
							bf'32 -\staccato
							fs''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							aqs'8 * 99/100 \startTrillSpan dqs''
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
					% performer: Viola 04, offset: 795/16, magnitude: 195/32
					r16
					r4
					r4
					R2. * 7
					r4
					r32
				}
				<<
					% performer: Viola 04, offset: 1785/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							g32 -\open -\staccato [ (
							af32 -\staccato
							aqf32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								d32 :256 [
								f32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								d32 \glissando
								f32
							}
						>>
					}
					\context Voice = "span" {
						{
							\once \override Hairpin #'circled-tip = ##t
							s32 \<
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
					% performer: Viola 04, offset: 895/16, magnitude: 41/16
					r16
					r4
					R2. * 3
				}
				<<
					% performer: Viola 04, offset: 117/2, magnitude: 7/32
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
								a''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								b'32 \glissando
								s32
								s32
								a''32
							}
						>>
						{
							\pitchedTrill
							a'16. * 99/100 :128 -\open \startTrillSpan bqf'
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
					% performer: Viola 04, offset: 1879/32, magnitude: 73/32
					r32
					r4
					r4
					R2. * 2
					r4
				}
				<<
					% performer: Viola 04, offset: 61, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 979/16, magnitude: 5/16
					r16
					r4
				}
				<<
					% performer: Viola 04, offset: 123/2, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							cs32 -\accent ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							cs''32 ] )
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
					% performer: Viola 04, offset: 493/8, magnitude: 5/8
					r8
					r4
					r4
				}
				<<
					% performer: Viola 04, offset: 249/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef''32 -\accent -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							af'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1997/32, magnitude: 1/4
					r16.
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 2005/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							fqs32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							fs32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							aqs32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato ] )
							\slurSolid
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
					% performer: Viola 04, offset: 2011/32, magnitude: 9/32
					r32
					r8
					r8
				}
				<<
					% performer: Viola 04, offset: 505/8, magnitude: 5/32
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
								eqs32 -\accent [ (
								r32
								r32
								r32
								g32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqs32 \glissando
								s32
								s32
								s32
								g32
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
					% performer: Viola 04, offset: 2025/32, magnitude: 21/32
					r16.
					r8
					r4
					r8.
				}
				<<
					% performer: Viola 04, offset: 1023/16, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\once \override NoteHead #'style = #'harmonic
							d32 -\accent ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							a32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							a'32 -\open ] )
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
					% performer: Viola 04, offset: 1025/16, magnitude: 47/16
					r16
					r8
					r4
					R2. * 3
					r4
				}
				<<
					% performer: Viola 04, offset: 67, magnitude: 7/32
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
								bf32 ] )
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
								dqf'32 \glissando
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
								gqs32 :256 [
								eqs'32 :256 ]
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
								gqs32 \glissando
								eqs'32
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
					% performer: Viola 04, offset: 2151/32, magnitude: 177/32
					r32
					r4
					R2. * 7
				}
				<<
					% performer: Viola 04, offset: 291/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								g'32 [
								r32
								r32
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
								g'32 \glissando
								s32
								s32
								s32
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mp \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 2335/32, magnitude: 5/32
					r32
					r8
				}
				<<
					% performer: Viola 04, offset: 585/8, magnitude: 1/4
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
								eqf'32 ] )
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
								eqf'32
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
								b'32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								f'32 \glissando
								s32
								s32
								b'32
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
					% performer: Viola 04, offset: 587/8, magnitude: 3/16
					r8
					r16
				}
				<<
					% performer: Viola 04, offset: 1177/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a'32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs32 -\staccato ] )
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
								eqs32 ^ \markup { \italic Pizz. } [
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
								eqs32 \glissando
								s32
								s32
								cs32
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
					% performer: Viola 04, offset: 1181/16, magnitude: 25/32
					r16
					r8
					r4
					r4
					r16.
				}
				<<
					% performer: Viola 04, offset: 2387/32, magnitude: 5/32
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
								bqf32 ]
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
								bqf32
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
					% performer: Viola 04, offset: 299/4, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 04, offset: 1197/16, magnitude: 1/4
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
								af''32 [ (
								r32
								b'32 ] )
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
								af''32 \glissando
								s32
								b'32
							}
						>>
						{
							eqf''32 [ (
							dqf''32
							cs''32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								fs'32 :256 [
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
								fs'32 \glissando
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
					% performer: Viola 04, offset: 1201/16, magnitude: 15/32
					r16
					r8
					r4
					r32
				}
				<<
					% performer: Viola 04, offset: 2417/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								fs'32 [
								r32
								r32
								aqf32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 3)) (left (attach-dir . 0) (padding . 1.5)))
								\override Glissando #'minimum-length = #6
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								fs'32 \glissando
								s32
								s32
								aqf32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								g32 ^ \markup { \italic Pizz. } [
								r32
								r32
								aqs32 ]
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
								g32 \glissando
								s32
								s32
								aqs32
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
					% performer: Viola 04, offset: 2425/32, magnitude: 1/2
					r16.
					r8
					r4
					r32
				}
				<<
					% performer: Viola 04, offset: 2441/32, magnitude: 3/16
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
								aqf'32 ]
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
								s32
								s32
								aqf'32
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
					% performer: Viola 04, offset: 2447/32, magnitude: 1/16
					r32
					r32
				}
				<<
					% performer: Viola 04, offset: 2449/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 [
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
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 \glissando
								s32
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1227/16, magnitude: 9/16
					r16
					r4
					r4
				}
				<<
					% performer: Viola 04, offset: 309/4, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af8 * 99/100 -\accent \startTrillSpan bqf
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
							ef'16 * 99/100 :128 \startTrillSpan eqs'
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
					% performer: Viola 04, offset: 1239/16, magnitude: 21/32
					r16
					r4
					r4
					r16.
				}
				<<
					% performer: Viola 04, offset: 2499/32, magnitude: 1/4
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
								gqs''32 ] )
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
								ef''32 \glissando
								s32
								gqs''32
							}
						>>
						{
							gqf'32 [ (
							fs'32
							f'32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqs'32 :256 [
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
								aqs'32 \glissando
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
						{
							s32
							s32
						}
					}
				>>
				{
					% performer: Viola 04, offset: 2507/32, magnitude: 9/16
					r32
					r8
					r4
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 2525/32, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								af32 [
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
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								af32 \glissando
								s32
								s32
								s32
								cqs'32
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
					}
				>>
				{
					% performer: Viola 04, offset: 1265/16, magnitude: 5/32
					r16
					r16.
				}
				<<
					% performer: Viola 04, offset: 2535/32, magnitude: 7/32
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
								c''32 \glissando
								s32
								s32
								af'32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqs''32 :256 [
								r32
								aqs'32 :256 ]
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
								dqs''32 \glissando
								s32
								aqs'32
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1271/16, magnitude: 3/8
					r16
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 1277/16, magnitude: 1/4
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
								r32
								r32
								e''32 ] )
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
								fs''32 \glissando
								s32
								s32
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
								g''32 :256 [
								a''32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								g''32 \glissando
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
					% performer: Viola 04, offset: 1281/16, magnitude: 3/32
					r16
					r32
				}
				<<
					% performer: Viola 04, offset: 2565/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							f'32 -\staccato [ (
							fs'32 -\staccato
							g'32 -\staccato
							fs'32 -\staccato ] )
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
					% performer: Viola 04, offset: 2569/32, magnitude: 3/16
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
								af''32 [ (
								r32
								e''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								af''32 \glissando
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
								dqf''32 :256 [
								r32
								eqs''32 :256 ]
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
								dqf''32 \glissando
								s32
								eqs''32
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
					% performer: Viola 04, offset: 2575/32, magnitude: 1/16
					r32
					r32
				}
				<<
					% performer: Viola 04, offset: 2577/32, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							fs''32 -\staccato [ (
							g''32 -\staccato
							fs''32 -\staccato
							g''32 -\staccato ] )
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
					% performer: Viola 04, offset: 2581/32, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bqf16. ] ~
							bqf4 ~
							bqf16.
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
					% performer: Viola 04, offset: 2595/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 7/4 {
							\slurDashed
							c32 -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							e''32 -\staccato ] )
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
							s32 \p \>
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 1301/16, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqf'8. [ ~
							eqf'16. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							b8 :64 [ ~ ~
							b32 :256 ~
							b8 :64 ]
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
					% performer: Viola 04, offset: 655/8, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 04, offset: 1311/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							g'32 -\staccato [ (
							fs'32 -\staccato
							f'32 -\staccato
							fs'32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 :256 [
								r32
								r32
								g'32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								aqf32 \glissando
								s32
								s32
								g'32
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
					% performer: Viola 04, offset: 1315/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Viola 04, offset: 659/8, magnitude: 1/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqf''32 [
								r32
								r32
								bf'32 ]
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
								bf'32
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
					% performer: Viola 04, offset: 165/2, magnitude: 7/32
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
								gqf'32 -\accent [ (
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
								gqf'32 \glissando
								s32
								s32
								s32
								b'32
							}
						>>
						{
							\pitchedTrill
							bqs'16 * 99/100 :128 \startTrillSpan fs''
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
					% performer: Viola 04, offset: 2647/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 2653/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							c''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e'32 -\staccato
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							d32 -\staccato ] )
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
					% performer: Viola 04, offset: 2659/32, magnitude: 13/32
					r32
					r8
					r4
				}
				<<
					% performer: Viola 04, offset: 167/2, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								ef32 [
								r32
								r32
								r32
								e32 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								ef32 \glissando
								s32
								s32
								s32
								e32
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
					}
				>>
				{
					% performer: Viola 04, offset: 2677/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 1339/16, magnitude: 1/4
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
								dqf32 [ (
								r32
								r32
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
								dqf32 \glissando
								s32
								s32
								s32
								s32
								a32
							}
						>>
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								dqf32 :256 [
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
								dqf32 \glissando
								fs32
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
					% performer: Viola 04, offset: 1343/16, magnitude: 25/16
					r16
					R2. * 2
				}
				<<
					% performer: Viola 04, offset: 171/2, magnitude: 3/16
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
								gqf''32 -\accent [ (
								r32
								r32
								r32
								r32
								g''32 ] )
								\slurSolid
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								gqf''32 \glissando
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
					% performer: Viola 04, offset: 1371/16, magnitude: 5/16
					r16
					r4
				}
				<<
					% performer: Viola 04, offset: 86, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open -\staccato
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							cs8 [ ~ \startTrillSpan e
							cs16 * 99/100 ]
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
					% performer: Viola 04, offset: 1381/16, magnitude: 1/8
					r16
					r16
				}
				<<
					% performer: Viola 04, offset: 1383/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							d32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							d'32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							eqf''8 * 99/100 \startTrillSpan gqf''
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
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 1387/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							gqf32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							g32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							gqs32 -\staccato ] )
							\slurSolid
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								aqs32 :256 [
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
								aqs32 \glissando
								s32
								g32
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
					% performer: Viola 04, offset: 695/8, magnitude: 15/16
					r8
					R2. * 1
					r16
				}
				<<
					% performer: Viola 04, offset: 1405/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							ef''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							g'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							fs16 [ ~ \startTrillSpan bqf
							fs16 * 99/100 ]
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
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 1409/16, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c'8. [ ~
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
					% performer: Viola 04, offset: 2831/32, magnitude: 9/32
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
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							cs''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							fs'32
							bf32
							d32 ] )
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
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 355/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b4
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
					% performer: Viola 04, offset: 89, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 2853/32, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							dqf32 -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fqs32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							gqs32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs32 -\staccato ] )
							\slurSolid
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
					% performer: Viola 04, offset: 2859/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							e32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g'32 -\staccato
							a'32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf''32 [ ~ \startTrillSpan fs''
							dqf''16. * 99/100 ]
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
					% performer: Viola 04, offset: 2867/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 717/8, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\slurDashed
							g32 -\open -\staccato [ (
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato ] )
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
								gqs'32 :256 ]
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
								gqs'32
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
					% performer: Viola 04, offset: 2873/32, magnitude: 1/8
					r16.
					r32
				}
				<<
					% performer: Viola 04, offset: 2877/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
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
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqf8 [ ~ ~ \startTrillSpan eqs
							eqf32 * 99/100 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1443/16, magnitude: 7/16
					r16
					r4
					r8
				}
				<<
					% performer: Viola 04, offset: 725/8, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							c32 -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							b32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs'32 -\staccato
							a'32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							b'8 * 99/100 \startTrillSpan cs''
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 727/8, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 2909/32, magnitude: 7/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a16. ] ~
							a4 ~
							a16.
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
					% performer: Viola 04, offset: 2923/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							c''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							e'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							c32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							ef'32
							b'32
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
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 2931/32, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b8 [ ~ ~
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
					% performer: Viola 04, offset: 1473/16, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/4 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							d''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 3/4 {
							c32 -\open ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							c'32
							d'32 -\open
							\once \override NoteHead #'style = #'harmonic
							d''32 ] )
						}
						\revert TextScript #'staff-padding
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
					% performer: Viola 04, offset: 369/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							bf'16. * 99/100 -\accent \startTrillSpan dqf''
							s16. * 1/100 \stopTrillSpan
						}
						{
							\pitchedTrill
							c''16 * 99/100 :128 \startTrillSpan d''
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
					% performer: Viola 04, offset: 2957/32, magnitude: 13/32
					r16.
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 1485/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							fs''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							a'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							g32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							f16 [ ~ \startTrillSpan bf
							f16 * 99/100 ]
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
					% performer: Viola 04, offset: 1489/16, magnitude: 1/2
					r16
					r8
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 1497/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							ef32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							g'32 -\staccato
							d''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							af''32 ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							cs''32
							fs'32
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
					% performer: Viola 04, offset: 1501/16, magnitude: 1/2
					r16
					r8
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 1509/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							c32 -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							c'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							ef''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							a'32 -\open ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							fs'32
							b32
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
							s32 \p \>
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 1513/16, magnitude: 1/2
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf'8. [ ~
							dqf'16 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							fs8. :64 [ ~
							fs16 :128 ]
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
					% performer: Viola 04, offset: 1521/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							c32 -\open -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							a'32 -\staccato
							f''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							a'16 -\open [ ~ \startTrillSpan bf'
							a'16 * 99/100 ]
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
					% performer: Viola 04, offset: 1525/16, magnitude: 13/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs8. [ ~
							cqs8.. ]
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
					% performer: Viola 04, offset: 3063/32, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							ef''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							f'32 -\staccato
							bf32 -\staccato
							ef32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							cs32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open
							ef'32
							b'32 ] )
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
					% performer: Viola 04, offset: 3071/32, magnitude: 17/32
					r32
					r2
				}
				<<
					% performer: Viola 04, offset: 193/2, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							fs''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							bf'32 -\staccato
							ef'32 -\staccato
							g32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						{
							a32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							f'32
							c''32
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 387/4, magnitude: 7/16
					r4..
				}
				<<
					% performer: Viola 04, offset: 1555/16, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a'32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							g'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							bf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							d32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 5/4 {
							\once \override NoteHead #'style = #'harmonic
							fs32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							b'32
							a'32 -\open ] )
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
					% performer: Viola 04, offset: 3119/32, magnitude: 25/32
					r32
					R2. * 1
				}
				<<
					% performer: Viola 04, offset: 393/4, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a'32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							fs'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							af32 -\staccato
							c32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							bf16.
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf32 [ ~ \startTrillSpan ef'
							bf16 * 99/100 ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1577/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 04, offset: 789/8, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cs32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							a'32 -\open -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							dqf''16. * 99/100 \startTrillSpan gqs''
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
					% performer: Viola 04, offset: 3163/32, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							b8 [ ~ ~
							b32 ] ~
							b4 ~
							b16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							eqs8. [ ~
							eqs8 ]
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
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 797/8, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							cs''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open -\staccato
							a32 -\staccato
							d32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 3/4 {
							fs32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							d'32
							d'32 -\open
							fs''32 ] )
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 3195/32, magnitude: 15/32
					r32
					r8
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 1605/16, magnitude: 1
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqf8. [ ~
							dqf16 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							gqs32 [ (
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							aqf32
							g32 -\open
							\once \override NoteHead #'style = #'harmonic
							af32
							\once \override NoteHead #'style = #'harmonic
							aqs32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							aqs32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							f'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqf'8. :64 [ ~
							dqf'16 :128 ]
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
							s32 \mp \>
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
					% performer: Viola 04, offset: 1621/16, magnitude: 1/4
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
								bqs'32 [ (
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
								\override NoteHead #'style = #'harmonic
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bqs'32 \glissando
								s32
								cs''32
							}
						>>
						{
							gqf''32 [ (
							eqs''32
							eqf''32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								a''32 :256 [
								f''32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								a''32 \glissando
								f''32
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
					% performer: Viola 04, offset: 1625/16, magnitude: 29/32
					r16
					r8
					r4
					r4...
				}
				<<
					% performer: Viola 04, offset: 3279/32, magnitude: 17/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							f32 ] ~
							f4
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							aqf32 [ (
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							aqs32
							\once \override NoteHead #'style = #'harmonic
							gqs32
							\once \override NoteHead #'style = #'harmonic
							aqf32
							\once \override NoteHead #'style = #'harmonic
							g32
							\once \override NoteHead #'style = #'harmonic
							gqf32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							e8.. ] ~
							e4 ~
							e32
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
							s32
							s32
							s32
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 3313/32, magnitude: 5/32
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
								bf'32 [ (
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
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								bf'32 \glissando
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
								b32 :256 [
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
								b32 \glissando
								eqf'32
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
					% performer: Viola 04, offset: 1659/16, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							ef'16 [ ~
							ef'16. ]
							\revert NoteHead #'style
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
					% performer: Viola 04, offset: 3323/32, magnitude: 9/16
					r32
					r8
					r4
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 3341/32, magnitude: 23/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs'16. ] ~
							eqs'4 ~
							eqs'16
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							dqs''8. :64 [ ~
							dqs''8 :64 ]
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
						}
					}
				>>
				<<
					% performer: Viola 04, offset: 841/8, magnitude: 1/4
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
								aqs32 ] )
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
								bf32 \glissando
								s32
								aqs32
							}
						>>
						{
							aqs32 [ (
							bqf32
							aqs32 ] )
						}
						<<
							\new Voice \with {
								\override Accidental #'stencil = ##f
								\override NoteHead #'transparent = ##t
								\override Rest #'transparent = ##t
							} {
								#(set-accidental-style 'neo-modern)
								cs32 :256 [
								g32 :256 ]
							}
							\new Voice \with {
								\override Beam #'stencil = ##f
								\override Dots #'stencil = ##f
								\override Glissando #'style = #'zigzag
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								cs32 \glissando
								g32
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
					% performer: Viola 04, offset: 843/8, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							gqs'8 [ ~
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \mf \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 845/8, magnitude: 21/16
					r8
					R2. * 1
					r4..
				}
				<<
					% performer: Viola 04, offset: 1711/16, magnitude: 1
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							aqf''16 [ ~
							aqf''8.. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							d''32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							dqs''32
							\once \override NoteHead #'style = #'harmonic
							ef''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqs''4 :32 ~
							dqs''8. :64
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
					% performer: Viola 04, offset: 1727/16, magnitude: 51/32
					r16
					R2. * 2
					r32
				}
				<<
					% performer: Viola 04, offset: 3505/32, magnitude: 47/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							e'8.. ] ~
							e'4 ~
							e'32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							b'32 [ (
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							ef''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							eqf''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							b'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							dqf''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							dqs''8 :64 ] ~
							dqs''4 :32
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
					% performer: Viola 04, offset: 111, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 3553/32, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							d'8.. -\open [ ~
							d'32 ]
						}
						{
							\override NoteHead #'style = #'harmonic
							gqf''8.. :64 [ ~
							gqf''8 :64 ~ ~
							gqf''32 :256 ]
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
					% performer: Viola 04, offset: 3573/32, magnitude: 1/4
					r16.
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 3581/32, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							af''16. [ ~
							af''8. ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							e''32 [ (
							\once \override NoteHead #'style = #'harmonic
							dqs''32
							\once \override NoteHead #'style = #'harmonic
							cs''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32
							\once \override NoteHead #'style = #'harmonic
							bqs'32
							\once \override NoteHead #'style = #'harmonic
							c''32
							\once \override NoteHead #'style = #'harmonic
							d''32
							\once \override NoteHead #'style = #'harmonic
							cqs''32 ] )
						}
						{
							\once \override NoteHead #'style = #'harmonic
							eqf''32 [ (
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							f''32
							\once \override NoteHead #'style = #'harmonic
							fqs''32
							\once \override NoteHead #'style = #'harmonic
							e''32
							\once \override NoteHead #'style = #'harmonic
							eqs''32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							bf'16 :128 ] ~
							bf'4 :32 ~
							bf'8 :64
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
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 905/8, magnitude: 3/16
					r8
					r16
				}
				<<
					% performer: Viola 04, offset: 1813/16, magnitude: 1/4
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
								dqf'32 \glissando
								s32
								g'32
							}
						>>
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							d16. :128 [ ~ \startTrillSpan ef
							d16 * 99/100 :128 ]
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
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1817/16, magnitude: 13/32
					r16
					r8
					r8..
				}
				<<
					% performer: Viola 04, offset: 3647/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs32 -\accent [ ~ \startTrillSpan aqs
							eqs8 * 99/100 ]
							s8 * 1/100 \stopTrillSpan
							\revert NoteHead #'style
							\revert TrillPitchHead #'stencil
							\revert TrillPitchHead #'text
						}
						{
							\pitchedTrill
							ef'16 * 99/100 :128 \startTrillSpan fqs'
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
					% performer: Viola 04, offset: 1827/16, magnitude: 9/16
					r16
					r4
					r4
				}
				<<
					% performer: Viola 04, offset: 459/4, magnitude: 3/16
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
								cs'32 \glissando
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
					% performer: Viola 04, offset: 1839/16, magnitude: 31/32
					r16
					r4
					r4
					r4
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 3709/32, magnitude: 1/8
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
								fqs32 -\accent [ (
								r32
								r32
								cs32 ] )
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
								fqs32 \glissando
								s32
								s32
								cs32
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
					% performer: Viola 04, offset: 3713/32, magnitude: 19/8
					r16.
					r8
					R2. * 2
					r4
					r4
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 3789/32, magnitude: 19/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							g''16. ] ~
							g''4
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							f''4 :32
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 119, magnitude: 5/16
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 1909/16, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							eqs'8. [ ~
							eqs'8.. ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							g''32 ] ~
							g''4 ~
							g''16.
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
							s32
							s32
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 3843/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 961/8, magnitude: 19/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a''8 [ ~
							a''8 ~ ~
							a''32 ]
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqf'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							f'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							af'32
							\once \override NoteHead #'style = #'harmonic
							aqf'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							aqf'8 :64 [ ~ ~
							aqf'32 :256 ] ~
							aqf'4 :32 ~
							aqf'16 :128
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 1941/16, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 3883/32, magnitude: 25/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs'8 [ ~ ~
							fqs'32 ~
							fqs'8 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							bqs'8 ] ~
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
					% performer: Viola 04, offset: 977/8, magnitude: 5/8
					r8
					r2
				}
				<<
					% performer: Viola 04, offset: 491/4, magnitude: 7/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							cqs''4 ~
							cqs''32
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							dqs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							e'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							g'32
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							gqs'32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							f'32 ] )
						}
						{
							g8 :64 -\open [ ~
							g8 :64 ]
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
					% performer: Viola 04, offset: 989/8, magnitude: 3/8
					r8
					r4
				}
				<<
					% performer: Viola 04, offset: 124, magnitude: 39/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							bf4 ~
							bf8.
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							fs'32 [ (
							\once \override NoteHead #'style = #'harmonic
							gqf'32
							\once \override NoteHead #'style = #'harmonic
							eqs'32
							\once \override NoteHead #'style = #'harmonic
							dqs'32
							\once \override NoteHead #'style = #'harmonic
							dqf'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							ef'32
							\once \override NoteHead #'style = #'harmonic
							d'32
							\once \override NoteHead #'style = #'harmonic
							cqs'32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							c'32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							c'8.. :64 [ ~
							c'8.. :64 ]
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
					% performer: Viola 04, offset: 4007/32, magnitude: 1/32
					r32
				}
				<<
					% performer: Viola 04, offset: 501/4, magnitude: 5/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							dqs4
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							b4 ~
							b8
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
					% performer: Viola 04, offset: 1007/8, magnitude: 5/32
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 4033/32, magnitude: 9/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							fqs8.. [ ~
							fqs16 ]
							\revert NoteHead #'style
						}
						{
							\override NoteHead #'style = #'harmonic
							fqs8. [ ~
							fqs16. ]
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
					% performer: Viola 04, offset: 4051/32, magnitude: 1/8
					r32
					r16.
				}
				<<
					% performer: Viola 04, offset: 4055/32, magnitude: 9/8
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							c'32 ] ~
							c'4..
							\revert NoteHead #'style
						}
						{
							\once \override NoteHead #'style = #'harmonic
							bqf32 [ (
							\once \override NoteHead #'style = #'harmonic
							bf32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							aqs32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							b32
							\once \override NoteHead #'style = #'harmonic
							bqs32
							\once \override NoteHead #'style = #'harmonic
							c'32
							\once \override NoteHead #'style = #'harmonic
							bqf32
							\once \override NoteHead #'style = #'harmonic
							b32 ] )
						}
						{
							\override NoteHead #'style = #'harmonic
							eqf'8.. :64 [ ~
							eqf'16. :128 ]
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
							s32 \p \>
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
					% performer: Viola 04, offset: 4091/32, magnitude: 3/16
					r32
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 4097/32, magnitude: 15/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							a'8.. ] ~
							a'4
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
					% performer: Viola 04, offset: 257/2, magnitude: 9/2
					r4
					r4
					R2. * 5
					r4
				}
				<<
					% performer: Viola 04, offset: 133, magnitude: 5/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							d32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							a32 -\staccato
							d'32 -\open -\staccato
							b'32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							aqs'16.
							\revert NoteHead #'style
						}
						{
							\pitchedTrill
							bf'32 [ ~ \startTrillSpan cqs''
							bf'16 * 99/100 ]
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
							s32
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
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
					% performer: Viola 04, offset: 2133/16, magnitude: 9/4
					r16
					r8
					R2. * 2
					r4
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 2169/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							fs''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							a'32 -\staccato
							d'32 -\staccato
							fs32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							bf16 [ ~ \startTrillSpan c'
							bf16 * 99/100 ]
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
					% performer: Viola 04, offset: 2173/16, magnitude: 1
					r16
					r8
					r4
					r4
					r4
					r16
				}
				<<
					% performer: Viola 04, offset: 2189/16, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							f32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							g'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							f''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							eqs''16 [ ~ \startTrillSpan af''
							eqs''16 * 99/100 ]
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
					% performer: Viola 04, offset: 2193/16, magnitude: 13/16
					r16
					r8
					r4
					r4
					r8
				}
				<<
					% performer: Viola 04, offset: 1103/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							af'16. * 99/100 -\accent \startTrillSpan c''
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
							af'32 :256 [ ~ \startTrillSpan aqs'
							af'16 * 99/100 :128 ]
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
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 2209/16, magnitude: 1/8
					r16
					r16
				}
				<<
					% performer: Viola 04, offset: 2211/16, magnitude: 3/16
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
								af'32 -\accent [ (
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
								af'32 \glissando
								s32
								dqs'32
							}
						>>
						{
							\pitchedTrill
							b'16. * 99/100 :128 \startTrillSpan f''
							s16. * 1/100 \stopTrillSpan
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
					% performer: Viola 04, offset: 1107/8, magnitude: 3/16
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						\fraction \times 3/2 {
							\slurDashed
							\once \override NoteHead #'style = #'harmonic
							cs''32 -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							\once \override NoteHead #'style = #'harmonic
							f'32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							a32 -\staccato
							\once \override NoteHead #'style = #'harmonic
							cs32 -\staccato ] )
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
					% performer: Viola 04, offset: 2217/16, magnitude: 1/16
					r16
				}
				<<
					% performer: Viola 04, offset: 1109/8, magnitude: 1/8
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
								eqf''32 -\accent [ (
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
								\override Stem #'stencil = ##f
							} {
								#(set-accidental-style 'neo-modern)
								eqf''32 \glissando
								s32
								s32
								eqs''32
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
					% performer: Viola 04, offset: 555/4, magnitude: 37/32
					R2. * 1
					r4
					r8
					r32
				}
				<<
					% performer: Viola 04, offset: 4477/32, magnitude: 9/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							fs32 -\staccato ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							g32 -\open -\staccato
							a'32 -\staccato
							f''32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						{
							\pitchedTrill
							bqf'8 [ ~ ~ \startTrillSpan bqs'
							bqf'32 * 99/100 ]
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
							\once \override Hairpin #'circled-tip = ##t
							s32 \p \>
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 2243/16, magnitude: 37/32
					r16
					R2. * 1
					r4
					r16.
				}
				<<
					% performer: Viola 04, offset: 4523/32, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						\override TextScript #'staff-padding = #6
						{
							\slurDashed
							a'32 -\open -\staccato ^ \markup { \fontsize #-3.0 (I-II-III-IV) } [ (
							d'32 -\open -\staccato
							g32 -\open -\staccato
							\once \override NoteHead #'style = #'harmonic
							fs32 -\staccato ] )
							\slurSolid
						}
						\revert TextScript #'staff-padding
						\override TextScript #'staff-padding = #6
						\fraction \times 3/4 {
							\once \override NoteHead #'style = #'harmonic
							d32 ^ \markup { \fontsize #-3.0 (IV-III-II-I) } [ (
							\once \override NoteHead #'style = #'harmonic
							bf32
							\once \override NoteHead #'style = #'harmonic
							fs'32
							\once \override NoteHead #'style = #'harmonic
							d''32 ] )
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
						}
						{
							s32
							s32
							s32 \!
						}
					}
				>>
				{
					% performer: Viola 04, offset: 2265/16, magnitude: 3/16
					r16
					r8
				}
				<<
					% performer: Viola 04, offset: 567/4, magnitude: 1/4
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bqf'16. * 99/100 -\accent \startTrillSpan fqs''
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
								fs'32 [
								r32
								bqf'32 ]
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
								s32
								bqf'32
							}
						>>
						{
							\pitchedTrill
							aqs16 * 99/100 :128 \startTrillSpan bqs
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
					% performer: Viola 04, offset: 142, magnitude: 5/4
					r4
					r4
					R2. * 1
				}
				<<
					% performer: Viola 04, offset: 573/4, magnitude: 7/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							aqs8 -\accent [ ~ ~ \startTrillSpan d'
							aqs32 * 99/100 ]
							s32 * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							d16 * 99/100 :128 \startTrillSpan g
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
					% performer: Viola 04, offset: 4591/32, magnitude: 89/32
					r32
					r4
					r4
					R2. * 3
				}
				<<
					% performer: Viola 04, offset: 585/4, magnitude: 5/32
					\new Voice {
						#(set-accidental-style 'neo-modern)
						{
							\pitchedTrill
							cqs''16. * 99/100 -\accent \startTrillSpan eqs''
							s16. * 1/100 \stopTrillSpan
						}
						{
							\override NoteHead #'style = #'harmonic
							\override TrillPitchHead #'stencil = #ly:text-interface::print
							\override TrillPitchHead #'text = #(markup #:musicglyph "noteheads.s0harmonic" )
							\pitchedTrill
							bf'16 * 99/100 :128 \startTrillSpan d''
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
					% performer: Viola 04, offset: 4685/32, magnitude: 43/32
					r16.
					r4
					r4
					R2. * 1
					\bar "|."
				}
			}
		>>
	>>
}