% 2014-01-07 18:31

\version "2.19.0"
\language "english"

#(set-default-paper-size "11x17" 'portrait)
#(set-global-staff-size 7.75)

\header {
	composer = #"Josiah Wolf Oberholtzer (1984)"
	dedication = #"for Ensemble Kaleidoskop"
	subtitle = #"for String Orchestra"
	title = #"mbrsi/aurora"
}

\layout {}

\paper {
	evenFooterMarkup = \markup {
		\fill-line
			{
				
				mbrsi/aurora
				" - josiah wolf oberholtzer"
			}
		}
	indent = #0
	left-margin = 1.5\in
	max-systems-per-page = #1
	minimal-page-breaking = ##t
	oddFooterMarkup = \markup {
		\fill-line
			{
				"josiah wolf oberholtzer - "
				mbrsi/aurora
				
			}
		}
	print-page-number = ##t
	ragged-bottom = ##f
	ragged-last-bottom = ##f
	ragged-right = ##f
	right-margin = 1\in
	tagline = ##f
}

\score {
	\new Score \with {
		\remove Bar_number_engraver
		\override BarLine #'layer = #5
		\override BarNumber #'break-visibility = #'#(#f #t #t)
		\override BarNumber #'font-size = #4
		\override BarNumber #'padding = #5
		\override BarNumber #'self-alignment-X = #CENTER
		\override BarNumber #'stencil = #"(make-stencil-boxer 0.1 1.0 ly:text-interface::print)"
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
		beatLength = #(ly:make-moment 1 4)
		harmonicDots = ##t
		subdivideBeams = ##t
	} <<
		\new StaffGroup <<
			\context StaffGroup = "Violin 01" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\consists Bar_number_engraver
					\override BarNumber #'outside-staff-priority = #1000
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 01, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(15, 32)
					{
						\stopStaff
						r4...
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(15, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 01, offset: durationtools.Offset(19, 32), duration: durationtools.Duration(1, 2)
					{
						\stopStaff
						r32
						r8
						r4
						r16.
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(35, 32), duration: durationtools.Duration(3, 16)
					{
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
							c'32
						}
					}
					% performer: Violin 01, offset: durationtools.Offset(41, 32), duration: durationtools.Duration(17, 32)
					{
						\stopStaff
						r16.
						r8
						r4
						r16
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(29, 16), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 01, offset: durationtools.Offset(2, 1), duration: durationtools.Duration(1, 2)
					{
						\stopStaff
						r4
						r4
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 01, offset: durationtools.Offset(21, 8), duration: durationtools.Duration(5, 16)
					{
						\stopStaff
						r8
						r8.
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(47, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 01, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(21, 32)
					{
						\stopStaff
						r32
						r8
						r4
						r4
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(15, 4), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 01, offset: durationtools.Offset(125, 32), duration: durationtools.Duration(11, 32)
					{
						\stopStaff
						r16.
						r4
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(17, 4), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 01, offset: durationtools.Offset(35, 8), duration: durationtools.Duration(13, 16)
					{
						\stopStaff
						r8
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 01, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(17, 16)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 01, offset: durationtools.Offset(203, 32), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 01, offset: durationtools.Offset(103, 16), duration: durationtools.Duration(77, 16)
					{
						\stopStaff
						r16
						r4
						R2. * 6
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 01"
					shortInstrumentName = #"Violin 01"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 01, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(15, 32)
					{
						r4...
					}
					% performer: Violin 01, offset: durationtools.Offset(15, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								a''32 [ ~ \startTrillSpan d'''
								a''16. * 99/100 ]
								s16. * 1/100 \stopTrillSpan
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
					% performer: Violin 01, offset: durationtools.Offset(19, 32), duration: durationtools.Duration(1, 2)
					{
						r32
						r8
						r4
						r16.
					}
					% performer: Violin 01, offset: durationtools.Offset(35, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								af''8 * 99/100 \startTrillSpan d'''
								s8 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								bqf''32 :256 [ ~ \startTrillSpan dqs'''
								bqf''32 * 99/100 :256 ]
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
								s32 \fp \>
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
					% performer: Violin 01, offset: durationtools.Offset(41, 32), duration: durationtools.Duration(17, 32)
					{
						r16.
						r8
						r4
						r16
					}
					% performer: Violin 01, offset: durationtools.Offset(29, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								aqs''8. * 99/100 \startTrillSpan ef'''
								s8. * 1/100 \stopTrillSpan
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
								s32 \!
							}
						}
					>>
					% performer: Violin 01, offset: durationtools.Offset(2, 1), duration: durationtools.Duration(1, 2)
					{
						r4
						r4
					}
					% performer: Violin 01, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									e''32 [ (
									r32
									r32
									gqf''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									e''32 \glissando
									s32
									s32
									gqf''32
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
					% performer: Violin 01, offset: durationtools.Offset(21, 8), duration: durationtools.Duration(5, 16)
					{
						r8
						r8.
					}
					% performer: Violin 01, offset: durationtools.Offset(47, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								e''16 -\open [ ~ \startTrillSpan fqs''
								e''16. * 99/100 ]
								s16. * 1/100 \stopTrillSpan
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
					% performer: Violin 01, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(21, 32)
					{
						r32
						r8
						r4
						r4
					}
					% performer: Violin 01, offset: durationtools.Offset(15, 4), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									f''32 [ (
									r32
									r32
									r32
									bqf''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									f''32 \glissando
									s32
									s32
									s32
									bqf''32
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
					% performer: Violin 01, offset: durationtools.Offset(125, 32), duration: durationtools.Duration(11, 32)
					{
						r16.
						r4
					}
					% performer: Violin 01, offset: durationtools.Offset(17, 4), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									af''32 [ (
									r32
									r32
									aqf''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									af''32 \glissando
									s32
									s32
									aqf''32
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
					% performer: Violin 01, offset: durationtools.Offset(35, 8), duration: durationtools.Duration(13, 16)
					{
						r8
						r4
						r4
						r8.
					}
					% performer: Violin 01, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								bqs'16 [ ~ \startTrillSpan gqf''
								bqs'32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 01, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(17, 16)
					{
						r16.
						r8
						r4
						r4
						r4
						r16.
					}
					% performer: Violin 01, offset: durationtools.Offset(203, 32), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g''32 [ (
									r32
									cs'''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									g''32 \glissando
									s32
									cs'''32
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
					% performer: Violin 01, offset: durationtools.Offset(103, 16), duration: durationtools.Duration(77, 16)
					{
						r16
						r4
						R2. * 6
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 02" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 02, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 02, offset: durationtools.Offset(3, 16), duration: durationtools.Duration(3, 32)
					{
						\stopStaff
						r16
						r32
						\startStaff
					}
					% performer: Violin 02, offset: durationtools.Offset(9, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 02, offset: durationtools.Offset(7, 16), duration: durationtools.Duration(13, 8)
					{
						\stopStaff
						r16
						r4
						R2. * 1
						r4
						r4
						r16
						\startStaff
					}
					% performer: Violin 02, offset: durationtools.Offset(33, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 02, offset: durationtools.Offset(71, 32), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r32
						r32
						\startStaff
					}
					% performer: Violin 02, offset: durationtools.Offset(73, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 02, offset: durationtools.Offset(79, 32), duration: durationtools.Duration(5, 8)
					{
						\stopStaff
						r32
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 02, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(1, 8)
					{
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
					% performer: Violin 02, offset: durationtools.Offset(103, 32), duration: durationtools.Duration(5, 32)
					{
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
						}
					}
					% performer: Violin 02, offset: durationtools.Offset(27, 8), duration: durationtools.Duration(15, 16)
					{
						\stopStaff
						r8
						r4
						r4
						r4
						r16
						\startStaff
					}
					% performer: Violin 02, offset: durationtools.Offset(69, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 02, offset: durationtools.Offset(71, 16), duration: durationtools.Duration(21, 32)
					{
						\stopStaff
						r16
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 02, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 02, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(41, 8)
					{
						\stopStaff
						r32
						R2. * 6
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 02, offset: durationtools.Offset(331, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 02, offset: durationtools.Offset(333, 32), duration: durationtools.Duration(27, 32)
					{
						\stopStaff
						r16.
						R2. * 1
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 02"
					shortInstrumentName = #"Violin 02"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 02, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								aqs'8 * 99/100 \startTrillSpan dqf''
								s8 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\pitchedTrill
								d'16 * 99/100 :128 -\open \startTrillSpan a'
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
					% performer: Violin 02, offset: durationtools.Offset(3, 16), duration: durationtools.Duration(3, 32)
					{
						r16
						r32
					}
					% performer: Violin 02, offset: durationtools.Offset(9, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								gqs''8 [ ~ ~ \startTrillSpan aqs''
								gqs''32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
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
					% performer: Violin 02, offset: durationtools.Offset(7, 16), duration: durationtools.Duration(13, 8)
					{
						r16
						r4
						R2. * 1
						r4
						r4
						r16
					}
					% performer: Violin 02, offset: durationtools.Offset(33, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									b'32 [ (
									r32
									cqs''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									b'32 \glissando
									s32
									cqs''32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fqs'16 * 99/100 :128 \startTrillSpan gqs'
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
					% performer: Violin 02, offset: durationtools.Offset(71, 32), duration: durationtools.Duration(1, 16)
					{
						r32
						r32
					}
					% performer: Violin 02, offset: durationtools.Offset(73, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqf''32 [ (
									r32
									r32
									r32
									r32
									eqf'''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqf''32 \glissando
									s32
									s32
									s32
									s32
									eqf'''32
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
								s32 \!
							}
						}
					>>
					% performer: Violin 02, offset: durationtools.Offset(79, 32), duration: durationtools.Duration(5, 8)
					{
						r32
						r4
						r4
						r16.
					}
					% performer: Violin 02, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								bqf'8 * 99/100 \startTrillSpan c''
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
					% performer: Violin 02, offset: durationtools.Offset(103, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a''32 [ (
									r32
									dqs''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									a''32 \glissando
									s32
									dqs''32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								dqs'16 * 99/100 :128 \startTrillSpan fs'
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
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 02, offset: durationtools.Offset(27, 8), duration: durationtools.Duration(15, 16)
					{
						r8
						r4
						r4
						r4
						r16
					}
					% performer: Violin 02, offset: durationtools.Offset(69, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								af'8 * 99/100 \startTrillSpan aqf'
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
					% performer: Violin 02, offset: durationtools.Offset(71, 16), duration: durationtools.Duration(21, 32)
					{
						r16
						r4
						r4
						r16.
					}
					% performer: Violin 02, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									fqs''32 [ (
									r32
									r32
									c''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									fqs''32 \glissando
									s32
									s32
									c''32
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
					% performer: Violin 02, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(41, 8)
					{
						r32
						R2. * 6
						r4
						r4
						r16.
					}
					% performer: Violin 02, offset: durationtools.Offset(331, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								bqs16 * 99/100 \startTrillSpan fqs'
								s16 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp
								s32
							}
						}
					>>
					% performer: Violin 02, offset: durationtools.Offset(333, 32), duration: durationtools.Duration(27, 32)
					{
						r16.
						R2. * 1
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 03" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 03, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(7, 16)
					{
						\stopStaff
						r4..
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(7, 16), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 03, offset: durationtools.Offset(5, 8), duration: durationtools.Duration(59, 32)
					{
						\stopStaff
						r8
						R2. * 2
						r8..
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(79, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 03, offset: durationtools.Offset(83, 32), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(21, 8), duration: durationtools.Duration(3, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							c'32 \glissando \startTextSpan
							s32
							a32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Violin 03, offset: durationtools.Offset(45, 16), duration: durationtools.Duration(5, 16)
					{
						\stopStaff
						r16
						r8
						r8
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(25, 8), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 03, offset: durationtools.Offset(105, 32), duration: durationtools.Duration(11, 16)
					{
						\stopStaff
						r16.
						r8
						r4
						r8..
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(127, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 03, offset: durationtools.Offset(33, 8), duration: durationtools.Duration(19, 32)
					{
						\stopStaff
						r8
						r4
						r8..
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(151, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 03, offset: durationtools.Offset(155, 32), duration: durationtools.Duration(3, 32)
					{
						\stopStaff
						r32
						r16
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(79, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 03, offset: durationtools.Offset(81, 16), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 03, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(99, 32)
					{
						\stopStaff
						r32
						R2. * 4
						r16
						\startStaff
					}
					% performer: Violin 03, offset: durationtools.Offset(133, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 03, offset: durationtools.Offset(269, 32), duration: durationtools.Duration(91, 32)
					{
						\stopStaff
						r16.
						r4
						r4
						R2. * 3
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 03"
					shortInstrumentName = #"Violin 03"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 03, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(7, 16)
					{
						r4..
					}
					% performer: Violin 03, offset: durationtools.Offset(7, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								bf'16 [ ~ \startTrillSpan dqs''
								bf'8 * 99/100 ]
								s8 * 1/100 \stopTrillSpan
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
					% performer: Violin 03, offset: durationtools.Offset(5, 8), duration: durationtools.Duration(59, 32)
					{
						r8
						R2. * 2
						r8..
					}
					% performer: Violin 03, offset: durationtools.Offset(79, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								aqs'32 [ ~ \startTrillSpan bqf'
								aqs'16. * 99/100 ]
								s16. * 1/100 \stopTrillSpan
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
					% performer: Violin 03, offset: durationtools.Offset(83, 32), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Violin 03, offset: durationtools.Offset(21, 8), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									d'32 [ (
									r32
									aqs32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									d'32 \glissando
									s32
									aqs32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								g'32 :256 [ ~ \startTrillSpan d''
								g'16 * 99/100 :128 ]
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 03, offset: durationtools.Offset(45, 16), duration: durationtools.Duration(5, 16)
					{
						r16
						r8
						r8
					}
					% performer: Violin 03, offset: durationtools.Offset(25, 8), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									d'32 [ (
									r32
									r32
									r32
									d''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									d'32 \glissando
									s32
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
								s32 \fp \>
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 03, offset: durationtools.Offset(105, 32), duration: durationtools.Duration(11, 16)
					{
						r16.
						r8
						r4
						r8..
					}
					% performer: Violin 03, offset: durationtools.Offset(127, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a32 [ (
									r32
									g'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									a32 \glissando
									s32
									g'32
								}
							>>
							{
								\pitchedTrill
								bf16 * 99/100 :128 \startTrillSpan eqs'
								s16 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 03, offset: durationtools.Offset(33, 8), duration: durationtools.Duration(19, 32)
					{
						r8
						r4
						r8..
					}
					% performer: Violin 03, offset: durationtools.Offset(151, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									d''32 [ (
									r32
									r32
									bqf'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									d''32 \glissando
									s32
									s32
									bqf'32
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
					% performer: Violin 03, offset: durationtools.Offset(155, 32), duration: durationtools.Duration(3, 32)
					{
						r32
						r16
					}
					% performer: Violin 03, offset: durationtools.Offset(79, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								dqf''16 [ ~ \startTrillSpan e''
								dqf''16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
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
					% performer: Violin 03, offset: durationtools.Offset(81, 16), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Violin 03, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								gqs''8 * 99/100 \startTrillSpan bqs''
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 03, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(99, 32)
					{
						r32
						R2. * 4
						r16
					}
					% performer: Violin 03, offset: durationtools.Offset(133, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g'32 [ (
									r32
									aqs32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									g'32 \glissando
									s32
									aqs32
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
					% performer: Violin 03, offset: durationtools.Offset(269, 32), duration: durationtools.Duration(91, 32)
					{
						r16.
						r4
						r4
						R2. * 3
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 04" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 04, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r16
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 04, offset: durationtools.Offset(3, 16), duration: durationtools.Duration(21, 32)
					{
						\stopStaff
						r16
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(27, 32), duration: durationtools.Duration(7, 32)
					{
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
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							a32 \glissando \startTextSpan
							c'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Violin 04, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(1, 8)
					{
						\stopStaff
						r16
						r16
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(19, 16), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Violin 04, offset: durationtools.Offset(45, 32), duration: durationtools.Duration(25, 32)
					{
						\stopStaff
						r16.
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(35, 16), duration: durationtools.Duration(3, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							e'32 \glissando \startTextSpan
							s32
							g'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Violin 04, offset: durationtools.Offset(19, 8), duration: durationtools.Duration(1, 8)
					{
						\stopStaff
						r8
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 04, offset: durationtools.Offset(43, 16), duration: durationtools.Duration(35, 32)
					{
						\stopStaff
						r16
						r4
						R2. * 1
						r32
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(121, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 04, offset: durationtools.Offset(125, 32), duration: durationtools.Duration(5, 4)
					{
						\stopStaff
						r16.
						r4
						r4
						r4
						r4
						r8
						r32
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(165, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 04, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(23, 16)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						r4
						r4
						r8..
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(215, 32), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 04, offset: durationtools.Offset(109, 16), duration: durationtools.Duration(105, 32)
					{
						\stopStaff
						r16
						r8
						r4
						r4
						R2. * 3
						r4
						r16.
						\startStaff
					}
					% performer: Violin 04, offset: durationtools.Offset(323, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 04, offset: durationtools.Offset(325, 32), duration: durationtools.Duration(35, 32)
					{
						\stopStaff
						r16.
						r4
						R2. * 1
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 04"
					shortInstrumentName = #"Violin 04"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 04, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						r16
					}
					% performer: Violin 04, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a32 [ (
									r32
									r32
									f'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									a32 \glissando
									s32
									s32
									f'32
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
					% performer: Violin 04, offset: durationtools.Offset(3, 16), duration: durationtools.Duration(21, 32)
					{
						r16
						r4
						r4
						r16.
					}
					% performer: Violin 04, offset: durationtools.Offset(27, 32), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								g'8 [ ~ ~ \startTrillSpan aqs'
								g'32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								cqs'16 * 99/100 :128 \startTrillSpan dqs'
								s16 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 04, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(1, 8)
					{
						r16
						r16
					}
					% performer: Violin 04, offset: durationtools.Offset(19, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									d''32 [ (
									r32
									r32
									r32
									fqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									d''32 \glissando
									s32
									s32
									s32
									fqs'32
								}
							>>
							{
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								g16 * 99/100 :128 -\open \startTrillSpan bqf
								s16 * 1/100 \stopTrillSpan
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
					% performer: Violin 04, offset: durationtools.Offset(45, 32), duration: durationtools.Duration(25, 32)
					{
						r16.
						r4
						r4
						r8.
					}
					% performer: Violin 04, offset: durationtools.Offset(35, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									d'32 [ (
									r32
									fqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									d'32 \glissando
									s32
									fqs'32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								aqs16. * 99/100 :128 \startTrillSpan d'
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
							}
							{
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 04, offset: durationtools.Offset(19, 8), duration: durationtools.Duration(1, 8)
					{
						r8
					}
					% performer: Violin 04, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									dqs'32 [ (
									r32
									r32
									r32
									r32
									eqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									dqs'32 \glissando
									s32
									s32
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
								s32 \fp \>
								s32
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 04, offset: durationtools.Offset(43, 16), duration: durationtools.Duration(35, 32)
					{
						r16
						r4
						R2. * 1
						r32
					}
					% performer: Violin 04, offset: durationtools.Offset(121, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								gqs'8 * 99/100 \startTrillSpan d''
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
					% performer: Violin 04, offset: durationtools.Offset(125, 32), duration: durationtools.Duration(5, 4)
					{
						r16.
						r4
						r4
						r4
						r4
						r8
						r32
					}
					% performer: Violin 04, offset: durationtools.Offset(165, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								eqs'16. [ ~ \startTrillSpan fs'
								eqs'32 * 99/100 ]
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 04, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(23, 16)
					{
						r16.
						r8
						r4
						r4
						r4
						r4
						r8..
					}
					% performer: Violin 04, offset: durationtools.Offset(215, 32), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								d''32 [ ~ \startTrillSpan fqs''
								d''16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
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
					% performer: Violin 04, offset: durationtools.Offset(109, 16), duration: durationtools.Duration(105, 32)
					{
						r16
						r8
						r4
						r4
						R2. * 3
						r4
						r16.
					}
					% performer: Violin 04, offset: durationtools.Offset(323, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								eqs'16 * 99/100 \startTrillSpan fqs'
								s16 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" {
							{
								s32 \fp
								s32
							}
						}
					>>
					% performer: Violin 04, offset: durationtools.Offset(325, 32), duration: durationtools.Duration(35, 32)
					{
						r16.
						r4
						R2. * 1
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 05" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 05, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r16
						\startStaff
					}
					% performer: Violin 05, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 05, offset: durationtools.Offset(1, 4), duration: durationtools.Duration(5, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							a32 \glissando \startTextSpan
							f32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Violin 05, offset: durationtools.Offset(13, 32), duration: durationtools.Duration(11, 16)
					{
						\stopStaff
						r16.
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 05, offset: durationtools.Offset(35, 32), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Violin 05, offset: durationtools.Offset(21, 16), duration: durationtools.Duration(1, 4)
					{
						\stopStaff
						r16
						r8
						r16
						\startStaff
					}
					% performer: Violin 05, offset: durationtools.Offset(25, 16), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Violin 05, offset: durationtools.Offset(57, 32), duration: durationtools.Duration(5, 4)
					{
						\stopStaff
						r16.
						r8
						r4
						R2. * 1
						r32
						\startStaff
					}
					% performer: Violin 05, offset: durationtools.Offset(97, 32), duration: durationtools.Duration(5, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							e'32 \glissando \startTextSpan
							g'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Violin 05, offset: durationtools.Offset(51, 16), duration: durationtools.Duration(11, 32)
					{
						\stopStaff
						r16
						r4
						r32
						\startStaff
					}
					% performer: Violin 05, offset: durationtools.Offset(113, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 05, offset: durationtools.Offset(59, 16), duration: durationtools.Duration(13, 32)
					{
						\stopStaff
						r16
						r4
						r16.
						\startStaff
					}
					% performer: Violin 05, offset: durationtools.Offset(131, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 05, offset: durationtools.Offset(135, 32), duration: durationtools.Duration(9, 32)
					{
						\stopStaff
						r32
						r4
						\startStaff
					}
					% performer: Violin 05, offset: durationtools.Offset(9, 2), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 05, offset: durationtools.Offset(37, 8), duration: durationtools.Duration(69, 16)
					{
						\stopStaff
						r8
						r4
						r4
						R2. * 4
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Violin 05, offset: durationtools.Offset(143, 16), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 05, offset: durationtools.Offset(9, 1), duration: durationtools.Duration(9, 4)
					{
						\stopStaff
						R2. * 3
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 05"
					shortInstrumentName = #"Violin 05"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 05, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						r16
					}
					% performer: Violin 05, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqs'32 [ (
									r32
									r32
									r32
									r32
									eqf'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									eqs'32 \glissando
									s32
									s32
									s32
									s32
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
								s32
								s32
							}
						}
					>>
					% performer: Violin 05, offset: durationtools.Offset(1, 4), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								eqf''16. * 99/100 \startTrillSpan af''
								s16. * 1/100 \stopTrillSpan
							}
							{
								\pitchedTrill
								gqs''16 * 99/100 :128 \startTrillSpan cqs'''
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
					% performer: Violin 05, offset: durationtools.Offset(13, 32), duration: durationtools.Duration(11, 16)
					{
						r16.
						r4
						r4
						r16.
					}
					% performer: Violin 05, offset: durationtools.Offset(35, 32), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqf32 [ (
									r32
									r32
									r32
									eqf'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									aqf32 \glissando
									s32
									s32
									s32
									eqf'32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								af16 * 99/100 :128 \startTrillSpan c'
								s16 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 05, offset: durationtools.Offset(21, 16), duration: durationtools.Duration(1, 4)
					{
						r16
						r8
						r16
					}
					% performer: Violin 05, offset: durationtools.Offset(25, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								d'16. * 99/100 -\open \startTrillSpan gqf'
								s16. * 1/100 \stopTrillSpan
							}
							{
								\pitchedTrill
								dqs'16. :128 [ ~ \startTrillSpan ef'
								dqs'32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 05, offset: durationtools.Offset(57, 32), duration: durationtools.Duration(5, 4)
					{
						r16.
						r8
						r4
						R2. * 1
						r32
					}
					% performer: Violin 05, offset: durationtools.Offset(97, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								d''16. * 99/100 \startTrillSpan aqf''
								s16. * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								g''16 * 99/100 :128 \startTrillSpan gqs''
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
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 05, offset: durationtools.Offset(51, 16), duration: durationtools.Duration(11, 32)
					{
						r16
						r4
						r32
					}
					% performer: Violin 05, offset: durationtools.Offset(113, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									cqs'''32 [ (
									r32
									a''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									cqs'''32 \glissando
									s32
									a''32
								}
							>>
							{
								\pitchedTrill
								fs''16 * 99/100 :128 \startTrillSpan a''
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
					% performer: Violin 05, offset: durationtools.Offset(59, 16), duration: durationtools.Duration(13, 32)
					{
						r16
						r4
						r16.
					}
					% performer: Violin 05, offset: durationtools.Offset(131, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									f''32 [ (
									r32
									r32
									g''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									f''32 \glissando
									s32
									s32
									g''32
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
					% performer: Violin 05, offset: durationtools.Offset(135, 32), duration: durationtools.Duration(9, 32)
					{
						r32
						r4
					}
					% performer: Violin 05, offset: durationtools.Offset(9, 2), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									fs''32 [ (
									r32
									r32
									gqf''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									fs''32 \glissando
									s32
									s32
									gqf''32
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
					% performer: Violin 05, offset: durationtools.Offset(37, 8), duration: durationtools.Duration(69, 16)
					{
						r8
						r4
						r4
						R2. * 4
						r4
						r4
						r8.
					}
					% performer: Violin 05, offset: durationtools.Offset(143, 16), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									fqs''32 [ (
									b'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									fqs''32 \glissando
									b'32
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
					% performer: Violin 05, offset: durationtools.Offset(9, 1), duration: durationtools.Duration(9, 4)
					{
						R2. * 3
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 06" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 06, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(17, 32)
					{
						\stopStaff
						r4
						r4
						r32
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(17, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 06, offset: durationtools.Offset(11, 16), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r16
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(3, 4), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 06, offset: durationtools.Offset(15, 16), duration: durationtools.Duration(3, 32)
					{
						\stopStaff
						r16
						r32
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(33, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 06, offset: durationtools.Offset(39, 32), duration: durationtools.Duration(1, 4)
					{
						\stopStaff
						r32
						r8..
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(47, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 06, offset: durationtools.Offset(13, 8), duration: durationtools.Duration(19, 16)
					{
						\stopStaff
						r8
						r4
						r4
						r4
						r4
						r16
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(45, 16), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 06, offset: durationtools.Offset(3, 1), duration: durationtools.Duration(1, 2)
					{
						\stopStaff
						r2
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(7, 2), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 06, offset: durationtools.Offset(117, 32), duration: durationtools.Duration(13, 16)
					{
						\stopStaff
						r16.
						r4
						r4
						r8..
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(143, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 06, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(19, 32)
					{
						\stopStaff
						r32
						r8
						r4
						r8.
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 06, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(39, 8)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						R2. * 5
						r4
						r8
						r32
						\startStaff
					}
					% performer: Violin 06, offset: durationtools.Offset(325, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 06, offset: durationtools.Offset(327, 32), duration: durationtools.Duration(33, 32)
					{
						\stopStaff
						r32
						r4
						R2. * 1
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 06"
					shortInstrumentName = #"Violin 06"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 06, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(17, 32)
					{
						r4
						r4
						r32
					}
					% performer: Violin 06, offset: durationtools.Offset(17, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								ef'16. * 99/100 \startTrillSpan af'
								s16. * 1/100 \stopTrillSpan
							}
							{
								\pitchedTrill
								c''16 * 99/100 :128 \startTrillSpan d''
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
					% performer: Violin 06, offset: durationtools.Offset(11, 16), duration: durationtools.Duration(1, 16)
					{
						r16
					}
					% performer: Violin 06, offset: durationtools.Offset(3, 4), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								b''16. * 99/100 \startTrillSpan dqf'''
								s16. * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fs''16. * 99/100 :128 \startTrillSpan gqs''
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
							}
							{
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 06, offset: durationtools.Offset(15, 16), duration: durationtools.Duration(3, 32)
					{
						r16
						r32
					}
					% performer: Violin 06, offset: durationtools.Offset(33, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								cqs''8 * 99/100 \startTrillSpan fqs''
								s8 * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								gqs''16 * 99/100 :128 \startTrillSpan bf''
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
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 06, offset: durationtools.Offset(39, 32), duration: durationtools.Duration(1, 4)
					{
						r32
						r8..
					}
					% performer: Violin 06, offset: durationtools.Offset(47, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqf''32 [ (
									r32
									r32
									r32
									e'''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqf''32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 06, offset: durationtools.Offset(13, 8), duration: durationtools.Duration(19, 16)
					{
						r8
						r4
						r4
						r4
						r4
						r16
					}
					% performer: Violin 06, offset: durationtools.Offset(45, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqf'32 [ (
									r32
									f'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqf'32 \glissando
									s32
									f'32
								}
							>>
							{
								\pitchedTrill
								fs'16. * 99/100 :128 \startTrillSpan c''
								s16. * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
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
					% performer: Violin 06, offset: durationtools.Offset(3, 1), duration: durationtools.Duration(1, 2)
					{
						r2
					}
					% performer: Violin 06, offset: durationtools.Offset(7, 2), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									f'32 [ (
									r32
									r32
									r32
									dqf''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									f'32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 06, offset: durationtools.Offset(117, 32), duration: durationtools.Duration(13, 16)
					{
						r16.
						r4
						r4
						r8..
					}
					% performer: Violin 06, offset: durationtools.Offset(143, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									d'32 [ (
									r32
									r32
									aqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									d'32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 06, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(19, 32)
					{
						r32
						r8
						r4
						r8.
					}
					% performer: Violin 06, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									ef'32 [ (
									r32
									bqf32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									ef'32 \glissando
									s32
									bqf32
								}
							>>
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 06, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(39, 8)
					{
						r16.
						r8
						r4
						r4
						R2. * 5
						r4
						r8
						r32
					}
					% performer: Violin 06, offset: durationtools.Offset(325, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								bf16 * 99/100 \startTrillSpan bqf
								s16 * 1/100 \stopTrillSpan
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
					% performer: Violin 06, offset: durationtools.Offset(327, 32), duration: durationtools.Duration(33, 32)
					{
						r32
						r4
						R2. * 1
						\bar "|."
					}
				}
			>>
		>>
		\new StaffGroup <<
			\context StaffGroup = "Violin 07" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 07, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r16
						\startStaff
					}
					% performer: Violin 07, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(1, 4)
					{
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
					% performer: Violin 07, offset: durationtools.Offset(5, 16), duration: durationtools.Duration(11, 32)
					{
						\stopStaff
						r16
						r8
						r8
						r32
						\startStaff
					}
					% performer: Violin 07, offset: durationtools.Offset(21, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 07, offset: durationtools.Offset(13, 16), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Violin 07, offset: durationtools.Offset(33, 32), duration: durationtools.Duration(47, 16)
					{
						\stopStaff
						r16.
						r8
						r4
						R2. * 3
						r8..
						\startStaff
					}
					% performer: Violin 07, offset: durationtools.Offset(127, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 07, offset: durationtools.Offset(33, 8), duration: durationtools.Duration(11, 32)
					{
						\stopStaff
						r8
						r8..
						\startStaff
					}
					% performer: Violin 07, offset: durationtools.Offset(143, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 07, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(17, 32)
					{
						\stopStaff
						r32
						r8
						r4
						r8
						\startStaff
					}
					% performer: Violin 07, offset: durationtools.Offset(41, 8), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 07, offset: durationtools.Offset(21, 4), duration: durationtools.Duration(7, 16)
					{
						\stopStaff
						r4..
						\startStaff
					}
					% performer: Violin 07, offset: durationtools.Offset(91, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 07, offset: durationtools.Offset(185, 32), duration: durationtools.Duration(23, 8)
					{
						\stopStaff
						r16.
						r8
						R2. * 3
						r4
						r8
						r32
						\startStaff
					}
					% performer: Violin 07, offset: durationtools.Offset(277, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 07, offset: durationtools.Offset(279, 32), duration: durationtools.Duration(7, 8)
					{
						\stopStaff
						r32
						r4
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 07, offset: durationtools.Offset(307, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 07, offset: durationtools.Offset(309, 32), duration: durationtools.Duration(51, 32)
					{
						\stopStaff
						r16.
						R2. * 2
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 07"
					shortInstrumentName = #"Violin 07"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 07, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						r16
					}
					% performer: Violin 07, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(1, 4)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								a''8 * 99/100 \startTrillSpan d'''
								s8 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								bf'16 :128 [ ~ \startTrillSpan eqf''
								bf'16 * 99/100 :128 ]
								s16 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 07, offset: durationtools.Offset(5, 16), duration: durationtools.Duration(11, 32)
					{
						r16
						r8
						r8
						r32
					}
					% performer: Violin 07, offset: durationtools.Offset(21, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								cqs''16. [ ~ \startTrillSpan fs''
								cqs''16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
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
							}
						}
					>>
					% performer: Violin 07, offset: durationtools.Offset(13, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								aqs'16. * 99/100 \startTrillSpan d''
								s16. * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								aqs'16. :128 [ ~ \startTrillSpan ef''
								aqs'32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 07, offset: durationtools.Offset(33, 32), duration: durationtools.Duration(47, 16)
					{
						r16.
						r8
						r4
						R2. * 3
						r8..
					}
					% performer: Violin 07, offset: durationtools.Offset(127, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								af''32 [ ~ \startTrillSpan aqf''
								af''8 * 99/100 ]
								s8 * 1/100 \stopTrillSpan
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
					% performer: Violin 07, offset: durationtools.Offset(33, 8), duration: durationtools.Duration(11, 32)
					{
						r8
						r8..
					}
					% performer: Violin 07, offset: durationtools.Offset(143, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									gqs'32 [ (
									r32
									r32
									f'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									gqs'32 \glissando
									s32
									s32
									f'32
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
					% performer: Violin 07, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(17, 32)
					{
						r32
						r8
						r4
						r8
					}
					% performer: Violin 07, offset: durationtools.Offset(41, 8), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								e''8 * 99/100 -\open \startTrillSpan f''
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
					% performer: Violin 07, offset: durationtools.Offset(21, 4), duration: durationtools.Duration(7, 16)
					{
						r4..
					}
					% performer: Violin 07, offset: durationtools.Offset(91, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g'32 [ (
									r32
									gqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									g'32 \glissando
									s32
									gqs'32
								}
							>>
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 07, offset: durationtools.Offset(185, 32), duration: durationtools.Duration(23, 8)
					{
						r16.
						r8
						R2. * 3
						r4
						r8
						r32
					}
					% performer: Violin 07, offset: durationtools.Offset(277, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									f'32 [ (
									c'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									f'32 \glissando
									c'32
								}
							>>
						}
						\context Voice = "span" {
							{
								s32 \fp
								s32
							}
						}
					>>
					% performer: Violin 07, offset: durationtools.Offset(279, 32), duration: durationtools.Duration(7, 8)
					{
						r32
						r4
						r4
						r4
						r16.
					}
					% performer: Violin 07, offset: durationtools.Offset(307, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									fqs''32 [ (
									dqf''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									fqs''32 \glissando
									dqf''32
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
					% performer: Violin 07, offset: durationtools.Offset(309, 32), duration: durationtools.Duration(51, 32)
					{
						r16.
						R2. * 2
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 08" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 08, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 08, offset: durationtools.Offset(3, 16), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 08, offset: durationtools.Offset(3, 8), duration: durationtools.Duration(13, 16)
					{
						\stopStaff
						r8
						r4
						r4..
						\startStaff
					}
					% performer: Violin 08, offset: durationtools.Offset(19, 16), duration: durationtools.Duration(7, 32)
					{
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
							a32
						}
					}
					% performer: Violin 08, offset: durationtools.Offset(45, 32), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r16
						\startStaff
					}
					% performer: Violin 08, offset: durationtools.Offset(47, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 08, offset: durationtools.Offset(51, 32), duration: durationtools.Duration(7, 8)
					{
						\stopStaff
						r32
						r8
						r4
						r4
						r8..
						\startStaff
					}
					% performer: Violin 08, offset: durationtools.Offset(79, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 08, offset: durationtools.Offset(85, 32), duration: durationtools.Duration(81, 32)
					{
						\stopStaff
						r16.
						r4
						R2. * 2
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Violin 08, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 08, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(3, 16)
					{
						\stopStaff
						r16.
						r16.
						\startStaff
					}
					% performer: Violin 08, offset: durationtools.Offset(175, 32), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 08, offset: durationtools.Offset(89, 16), duration: durationtools.Duration(35, 16)
					{
						\stopStaff
						r16
						r8
						r4
						R2. * 2
						r4
						\startStaff
					}
					% performer: Violin 08, offset: durationtools.Offset(31, 4), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 08, offset: durationtools.Offset(251, 32), duration: durationtools.Duration(35, 32)
					{
						\stopStaff
						r32
						r8
						r4
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Violin 08, offset: durationtools.Offset(143, 16), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 08, offset: durationtools.Offset(9, 1), duration: durationtools.Duration(15, 32)
					{
						\stopStaff
						r4...
						\startStaff
					}
					% performer: Violin 08, offset: durationtools.Offset(303, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 08, offset: durationtools.Offset(305, 32), duration: durationtools.Duration(55, 32)
					{
						\stopStaff
						r16.
						r8
						R2. * 2
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 08"
					shortInstrumentName = #"Violin 08"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 08, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								bf8. * 99/100 \startTrillSpan e'
								s8. * 1/100 \stopTrillSpan
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
					% performer: Violin 08, offset: durationtools.Offset(3, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									dqs''32 [ (
									r32
									r32
									r32
									r32
									eqf''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									dqs''32 \glissando
									s32
									s32
									s32
									s32
									eqf''32
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
								s32 \!
							}
						}
					>>
					% performer: Violin 08, offset: durationtools.Offset(3, 8), duration: durationtools.Duration(13, 16)
					{
						r8
						r4
						r4..
					}
					% performer: Violin 08, offset: durationtools.Offset(19, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									f'32 [ (
									r32
									r32
									fs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									f'32 \glissando
									s32
									s32
									fs'32
								}
							>>
							{
								\pitchedTrill
								aqf16. * 99/100 :128 \startTrillSpan cqs'
								s16. * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 08, offset: durationtools.Offset(45, 32), duration: durationtools.Duration(1, 16)
					{
						r16
					}
					% performer: Violin 08, offset: durationtools.Offset(47, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqf'32 [ (
									r32
									r32
									cqs''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									eqf'32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 08, offset: durationtools.Offset(51, 32), duration: durationtools.Duration(7, 8)
					{
						r32
						r8
						r4
						r4
						r8..
					}
					% performer: Violin 08, offset: durationtools.Offset(79, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								bqf32 [ ~ \startTrillSpan f'
								bqf8 ~ ~
								bqf32 * 99/100 ]
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
								s32 \fp \>
								s32
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 08, offset: durationtools.Offset(85, 32), duration: durationtools.Duration(81, 32)
					{
						r16.
						r4
						R2. * 2
						r4
						r4
						r8.
					}
					% performer: Violin 08, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								gqf'16 [ ~ \startTrillSpan g'
								gqf'32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 08, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(3, 16)
					{
						r16.
						r16.
					}
					% performer: Violin 08, offset: durationtools.Offset(175, 32), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								ef'32 [ ~ \startTrillSpan f'
								ef'16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
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
					% performer: Violin 08, offset: durationtools.Offset(89, 16), duration: durationtools.Duration(35, 16)
					{
						r16
						r8
						r4
						R2. * 2
						r4
					}
					% performer: Violin 08, offset: durationtools.Offset(31, 4), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									fqs'32 [ (
									r32
									d'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									fqs'32 \glissando
									s32
									d'32
								}
							>>
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 08, offset: durationtools.Offset(251, 32), duration: durationtools.Duration(35, 32)
					{
						r32
						r8
						r4
						r4
						r4
						r8.
					}
					% performer: Violin 08, offset: durationtools.Offset(143, 16), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								aqs16 * 99/100 \startTrillSpan dqs'
								s16 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" {
							{
								s32 \fp
								s32
							}
						}
					>>
					% performer: Violin 08, offset: durationtools.Offset(9, 1), duration: durationtools.Duration(15, 32)
					{
						r4...
					}
					% performer: Violin 08, offset: durationtools.Offset(303, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqf'32 [ (
									fs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									eqf'32 \glissando
									fs'32
								}
							>>
						}
						\context Voice = "span" {
							{
								s32 \fp
								s32
							}
						}
					>>
					% performer: Violin 08, offset: durationtools.Offset(305, 32), duration: durationtools.Duration(55, 32)
					{
						r16.
						r8
						R2. * 2
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 09" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 09, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 09, offset: durationtools.Offset(5, 32), duration: durationtools.Duration(25, 32)
					{
						\stopStaff
						r16.
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Violin 09, offset: durationtools.Offset(15, 16), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Violin 09, offset: durationtools.Offset(37, 32), duration: durationtools.Duration(9, 32)
					{
						\stopStaff
						r16.
						r8.
						\startStaff
					}
					% performer: Violin 09, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 09, offset: durationtools.Offset(25, 16), duration: durationtools.Duration(13, 32)
					{
						\stopStaff
						r16
						r8
						r8..
						\startStaff
					}
					% performer: Violin 09, offset: durationtools.Offset(63, 32), duration: durationtools.Duration(5, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							a32 \glissando \startTextSpan
							f32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Violin 09, offset: durationtools.Offset(17, 8), duration: durationtools.Duration(3, 16)
					{
						\stopStaff
						r8
						r16
						\startStaff
					}
					% performer: Violin 09, offset: durationtools.Offset(37, 16), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 09, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(63, 32)
					{
						\stopStaff
						r4
						r4
						R2. * 1
						r4
						r4
						r8..
						\startStaff
					}
					% performer: Violin 09, offset: durationtools.Offset(143, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 09, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(1, 4)
					{
						\stopStaff
						r32
						r8
						r16.
						\startStaff
					}
					% performer: Violin 09, offset: durationtools.Offset(155, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 09, offset: durationtools.Offset(159, 32), duration: durationtools.Duration(35, 32)
					{
						\stopStaff
						r32
						r4
						R2. * 1
						r16
						\startStaff
					}
					% performer: Violin 09, offset: durationtools.Offset(97, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 09, offset: durationtools.Offset(197, 32), duration: durationtools.Duration(51, 16)
					{
						\stopStaff
						r16.
						r4
						r4
						R2. * 3
						r4
						r16.
						\startStaff
					}
					% performer: Violin 09, offset: durationtools.Offset(299, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 09, offset: durationtools.Offset(301, 32), duration: durationtools.Duration(59, 32)
					{
						\stopStaff
						r16.
						r4
						R2. * 2
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 09"
					shortInstrumentName = #"Violin 09"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 09, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								a8 [ ~ ~ \startTrillSpan bqs
								a32 * 99/100 ]
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
								s32 \fp \>
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 09, offset: durationtools.Offset(5, 32), duration: durationtools.Duration(25, 32)
					{
						r16.
						r4
						r4
						r8.
					}
					% performer: Violin 09, offset: durationtools.Offset(15, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g''32 [ (
									r32
									r32
									r32
									bqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									g''32 \glissando
									s32
									s32
									s32
									bqs'32
								}
							>>
							{
								\pitchedTrill
								a''16 * 99/100 :128 \startTrillSpan e'''
								s16 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 09, offset: durationtools.Offset(37, 32), duration: durationtools.Duration(9, 32)
					{
						r16.
						r8.
					}
					% performer: Violin 09, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									af32 [ (
									r32
									r32
									g32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									af32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 09, offset: durationtools.Offset(25, 16), duration: durationtools.Duration(13, 32)
					{
						r16
						r8
						r8..
					}
					% performer: Violin 09, offset: durationtools.Offset(63, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								a''32 [ ~ \startTrillSpan cs'''
								a''16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
							}
							{
								\pitchedTrill
								bqf'16 * 99/100 :128 \startTrillSpan ef''
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
					% performer: Violin 09, offset: durationtools.Offset(17, 8), duration: durationtools.Duration(3, 16)
					{
						r8
						r16
					}
					% performer: Violin 09, offset: durationtools.Offset(37, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									bqf32 [ (
									r32
									r32
									r32
									r32
									b32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									bqf32 \glissando
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
					% performer: Violin 09, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(63, 32)
					{
						r4
						r4
						R2. * 1
						r4
						r4
						r8..
					}
					% performer: Violin 09, offset: durationtools.Offset(143, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									cs''32 [ (
									r32
									r32
									gqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									cs''32 \glissando
									s32
									s32
									gqs'32
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
					% performer: Violin 09, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(1, 4)
					{
						r32
						r8
						r16.
					}
					% performer: Violin 09, offset: durationtools.Offset(155, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								cqs''8 * 99/100 \startTrillSpan d''
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
					% performer: Violin 09, offset: durationtools.Offset(159, 32), duration: durationtools.Duration(35, 32)
					{
						r32
						r4
						R2. * 1
						r16
					}
					% performer: Violin 09, offset: durationtools.Offset(97, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								ef'16. * 99/100 \startTrillSpan eqf'
								s16. * 1/100 \stopTrillSpan
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
					% performer: Violin 09, offset: durationtools.Offset(197, 32), duration: durationtools.Duration(51, 16)
					{
						r16.
						r4
						r4
						R2. * 3
						r4
						r16.
					}
					% performer: Violin 09, offset: durationtools.Offset(299, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									cs'32 [ (
									bf32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									cs'32 \glissando
									bf32
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
					% performer: Violin 09, offset: durationtools.Offset(301, 32), duration: durationtools.Duration(59, 32)
					{
						r16.
						r4
						R2. * 2
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 10" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 10, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Violin 10, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(21, 32)
					{
						\stopStaff
						r32
						r4
						r4
						r8
						\startStaff
					}
					% performer: Violin 10, offset: durationtools.Offset(7, 8), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 10, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(17, 32)
					{
						\stopStaff
						r16
						r8
						r4
						r16.
						\startStaff
					}
					% performer: Violin 10, offset: durationtools.Offset(51, 32), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Violin 10, offset: durationtools.Offset(29, 16), duration: durationtools.Duration(35, 32)
					{
						\stopStaff
						r16
						r8
						r4
						r4
						r4
						r8
						r32
						\startStaff
					}
					% performer: Violin 10, offset: durationtools.Offset(93, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 10, offset: durationtools.Offset(49, 16), duration: durationtools.Duration(33, 32)
					{
						\stopStaff
						r16
						r8
						r4
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 10, offset: durationtools.Offset(131, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 10, offset: durationtools.Offset(135, 32), duration: durationtools.Duration(9, 16)
					{
						\stopStaff
						r32
						r4
						r4
						r32
						\startStaff
					}
					% performer: Violin 10, offset: durationtools.Offset(153, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 10, offset: durationtools.Offset(157, 32), duration: durationtools.Duration(9, 32)
					{
						\stopStaff
						r16.
						r8.
						\startStaff
					}
					% performer: Violin 10, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 10, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(19, 8)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						R2. * 2
						r8
						r32
						\startStaff
					}
					% performer: Violin 10, offset: durationtools.Offset(245, 32), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 10, offset: durationtools.Offset(31, 4), duration: durationtools.Duration(59, 32)
					{
						\stopStaff
						r4
						r4
						R2. * 1
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Violin 10, offset: durationtools.Offset(307, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 10, offset: durationtools.Offset(309, 32), duration: durationtools.Duration(51, 32)
					{
						\stopStaff
						r16.
						R2. * 2
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 10"
					shortInstrumentName = #"Violin 10"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 10, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								ef'16. * 99/100 \startTrillSpan e'
								s16. * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								af8 * 99/100 :64 \startTrillSpan d'
								s8 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 10, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(21, 32)
					{
						r32
						r4
						r4
						r8
					}
					% performer: Violin 10, offset: durationtools.Offset(7, 8), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									bqs'32 [ (
									r32
									g'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									bqs'32 \glissando
									s32
									g'32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								cs''32 :256 [ ~ \startTrillSpan eqf''
								cs''16 * 99/100 :128 ]
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 10, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(17, 32)
					{
						r16
						r8
						r4
						r16.
					}
					% performer: Violin 10, offset: durationtools.Offset(51, 32), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									bf'32 [ (
									r32
									r32
									d''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									bf'32 \glissando
									s32
									s32
									d''32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fs''32 :256 [ ~ \startTrillSpan af''
								fs''16 * 99/100 :128 ]
								s16 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 10, offset: durationtools.Offset(29, 16), duration: durationtools.Duration(35, 32)
					{
						r16
						r8
						r4
						r4
						r4
						r8
						r32
					}
					% performer: Violin 10, offset: durationtools.Offset(93, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fqs'16. [ ~ \startTrillSpan fs'
								fqs'16 * 99/100 ]
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
					% performer: Violin 10, offset: durationtools.Offset(49, 16), duration: durationtools.Duration(33, 32)
					{
						r16
						r8
						r4
						r4
						r4
						r16.
					}
					% performer: Violin 10, offset: durationtools.Offset(131, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								cqs'''8 * 99/100 \startTrillSpan d'''
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 10, offset: durationtools.Offset(135, 32), duration: durationtools.Duration(9, 16)
					{
						r32
						r4
						r4
						r32
					}
					% performer: Violin 10, offset: durationtools.Offset(153, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqs'32 [ (
									r32
									r32
									d''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqs'32 \glissando
									s32
									s32
									d''32
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
					% performer: Violin 10, offset: durationtools.Offset(157, 32), duration: durationtools.Duration(9, 32)
					{
						r16.
						r8.
					}
					% performer: Violin 10, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									cs''32 [ (
									r32
									eqs''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									cs''32 \glissando
									s32
									eqs''32
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
					% performer: Violin 10, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(19, 8)
					{
						r16.
						r8
						r4
						r4
						R2. * 2
						r8
						r32
					}
					% performer: Violin 10, offset: durationtools.Offset(245, 32), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									ef''32 [ (
									r32
									c''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									ef''32 \glissando
									s32
									c''32
								}
							>>
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 10, offset: durationtools.Offset(31, 4), duration: durationtools.Duration(59, 32)
					{
						r4
						r4
						R2. * 1
						r4
						r4
						r16.
					}
					% performer: Violin 10, offset: durationtools.Offset(307, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a''32 [ (
									e''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									a''32 \glissando
									e''32
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
					% performer: Violin 10, offset: durationtools.Offset(309, 32), duration: durationtools.Duration(51, 32)
					{
						r16.
						R2. * 2
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 11" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 11, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Violin 11, offset: durationtools.Offset(1, 32), duration: durationtools.Duration(1, 8)
					{
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
					% performer: Violin 11, offset: durationtools.Offset(5, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 11, offset: durationtools.Offset(11, 32), duration: durationtools.Duration(3, 32)
					{
						\stopStaff
						r32
						r16
						\startStaff
					}
					% performer: Violin 11, offset: durationtools.Offset(7, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 11, offset: durationtools.Offset(19, 32), duration: durationtools.Duration(11, 32)
					{
						\stopStaff
						r32
						r8
						r8.
						\startStaff
					}
					% performer: Violin 11, offset: durationtools.Offset(15, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 11, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(3, 16)
					{
						\stopStaff
						r16
						r8
						\startStaff
					}
					% performer: Violin 11, offset: durationtools.Offset(5, 4), duration: durationtools.Duration(7, 32)
					{
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
							\breathe
						}
					}
					% performer: Violin 11, offset: durationtools.Offset(47, 32), duration: durationtools.Duration(7, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							a32 \glissando \startTextSpan
							s32
							s32
							c'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Violin 11, offset: durationtools.Offset(27, 16), duration: durationtools.Duration(7, 2)
					{
						\stopStaff
						r16
						r4
						r4
						R2. * 3
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Violin 11, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 11, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(23, 16)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						r4
						r4
						r8..
						\startStaff
					}
					% performer: Violin 11, offset: durationtools.Offset(215, 32), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 11, offset: durationtools.Offset(109, 16), duration: durationtools.Duration(87, 32)
					{
						\stopStaff
						r16
						r8
						r4
						r4
						R2. * 2
						r4
						r4
						r32
						\startStaff
					}
					% performer: Violin 11, offset: durationtools.Offset(305, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 11, offset: durationtools.Offset(307, 32), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r32
						r32
						\startStaff
					}
					% performer: Violin 11, offset: durationtools.Offset(309, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 11, offset: durationtools.Offset(311, 32), duration: durationtools.Duration(49, 32)
					{
						\stopStaff
						r32
						R2. * 2
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 11"
					shortInstrumentName = #"Violin 11"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 11, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Violin 11, offset: durationtools.Offset(1, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									cqs'''32 [ (
									r32
									r32
									e''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									cqs'''32 \glissando
									s32
									s32
									e''32
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
					% performer: Violin 11, offset: durationtools.Offset(5, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								bf'16. [ ~ \startTrillSpan d''
								bf'16. * 99/100 ]
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
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 11, offset: durationtools.Offset(11, 32), duration: durationtools.Duration(3, 32)
					{
						r32
						r16
					}
					% performer: Violin 11, offset: durationtools.Offset(7, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								d'16 -\open [ ~ \startTrillSpan g'
								d'16. * 99/100 ]
								s16. * 1/100 \stopTrillSpan
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
					% performer: Violin 11, offset: durationtools.Offset(19, 32), duration: durationtools.Duration(11, 32)
					{
						r32
						r8
						r8.
					}
					% performer: Violin 11, offset: durationtools.Offset(15, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								bqs'16 [ ~ \startTrillSpan fqs''
								bqs'16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
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
					% performer: Violin 11, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(3, 16)
					{
						r16
						r8
					}
					% performer: Violin 11, offset: durationtools.Offset(5, 4), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g''32 [ (
									r32
									bqs''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									g''32 \glissando
									s32
									bqs''32
								}
							>>
							{
								\pitchedTrill
								d''8 * 99/100 :64 \startTrillSpan aqf''
								s8 * 1/100 \stopTrillSpan
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
								s32 \p \>
								s32
								s32
								s32
							}
						}
					>>
					% performer: Violin 11, offset: durationtools.Offset(47, 32), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								eqs'32 [ ~ \startTrillSpan b'
								eqs'16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								a'8 * 99/100 :64 -\open \startTrillSpan e''
								s8 * 1/100 \stopTrillSpan
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 11, offset: durationtools.Offset(27, 16), duration: durationtools.Duration(7, 2)
					{
						r16
						r4
						r4
						R2. * 3
						r4
						r4
						r8.
					}
					% performer: Violin 11, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									af''32 [ (
									r32
									cs'''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									af''32 \glissando
									s32
									cs'''32
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
					% performer: Violin 11, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(23, 16)
					{
						r16.
						r8
						r4
						r4
						r4
						r4
						r8..
					}
					% performer: Violin 11, offset: durationtools.Offset(215, 32), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqs''32 [ (
									r32
									a''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									eqs''32 \glissando
									s32
									a''32
								}
							>>
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 11, offset: durationtools.Offset(109, 16), duration: durationtools.Duration(87, 32)
					{
						r16
						r8
						r4
						r4
						R2. * 2
						r4
						r4
						r32
					}
					% performer: Violin 11, offset: durationtools.Offset(305, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fqs''16 * 99/100 \startTrillSpan a''
								s16 * 1/100 \stopTrillSpan
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
					% performer: Violin 11, offset: durationtools.Offset(307, 32), duration: durationtools.Duration(1, 16)
					{
						r32
						r32
					}
					% performer: Violin 11, offset: durationtools.Offset(309, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								b'16 * 99/100 \startTrillSpan ef''
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
					% performer: Violin 11, offset: durationtools.Offset(311, 32), duration: durationtools.Duration(49, 32)
					{
						r32
						R2. * 2
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Violin 12" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Violin 12, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(5, 32)
					{
						\stopStaff
						r8
						r32
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(5, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 12, offset: durationtools.Offset(9, 32), duration: durationtools.Duration(17, 32)
					{
						\stopStaff
						r16.
						r8
						r4
						r16
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(13, 16), duration: durationtools.Duration(7, 32)
					{
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
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							c'32 \glissando \startTextSpan
							e'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Violin 12, offset: durationtools.Offset(33, 32), duration: durationtools.Duration(3, 4)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						r32
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(57, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 12, offset: durationtools.Offset(63, 32), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r32
						r32
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(65, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Violin 12, offset: durationtools.Offset(71, 32), duration: durationtools.Duration(13, 8)
					{
						\stopStaff
						r32
						R2. * 2
						r16.
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(123, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Violin 12, offset: durationtools.Offset(4, 1), duration: durationtools.Duration(5, 16)
					{
						\stopStaff
						r4
						r16
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(69, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 12, offset: durationtools.Offset(71, 16), duration: durationtools.Duration(19, 32)
					{
						\stopStaff
						r16
						r4
						r4
						r32
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(161, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 12, offset: durationtools.Offset(165, 32), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Violin 12, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(65, 32)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						R2. * 1
						r4
						r4
						r16
						\startStaff
					}
					% performer: Violin 12, offset: durationtools.Offset(117, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Violin 12, offset: durationtools.Offset(237, 32), duration: durationtools.Duration(123, 32)
					{
						\stopStaff
						r16.
						R2. * 5
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Violin 12"
					shortInstrumentName = #"Violin 12"
				} {
					\clef "treble"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Violin 12, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(5, 32)
					{
						r8
						r32
					}
					% performer: Violin 12, offset: durationtools.Offset(5, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									dqs'32 [ (
									r32
									r32
									eqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									dqs'32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 12, offset: durationtools.Offset(9, 32), duration: durationtools.Duration(17, 32)
					{
						r16.
						r8
						r4
						r16
					}
					% performer: Violin 12, offset: durationtools.Offset(13, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								aqs''8 [ ~ ~ \startTrillSpan ef'''
								aqs''32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								bf''32 :256 [ ~ \startTrillSpan dqf'''
								bf''32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Violin 12, offset: durationtools.Offset(33, 32), duration: durationtools.Duration(3, 4)
					{
						r16.
						r8
						r4
						r4
						r32
					}
					% performer: Violin 12, offset: durationtools.Offset(57, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									bqs'32 [ (
									r32
									r32
									r32
									r32
									fqs''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									bqs'32 \glissando
									s32
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
								s32 \fp \>
								s32
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 12, offset: durationtools.Offset(63, 32), duration: durationtools.Duration(1, 16)
					{
						r32
						r32
					}
					% performer: Violin 12, offset: durationtools.Offset(65, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								fs''8. * 99/100 \startTrillSpan aqf''
								s8. * 1/100 \stopTrillSpan
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
					% performer: Violin 12, offset: durationtools.Offset(71, 32), duration: durationtools.Duration(13, 8)
					{
						r32
						R2. * 2
						r16.
					}
					% performer: Violin 12, offset: durationtools.Offset(123, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									gqf''32 [ (
									r32
									r32
									r32
									a''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									gqf''32 \glissando
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 12, offset: durationtools.Offset(4, 1), duration: durationtools.Duration(5, 16)
					{
						r4
						r16
					}
					% performer: Violin 12, offset: durationtools.Offset(69, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								gqs''8 * 99/100 \startTrillSpan af''
								s8 * 1/100 \stopTrillSpan
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
					% performer: Violin 12, offset: durationtools.Offset(71, 16), duration: durationtools.Duration(19, 32)
					{
						r16
						r4
						r4
						r32
					}
					% performer: Violin 12, offset: durationtools.Offset(161, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									gqf''32 [ (
									r32
									r32
									g''32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									gqf''32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 12, offset: durationtools.Offset(165, 32), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Violin 12, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								bqs'16 [ ~ \startTrillSpan c''
								bqs'32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Violin 12, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(65, 32)
					{
						r16.
						r8
						r4
						r4
						R2. * 1
						r4
						r4
						r16
					}
					% performer: Violin 12, offset: durationtools.Offset(117, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									fs'32 [ (
									r32
									bf'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									fs'32 \glissando
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
							}
						}
					>>
					% performer: Violin 12, offset: durationtools.Offset(237, 32), duration: durationtools.Duration(123, 32)
					{
						r16.
						R2. * 5
						\bar "|."
					}
				}
			>>
		>>
		\new StaffGroup <<
			\context StaffGroup = "Viola 01" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Viola 01, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 4)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							e'32 \glissando \startTextSpan
							s32
							s32
							c'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Viola 01, offset: durationtools.Offset(1, 4), duration: durationtools.Duration(5, 32)
					{
						\stopStaff
						r8
						r32
						\startStaff
					}
					% performer: Viola 01, offset: durationtools.Offset(13, 32), duration: durationtools.Duration(1, 4)
					{
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
							g'32
						}
					}
					% performer: Viola 01, offset: durationtools.Offset(21, 32), duration: durationtools.Duration(1, 1)
					{
						\stopStaff
						r16.
						R2. * 1
						r8
						r32
						\startStaff
					}
					% performer: Viola 01, offset: durationtools.Offset(53, 32), duration: durationtools.Duration(7, 32)
					{
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
							c'32
						}
					}
					% performer: Viola 01, offset: durationtools.Offset(15, 8), duration: durationtools.Duration(35, 32)
					{
						\stopStaff
						r8
						r4
						r4
						r4
						r8..
						\startStaff
					}
					% performer: Viola 01, offset: durationtools.Offset(95, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Viola 01, offset: durationtools.Offset(25, 8), duration: durationtools.Duration(1, 4)
					{
						\stopStaff
						r8
						r8
						\startStaff
					}
					% performer: Viola 01, offset: durationtools.Offset(27, 8), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Viola 01, offset: durationtools.Offset(7, 2), duration: durationtools.Duration(19, 16)
					{
						\stopStaff
						r4
						R2. * 1
						r8.
						\startStaff
					}
					% performer: Viola 01, offset: durationtools.Offset(75, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Viola 01, offset: durationtools.Offset(77, 16), duration: durationtools.Duration(9, 32)
					{
						\stopStaff
						r16
						r8
						r16.
						\startStaff
					}
					% performer: Viola 01, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Viola 01, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(193, 32)
					{
						\stopStaff
						r32
						R2. * 8
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Viola 01"
					shortInstrumentName = #"Viola 01"
				} {
					\clef "alto"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Viola 01, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 4)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								dqf8 * 99/100 \startTrillSpan dqs
								s8 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\pitchedTrill
								g8 * 99/100 :64 -\open \startTrillSpan bf
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
					% performer: Viola 01, offset: durationtools.Offset(1, 4), duration: durationtools.Duration(5, 32)
					{
						r8
						r32
					}
					% performer: Viola 01, offset: durationtools.Offset(13, 32), duration: durationtools.Duration(1, 4)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g'32 [ (
									r32
									gqf'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									g'32 \glissando
									s32
									gqf'32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								f8 :64 [ ~ ~ \startTrillSpan aqs
								f32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
								s32
								s32
							}
							{
								s32
								s32
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 01, offset: durationtools.Offset(21, 32), duration: durationtools.Duration(1, 1)
					{
						r16.
						R2. * 1
						r8
						r32
					}
					% performer: Viola 01, offset: durationtools.Offset(53, 32), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								ef16. * 99/100 \startTrillSpan af
								s16. * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								c8 * 99/100 :64 -\open \startTrillSpan d
								s8 * 1/100 \stopTrillSpan
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Viola 01, offset: durationtools.Offset(15, 8), duration: durationtools.Duration(35, 32)
					{
						r8
						r4
						r4
						r4
						r8..
					}
					% performer: Viola 01, offset: durationtools.Offset(95, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									fs'32 [ (
									r32
									r32
									r32
									gqs32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									fs'32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 01, offset: durationtools.Offset(25, 8), duration: durationtools.Duration(1, 4)
					{
						r8
						r8
					}
					% performer: Viola 01, offset: durationtools.Offset(27, 8), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									cqs'32 [ (
									r32
									r32
									dqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									cqs'32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 01, offset: durationtools.Offset(7, 2), duration: durationtools.Duration(19, 16)
					{
						r4
						R2. * 1
						r8.
					}
					% performer: Viola 01, offset: durationtools.Offset(75, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g32 [ (
									r32
									r32
									bf32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									g32 \glissando
									s32
									s32
									bf32
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
					% performer: Viola 01, offset: durationtools.Offset(77, 16), duration: durationtools.Duration(9, 32)
					{
						r16
						r8
						r16.
					}
					% performer: Viola 01, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									gqs32 [ (
									r32
									r32
									eqf32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									gqs32 \glissando
									s32
									s32
									eqf32
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
					% performer: Viola 01, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(193, 32)
					{
						r32
						R2. * 8
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Viola 02" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Viola 02, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(7, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							e'32 \glissando \startTextSpan
							s32
							s32
							g'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Viola 02, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(3, 16)
					{
						\stopStaff
						r32
						r8
						r32
						\startStaff
					}
					% performer: Viola 02, offset: durationtools.Offset(13, 32), duration: durationtools.Duration(9, 32)
					{
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
							s32
							c'32
						}
					}
					% performer: Viola 02, offset: durationtools.Offset(11, 16), duration: durationtools.Duration(9, 32)
					{
						\stopStaff
						r16
						r8..
						\startStaff
					}
					% performer: Viola 02, offset: durationtools.Offset(31, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Viola 02, offset: durationtools.Offset(37, 32), duration: durationtools.Duration(3, 16)
					{
						\stopStaff
						r16.
						r16.
						\startStaff
					}
					% performer: Viola 02, offset: durationtools.Offset(43, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Viola 02, offset: durationtools.Offset(47, 32), duration: durationtools.Duration(21, 16)
					{
						\stopStaff
						r32
						R2. * 1
						r4
						r4
						r32
						\startStaff
					}
					% performer: Viola 02, offset: durationtools.Offset(89, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Viola 02, offset: durationtools.Offset(93, 32), duration: durationtools.Duration(5, 32)
					{
						\stopStaff
						r16.
						r16
						\startStaff
					}
					% performer: Viola 02, offset: durationtools.Offset(49, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Viola 02, offset: durationtools.Offset(103, 32), duration: durationtools.Duration(53, 32)
					{
						\stopStaff
						r32
						r4
						r4
						R2. * 1
						r4.
						\startStaff
					}
					% performer: Viola 02, offset: durationtools.Offset(39, 8), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Viola 02, offset: durationtools.Offset(5, 1), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r16
						\startStaff
					}
					% performer: Viola 02, offset: durationtools.Offset(81, 16), duration: durationtools.Duration(1, 8)
					{
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
					% performer: Viola 02, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Viola 02, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(191, 32)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						R2. * 7
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Viola 02"
					shortInstrumentName = #"Viola 02"
				} {
					\clef "alto"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Viola 02, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqs'32 [ (
									r32
									cqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									eqs'32 \glissando
									s32
									cqs'32
								}
							>>
							{
								\pitchedTrill
								e8 * 99/100 :64 \startTrillSpan fqs
								s8 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Viola 02, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(3, 16)
					{
						r32
						r8
						r32
					}
					% performer: Viola 02, offset: durationtools.Offset(13, 32), duration: durationtools.Duration(9, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqs'32 [ (
									r32
									r32
									r32
									r32
									af32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									eqs'32 \glissando
									s32
									s32
									s32
									s32
									af32
								}
							>>
							{
								\pitchedTrill
								eqs16. * 99/100 :128 \startTrillSpan b
								s16. * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
								s32 \!
							}
						}
					>>
					% performer: Viola 02, offset: durationtools.Offset(11, 16), duration: durationtools.Duration(9, 32)
					{
						r16
						r8..
					}
					% performer: Viola 02, offset: durationtools.Offset(31, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a'32 [ (
									r32
									eqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									a'32 \glissando
									s32
									eqs'32
								}
							>>
							{
								\pitchedTrill
								cs'16. * 99/100 :128 \startTrillSpan eqf'
								s16. * 1/100 \stopTrillSpan
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 02, offset: durationtools.Offset(37, 32), duration: durationtools.Duration(3, 16)
					{
						r16.
						r16.
					}
					% performer: Viola 02, offset: durationtools.Offset(43, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqs'32 [ (
									r32
									r32
									eqf'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
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
					% performer: Viola 02, offset: durationtools.Offset(47, 32), duration: durationtools.Duration(21, 16)
					{
						r32
						R2. * 1
						r4
						r4
						r32
					}
					% performer: Viola 02, offset: durationtools.Offset(89, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								e'8 * 99/100 \startTrillSpan b'
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
					% performer: Viola 02, offset: durationtools.Offset(93, 32), duration: durationtools.Duration(5, 32)
					{
						r16.
						r16
					}
					% performer: Viola 02, offset: durationtools.Offset(49, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								e''8 [ ~ ~ \startTrillSpan af''
								e''32 * 99/100 ]
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
					% performer: Viola 02, offset: durationtools.Offset(103, 32), duration: durationtools.Duration(53, 32)
					{
						r32
						r4
						r4
						R2. * 1
						r4.
					}
					% performer: Viola 02, offset: durationtools.Offset(39, 8), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								e'8 * 99/100 \startTrillSpan aqs'
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 02, offset: durationtools.Offset(5, 1), duration: durationtools.Duration(1, 16)
					{
						r16
					}
					% performer: Viola 02, offset: durationtools.Offset(81, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								ef'8 * 99/100 \startTrillSpan eqs'
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
					% performer: Viola 02, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									bf'32 [ (
									r32
									aqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									bf'32 \glissando
									s32
									aqs'32
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
					% performer: Viola 02, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(191, 32)
					{
						r16.
						r8
						r4
						r4
						R2. * 7
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Viola 03" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Viola 03, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(3, 16)
					{
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
							\breathe
						}
					}
					% performer: Viola 03, offset: durationtools.Offset(3, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Viola 03, offset: durationtools.Offset(11, 32), duration: durationtools.Duration(35, 32)
					{
						\stopStaff
						r32
						r8
						r4
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Viola 03, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Viola 03, offset: durationtools.Offset(53, 32), duration: durationtools.Duration(1, 8)
					{
						\stopStaff
						r16.
						r32
						\startStaff
					}
					% performer: Viola 03, offset: durationtools.Offset(57, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Viola 03, offset: durationtools.Offset(63, 32), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r32
						r32
						\startStaff
					}
					% performer: Viola 03, offset: durationtools.Offset(65, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Viola 03, offset: durationtools.Offset(71, 32), duration: durationtools.Duration(23, 32)
					{
						\stopStaff
						r32
						r4
						r4
						r8.
						\startStaff
					}
					% performer: Viola 03, offset: durationtools.Offset(47, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Viola 03, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(31, 16)
					{
						\stopStaff
						r32
						r8
						r4
						r4
						R2. * 1
						r4
						r4
						r32
						\startStaff
					}
					% performer: Viola 03, offset: durationtools.Offset(161, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Viola 03, offset: durationtools.Offset(165, 32), duration: durationtools.Duration(1, 4)
					{
						\stopStaff
						r16.
						r8
						r32
						\startStaff
					}
					% performer: Viola 03, offset: durationtools.Offset(173, 32), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Viola 03, offset: durationtools.Offset(11, 2), duration: durationtools.Duration(23, 4)
					{
						\stopStaff
						r4
						r4
						R2. * 7
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Viola 03"
					shortInstrumentName = #"Viola 03"
				} {
					\clef "alto"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Viola 03, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								a8 * 99/100 \startTrillSpan d'
								s8 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\pitchedTrill
								cs16 * 99/100 :128 \startTrillSpan eqs
								s16 * 1/100 \stopTrillSpan
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
							}
						}
					>>
					% performer: Viola 03, offset: durationtools.Offset(3, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								bqf16 [ ~ \startTrillSpan eqf'
								bqf32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								a16 * 99/100 :128 \startTrillSpan bf
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
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 03, offset: durationtools.Offset(11, 32), duration: durationtools.Duration(35, 32)
					{
						r32
						r8
						r4
						r4
						r4
						r8.
					}
					% performer: Viola 03, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqs'32 [ (
									r32
									dqf'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									eqs'32 \glissando
									s32
									dqf'32
								}
							>>
							{
								\pitchedTrill
								gqs8 * 99/100 :64 \startTrillSpan af
								s8 * 1/100 \stopTrillSpan
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 03, offset: durationtools.Offset(53, 32), duration: durationtools.Duration(1, 8)
					{
						r16.
						r32
					}
					% performer: Viola 03, offset: durationtools.Offset(57, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqf'32 [ (
									r32
									r32
									eqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									aqf'32 \glissando
									s32
									s32
									eqs'32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								gqf'16 * 99/100 :128 \startTrillSpan g'
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
					% performer: Viola 03, offset: durationtools.Offset(63, 32), duration: durationtools.Duration(1, 16)
					{
						r32
						r32
					}
					% performer: Viola 03, offset: durationtools.Offset(65, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								g'8 * 99/100 \startTrillSpan cqs''
								s8 * 1/100 \stopTrillSpan
							}
							{
								\pitchedTrill
								af'16 * 99/100 :128 \startTrillSpan d''
								s16 * 1/100 \stopTrillSpan
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
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 03, offset: durationtools.Offset(71, 32), duration: durationtools.Duration(23, 32)
					{
						r32
						r4
						r4
						r8.
					}
					% performer: Viola 03, offset: durationtools.Offset(47, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									f'32 [ (
									r32
									r32
									r32
									ef'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									f'32 \glissando
									s32
									s32
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 03, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(31, 16)
					{
						r32
						r8
						r4
						r4
						R2. * 1
						r4
						r4
						r32
					}
					% performer: Viola 03, offset: durationtools.Offset(161, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									c'32 [ (
									r32
									r32
									e32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									c'32 \glissando
									s32
									s32
									e32
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
					% performer: Viola 03, offset: durationtools.Offset(165, 32), duration: durationtools.Duration(1, 4)
					{
						r16.
						r8
						r32
					}
					% performer: Viola 03, offset: durationtools.Offset(173, 32), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									eqf'32 [ (
									r32
									bqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									eqf'32 \glissando
									s32
									bqs'32
								}
							>>
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 03, offset: durationtools.Offset(11, 2), duration: durationtools.Duration(23, 4)
					{
						r4
						r4
						R2. * 7
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Viola 04" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Viola 04, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(7, 32)
					{
						\stopStaff
						r8..
						\startStaff
					}
					% performer: Viola 04, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Viola 04, offset: durationtools.Offset(7, 16), duration: durationtools.Duration(1, 8)
					{
						\stopStaff
						r16
						r16
						\startStaff
					}
					% performer: Viola 04, offset: durationtools.Offset(9, 16), duration: durationtools.Duration(1, 4)
					{
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
							s32
							a32
						}
					}
					% performer: Viola 04, offset: durationtools.Offset(13, 16), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Viola 04, offset: durationtools.Offset(27, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Viola 04, offset: durationtools.Offset(1, 1), duration: durationtools.Duration(7, 16)
					{
						\stopStaff
						r4
						r8.
						\startStaff
					}
					% performer: Viola 04, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(7, 32)
					{
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
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							e'32 \glissando \startTextSpan
							g'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Viola 04, offset: durationtools.Offset(53, 32), duration: durationtools.Duration(19, 32)
					{
						\stopStaff
						r16.
						r4
						r4
						\startStaff
					}
					% performer: Viola 04, offset: durationtools.Offset(9, 4), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Viola 04, offset: durationtools.Offset(39, 16), duration: durationtools.Duration(9, 32)
					{
						\stopStaff
						r16
						r8..
						\startStaff
					}
					% performer: Viola 04, offset: durationtools.Offset(87, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Viola 04, offset: durationtools.Offset(23, 8), duration: durationtools.Duration(15, 32)
					{
						\stopStaff
						r8
						r4
						r16.
						\startStaff
					}
					% performer: Viola 04, offset: durationtools.Offset(107, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Viola 04, offset: durationtools.Offset(111, 32), duration: durationtools.Duration(13, 4)
					{
						\stopStaff
						r32
						r4
						R2. * 3
						r4
						r4
						r8..
						\startStaff
					}
					% performer: Viola 04, offset: durationtools.Offset(215, 32), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Viola 04, offset: durationtools.Offset(109, 16), duration: durationtools.Duration(71, 16)
					{
						\stopStaff
						r16
						r8
						r4
						r4
						R2. * 5
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Viola 04"
					shortInstrumentName = #"Viola 04"
				} {
					\clef "alto"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Viola 04, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(7, 32)
					{
						r8..
					}
					% performer: Viola 04, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								gqf32 [ ~ \startTrillSpan b
								gqf8 * 99/100 ]
								s8 * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								dqf'16 * 99/100 :128 \startTrillSpan g'
								s16 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Viola 04, offset: durationtools.Offset(7, 16), duration: durationtools.Duration(1, 8)
					{
						r16
						r16
					}
					% performer: Viola 04, offset: durationtools.Offset(9, 16), duration: durationtools.Duration(1, 4)
					<<
						\new Voice {
							{
								\pitchedTrill
								eqs8 [ ~ ~ \startTrillSpan a
								eqs32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
							}
							{
								\pitchedTrill
								c'32 :256 [ ~ \startTrillSpan d'
								c'16 * 99/100 :128 ]
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
							}
							{
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 04, offset: durationtools.Offset(13, 16), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Viola 04, offset: durationtools.Offset(27, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								g8 [ ~ ~ \startTrillSpan c'
								g32 * 99/100 ]
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
								s32 \fp \>
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 04, offset: durationtools.Offset(1, 1), duration: durationtools.Duration(7, 16)
					{
						r4
						r8.
					}
					% performer: Viola 04, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									bf32 [ (
									r32
									r32
									r32
									f32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									bf32 \glissando
									s32
									s32
									s32
									f32
								}
							>>
							{
								\pitchedTrill
								d16 * 99/100 :128 \startTrillSpan a
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
								s32
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Viola 04, offset: durationtools.Offset(53, 32), duration: durationtools.Duration(19, 32)
					{
						r16.
						r4
						r4
					}
					% performer: Viola 04, offset: durationtools.Offset(9, 4), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a'32 [ (
									r32
									eqs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									a'32 \glissando
									s32
									eqs'32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								af'16. * 99/100 :128 \startTrillSpan dqf''
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
								s32 \fp \>
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
					% performer: Viola 04, offset: durationtools.Offset(39, 16), duration: durationtools.Duration(9, 32)
					{
						r16
						r8..
					}
					% performer: Viola 04, offset: durationtools.Offset(87, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								fs'32 [ ~ \startTrillSpan af'
								fs'16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
							}
							{
								\pitchedTrill
								f'16 * 99/100 :128 \startTrillSpan gqf'
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
					% performer: Viola 04, offset: durationtools.Offset(23, 8), duration: durationtools.Duration(15, 32)
					{
						r8
						r4
						r16.
					}
					% performer: Viola 04, offset: durationtools.Offset(107, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									c'32 [ (
									r32
									r32
									eqf32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									c'32 \glissando
									s32
									s32
									eqf32
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
					% performer: Viola 04, offset: durationtools.Offset(111, 32), duration: durationtools.Duration(13, 4)
					{
						r32
						r4
						R2. * 3
						r4
						r4
						r8..
					}
					% performer: Viola 04, offset: durationtools.Offset(215, 32), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqf32 [ (
									r32
									cs32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqf32 \glissando
									s32
									cs32
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
					% performer: Viola 04, offset: durationtools.Offset(109, 16), duration: durationtools.Duration(71, 16)
					{
						r16
						r8
						r4
						r4
						R2. * 5
						\bar "|."
					}
				}
			>>
		>>
		\new StaffGroup <<
			\context StaffGroup = "Cello 01" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Cello 01, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(1, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Cello 01, offset: durationtools.Offset(5, 32), duration: durationtools.Duration(17, 16)
					{
						\stopStaff
						r16.
						r4
						r4
						r4...
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(39, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Cello 01, offset: durationtools.Offset(45, 32), duration: durationtools.Duration(5, 32)
					{
						\stopStaff
						r16.
						r16
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(25, 16), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Cello 01, offset: durationtools.Offset(57, 32), duration: durationtools.Duration(3, 8)
					{
						\stopStaff
						r16.
						r8
						r8
						r32
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(69, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 01, offset: durationtools.Offset(73, 32), duration: durationtools.Duration(3, 32)
					{
						\stopStaff
						r16.
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(19, 8), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 01, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(19, 32)
					{
						\stopStaff
						r4
						r4
						r16.
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Cello 01, offset: durationtools.Offset(13, 4), duration: durationtools.Duration(9, 32)
					{
						\stopStaff
						r4
						r32
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(113, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Cello 01, offset: durationtools.Offset(59, 16), duration: durationtools.Duration(25, 32)
					{
						\stopStaff
						r16
						r4
						r4
						r8..
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(143, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 01, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r32
						r32
						\startStaff
					}
					% performer: Cello 01, offset: durationtools.Offset(149, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 01, offset: durationtools.Offset(153, 32), duration: durationtools.Duration(207, 32)
					{
						\stopStaff
						r16.
						r8
						r4
						R2. * 8
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Cello 01"
					shortInstrumentName = #"Cello 01"
				} {
					\clef "bass"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Cello 01, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Cello 01, offset: durationtools.Offset(1, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								aqs8 * 99/100 \startTrillSpan bqs
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
					% performer: Cello 01, offset: durationtools.Offset(5, 32), duration: durationtools.Duration(17, 16)
					{
						r16.
						r4
						r4
						r4...
					}
					% performer: Cello 01, offset: durationtools.Offset(39, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								bf32 [ ~ \startTrillSpan c'
								bf16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								g16. * 99/100 :128 \startTrillSpan bqf
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
							}
							{
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 01, offset: durationtools.Offset(45, 32), duration: durationtools.Duration(5, 32)
					{
						r16.
						r16
					}
					% performer: Cello 01, offset: durationtools.Offset(25, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								bf16. * 99/100 \startTrillSpan bqs
								s16. * 1/100 \stopTrillSpan
							}
							{
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								a16. :128 -\open [ ~ \startTrillSpan aqs
								a32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
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
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 01, offset: durationtools.Offset(57, 32), duration: durationtools.Duration(3, 8)
					{
						r16.
						r8
						r8
						r32
					}
					% performer: Cello 01, offset: durationtools.Offset(69, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									bqf32 [ (
									r32
									r32
									a32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									bqf32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 01, offset: durationtools.Offset(73, 32), duration: durationtools.Duration(3, 32)
					{
						r16.
					}
					% performer: Cello 01, offset: durationtools.Offset(19, 8), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g'32 [ (
									r32
									r32
									af'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									g'32 \glissando
									s32
									s32
									af'32
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
					% performer: Cello 01, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(19, 32)
					{
						r4
						r4
						r16.
					}
					% performer: Cello 01, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								gqs'8 [ ~ ~ \startTrillSpan a'
								gqs'32 * 99/100 ]
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
					% performer: Cello 01, offset: durationtools.Offset(13, 4), duration: durationtools.Duration(9, 32)
					{
						r4
						r32
					}
					% performer: Cello 01, offset: durationtools.Offset(113, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								dqs8 [ ~ ~ \startTrillSpan fs
								dqs32 * 99/100 ]
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
					% performer: Cello 01, offset: durationtools.Offset(59, 16), duration: durationtools.Duration(25, 32)
					{
						r16
						r4
						r4
						r8..
					}
					% performer: Cello 01, offset: durationtools.Offset(143, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								e'32 [ ~ \startTrillSpan eqs'
								e'16. * 99/100 ]
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
								s32
							}
						}
					>>
					% performer: Cello 01, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(1, 16)
					{
						r32
						r32
					}
					% performer: Cello 01, offset: durationtools.Offset(149, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqf'32 [ (
									r32
									r32
									fs'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqf'32 \glissando
									s32
									s32
									fs'32
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
					% performer: Cello 01, offset: durationtools.Offset(153, 32), duration: durationtools.Duration(207, 32)
					{
						r16.
						r8
						r4
						R2. * 8
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Cello 02" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Cello 02, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r16
						\startStaff
					}
					% performer: Cello 02, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Cello 02, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(27, 32)
					{
						\stopStaff
						r32
						r4
						r4
						r4
						r16
						\startStaff
					}
					% performer: Cello 02, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Cello 02, offset: durationtools.Offset(41, 32), duration: durationtools.Duration(1, 4)
					{
						\stopStaff
						r16.
						r8
						r32
						\startStaff
					}
					% performer: Cello 02, offset: durationtools.Offset(49, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Cello 02, offset: durationtools.Offset(55, 32), duration: durationtools.Duration(15, 32)
					{
						\stopStaff
						r32
						r4
						r8.
						\startStaff
					}
					% performer: Cello 02, offset: durationtools.Offset(35, 16), duration: durationtools.Duration(3, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							e'32 \glissando \startTextSpan
							s32
							c'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Cello 02, offset: durationtools.Offset(19, 8), duration: durationtools.Duration(1, 8)
					{
						\stopStaff
						r8
						\startStaff
					}
					% performer: Cello 02, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 02, offset: durationtools.Offset(21, 8), duration: durationtools.Duration(3, 16)
					{
						\stopStaff
						r8
						r16
						\startStaff
					}
					% performer: Cello 02, offset: durationtools.Offset(45, 16), duration: durationtools.Duration(3, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							a32 \glissando \startTextSpan
							f32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Cello 02, offset: durationtools.Offset(3, 1), duration: durationtools.Duration(65, 32)
					{
						\stopStaff
						R2. * 2
						r4
						r4
						r32
						\startStaff
					}
					% performer: Cello 02, offset: durationtools.Offset(161, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 02, offset: durationtools.Offset(165, 32), duration: durationtools.Duration(33, 32)
					{
						\stopStaff
						r16.
						R2. * 1
						r8.
						\startStaff
					}
					% performer: Cello 02, offset: durationtools.Offset(99, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 02, offset: durationtools.Offset(201, 32), duration: durationtools.Duration(159, 32)
					{
						\stopStaff
						r16.
						r8
						r4
						R2. * 6
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Cello 02"
					shortInstrumentName = #"Cello 02"
				} {
					\clef "bass"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Cello 02, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						r16
					}
					% performer: Cello 02, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									dqs,32 [ (
									r32
									bf,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									dqs,32 \glissando
									s32
									bf,32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								aqs,16 * 99/100 :128 \startTrillSpan bqf,
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
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 02, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(27, 32)
					{
						r32
						r4
						r4
						r4
						r16
					}
					% performer: Cello 02, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									gqs'32 [ (
									r32
									r32
									r32
									dqf'32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									gqs'32 \glissando
									s32
									s32
									s32
									dqf'32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								bqs32 :256 [ ~ \startTrillSpan cs'
								bqs32 * 99/100 :256 ]
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
					% performer: Cello 02, offset: durationtools.Offset(41, 32), duration: durationtools.Duration(1, 4)
					{
						r16.
						r8
						r32
					}
					% performer: Cello 02, offset: durationtools.Offset(49, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									dqf'32 [ (
									r32
									r32
									eqs32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									dqf'32 \glissando
									s32
									s32
									eqs32
								}
							>>
							{
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								g,16 * 99/100 :128 -\open \startTrillSpan gqs,
								s16 * 1/100 \stopTrillSpan
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
					% performer: Cello 02, offset: durationtools.Offset(55, 32), duration: durationtools.Duration(15, 32)
					{
						r32
						r4
						r8.
					}
					% performer: Cello 02, offset: durationtools.Offset(35, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									gqf32 [ (
									r32
									gqs32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									gqf32 \glissando
									s32
									gqs32
								}
							>>
							{
								\pitchedTrill
								dqf16. * 99/100 :128 \startTrillSpan fqs
								s16. * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
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
					% performer: Cello 02, offset: durationtools.Offset(19, 8), duration: durationtools.Duration(1, 8)
					{
						r8
					}
					% performer: Cello 02, offset: durationtools.Offset(5, 2), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									g32 [ (
									r32
									r32
									af32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									g32 \glissando
									s32
									s32
									af32
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
					% performer: Cello 02, offset: durationtools.Offset(21, 8), duration: durationtools.Duration(3, 16)
					{
						r8
						r16
					}
					% performer: Cello 02, offset: durationtools.Offset(45, 16), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									c32 [ (
									r32
									r32
									gqs,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									c32 \glissando
									s32
									s32
									gqs,32
								}
							>>
							{
								\pitchedTrill
								e16 * 99/100 :128 \startTrillSpan a
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
					% performer: Cello 02, offset: durationtools.Offset(3, 1), duration: durationtools.Duration(65, 32)
					{
						R2. * 2
						r4
						r4
						r32
					}
					% performer: Cello 02, offset: durationtools.Offset(161, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									af,32 [ (
									r32
									r32
									b,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									af,32 \glissando
									s32
									s32
									b,32
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
					% performer: Cello 02, offset: durationtools.Offset(165, 32), duration: durationtools.Duration(33, 32)
					{
						r16.
						R2. * 1
						r8.
					}
					% performer: Cello 02, offset: durationtools.Offset(99, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								e'16 [ ~ \startTrillSpan af'
								e'32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 02, offset: durationtools.Offset(201, 32), duration: durationtools.Duration(159, 32)
					{
						r16.
						r8
						r4
						R2. * 6
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Cello 03" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Cello 03, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 4)
					{
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
						}
					}
					% performer: Cello 03, offset: durationtools.Offset(1, 4), duration: durationtools.Duration(21, 32)
					{
						\stopStaff
						r4
						r4
						r8
						r32
						\startStaff
					}
					% performer: Cello 03, offset: durationtools.Offset(29, 32), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Cello 03, offset: durationtools.Offset(9, 8), duration: durationtools.Duration(5, 16)
					{
						\stopStaff
						r8
						r8.
						\startStaff
					}
					% performer: Cello 03, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(7, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							e'32 \glissando \startTextSpan
							s32
							g'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Cello 03, offset: durationtools.Offset(53, 32), duration: durationtools.Duration(7, 16)
					{
						\stopStaff
						r16.
						r4
						r16.
						\startStaff
					}
					% performer: Cello 03, offset: durationtools.Offset(67, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Cello 03, offset: durationtools.Offset(73, 32), duration: durationtools.Duration(7, 8)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						r8
						r32
						\startStaff
					}
					% performer: Cello 03, offset: durationtools.Offset(101, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 03, offset: durationtools.Offset(105, 32), duration: durationtools.Duration(9, 32)
					{
						\stopStaff
						r16.
						r8
						r16
						\startStaff
					}
					% performer: Cello 03, offset: durationtools.Offset(57, 16), duration: durationtools.Duration(5, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							c'32 \glissando \startTextSpan
							a32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Cello 03, offset: durationtools.Offset(119, 32), duration: durationtools.Duration(39, 32)
					{
						\stopStaff
						r32
						R2. * 1
						r4..
						\startStaff
					}
					% performer: Cello 03, offset: durationtools.Offset(79, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 03, offset: durationtools.Offset(81, 16), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Cello 03, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Cello 03, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(17, 4)
					{
						\stopStaff
						r32
						R2. * 5
						r4...
						\startStaff
					}
					% performer: Cello 03, offset: durationtools.Offset(303, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							a32
							\revert Glissando #'style
						}
					}
					% performer: Cello 03, offset: durationtools.Offset(305, 32), duration: durationtools.Duration(55, 32)
					{
						\stopStaff
						r16.
						r8
						R2. * 2
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Cello 03"
					shortInstrumentName = #"Cello 03"
				} {
					\clef "bass"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Cello 03, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 4)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fs,8 * 99/100 \startTrillSpan bf,
								s8 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\pitchedTrill
								aqf,8 * 99/100 :64 \startTrillSpan b,
								s8 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Cello 03, offset: durationtools.Offset(1, 4), duration: durationtools.Duration(21, 32)
					{
						r4
						r4
						r8
						r32
					}
					% performer: Cello 03, offset: durationtools.Offset(29, 32), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqs,32 [ (
									r32
									r32
									r32
									dqs,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqs,32 \glissando
									s32
									s32
									s32
									dqs,32
								}
							>>
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								cqs16 * 99/100 :128 \startTrillSpan dqf
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
					% performer: Cello 03, offset: durationtools.Offset(9, 8), duration: durationtools.Duration(5, 16)
					{
						r8
						r8.
					}
					% performer: Cello 03, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								b16 [ ~ \startTrillSpan c'
								b16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fs16. * 99/100 :128 \startTrillSpan aqf
								s16. * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
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
					% performer: Cello 03, offset: durationtools.Offset(53, 32), duration: durationtools.Duration(7, 16)
					{
						r16.
						r4
						r16.
					}
					% performer: Cello 03, offset: durationtools.Offset(67, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								g,16. * 99/100 \startTrillSpan a,
								s16. * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\pitchedTrill
								c16 :128 [ ~ \startTrillSpan d
								c32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
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
					% performer: Cello 03, offset: durationtools.Offset(73, 32), duration: durationtools.Duration(7, 8)
					{
						r16.
						r8
						r4
						r4
						r8
						r32
					}
					% performer: Cello 03, offset: durationtools.Offset(101, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a,32 [ (
									r32
									r32
									f,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									a,32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 03, offset: durationtools.Offset(105, 32), duration: durationtools.Duration(9, 32)
					{
						r16.
						r8
						r16
					}
					% performer: Cello 03, offset: durationtools.Offset(57, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								f16. * 99/100 \startTrillSpan fs
								s16. * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								c'16 * 99/100 :128 \startTrillSpan e'
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
					% performer: Cello 03, offset: durationtools.Offset(119, 32), duration: durationtools.Duration(39, 32)
					{
						r32
						R2. * 1
						r4..
					}
					% performer: Cello 03, offset: durationtools.Offset(79, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								cqs,16 [ ~ \startTrillSpan e,
								cqs,16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
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
					% performer: Cello 03, offset: durationtools.Offset(81, 16), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Cello 03, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									gqf'32 [ (
									r32
									r32
									b32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									gqf'32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 03, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(17, 4)
					{
						r32
						R2. * 5
						r4...
					}
					% performer: Cello 03, offset: durationtools.Offset(303, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									fqs'32 [ (
									bqf32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override Stem #'stencil = ##f
								} {
									fqs'32 \glissando
									bqf32
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
					% performer: Cello 03, offset: durationtools.Offset(305, 32), duration: durationtools.Duration(55, 32)
					{
						r16.
						r8
						R2. * 2
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Cello 04" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Cello 04, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 8)
					{
						\stopStaff
						r8
						\startStaff
					}
					% performer: Cello 04, offset: durationtools.Offset(1, 8), duration: durationtools.Duration(7, 32)
					{
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
							\breathe
						}
					}
					% performer: Cello 04, offset: durationtools.Offset(11, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Cello 04, offset: durationtools.Offset(15, 32), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r32
						r32
						\startStaff
					}
					% performer: Cello 04, offset: durationtools.Offset(17, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Cello 04, offset: durationtools.Offset(11, 16), duration: durationtools.Duration(3, 8)
					{
						\stopStaff
						r16
						r4
						r16
						\startStaff
					}
					% performer: Cello 04, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(7, 32)
					{
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
					% performer: Cello 04, offset: durationtools.Offset(41, 32), duration: durationtools.Duration(5, 32)
					{
						\stopStaff
						r16.
						r16
						\startStaff
					}
					% performer: Cello 04, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Cello 04, offset: durationtools.Offset(25, 16), duration: durationtools.Duration(37, 32)
					{
						\stopStaff
						r16
						r8
						r4
						r4
						r4...
						\startStaff
					}
					% performer: Cello 04, offset: durationtools.Offset(87, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Cello 04, offset: durationtools.Offset(91, 32), duration: durationtools.Duration(17, 8)
					{
						\stopStaff
						r32
						r8
						R2. * 2
						r4...
						\startStaff
					}
					% performer: Cello 04, offset: durationtools.Offset(159, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 04, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(85, 32)
					{
						\stopStaff
						r32
						r8
						R2. * 3
						r4
						\startStaff
					}
					% performer: Cello 04, offset: durationtools.Offset(31, 4), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Cello 04, offset: durationtools.Offset(251, 32), duration: durationtools.Duration(27, 16)
					{
						\stopStaff
						r32
						r8
						r4
						R2. * 1
						r4
						r4
						r32
						\startStaff
					}
					% performer: Cello 04, offset: durationtools.Offset(305, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							a32
							\revert Glissando #'style
						}
					}
					% performer: Cello 04, offset: durationtools.Offset(307, 32), duration: durationtools.Duration(53, 32)
					{
						\stopStaff
						r32
						r8
						R2. * 2
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Cello 04"
					shortInstrumentName = #"Cello 04"
				} {
					\clef "bass"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Cello 04, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 8)
					{
						r8
					}
					% performer: Cello 04, offset: durationtools.Offset(1, 8), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fqs8 [ ~ \startTrillSpan gqs
								fqs32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\pitchedTrill
								b,16 * 99/100 :128 \startTrillSpan bqs,
								s16 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" {
							{
								s32 \fp \<
								s32
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
					% performer: Cello 04, offset: durationtools.Offset(11, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a,32 [ (
									r32
									r32
									fs,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									a,32 \glissando
									s32
									s32
									fs,32
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
					% performer: Cello 04, offset: durationtools.Offset(15, 32), duration: durationtools.Duration(1, 16)
					{
						r32
						r32
					}
					% performer: Cello 04, offset: durationtools.Offset(17, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									bqf32 [ (
									r32
									r32
									r32
									b32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Stem #'stencil = ##f
								} {
									bqf32 \glissando
									s32
									s32
									s32
									b32
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
					% performer: Cello 04, offset: durationtools.Offset(11, 16), duration: durationtools.Duration(3, 8)
					{
						r16
						r4
						r16
					}
					% performer: Cello 04, offset: durationtools.Offset(17, 16), duration: durationtools.Duration(7, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								f8 [ ~ ~ \startTrillSpan bf
								f32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\pitchedTrill
								g,32 :256 -\open [ ~ \startTrillSpan c
								g,32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
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
					% performer: Cello 04, offset: durationtools.Offset(41, 32), duration: durationtools.Duration(5, 32)
					{
						r16.
						r16
					}
					% performer: Cello 04, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								b,16 [ ~ \startTrillSpan c
								b,16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
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
					% performer: Cello 04, offset: durationtools.Offset(25, 16), duration: durationtools.Duration(37, 32)
					{
						r16
						r8
						r4
						r4
						r4...
					}
					% performer: Cello 04, offset: durationtools.Offset(87, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								eqf32 [ ~ \startTrillSpan eqs
								eqf16. * 99/100 ]
								s16. * 1/100 \stopTrillSpan
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
					% performer: Cello 04, offset: durationtools.Offset(91, 32), duration: durationtools.Duration(17, 8)
					{
						r32
						r8
						R2. * 2
						r4...
					}
					% performer: Cello 04, offset: durationtools.Offset(159, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								d32 [ ~ \startTrillSpan ef
								d16. * 99/100 ]
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 04, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(85, 32)
					{
						r32
						r8
						R2. * 3
						r4
					}
					% performer: Cello 04, offset: durationtools.Offset(31, 4), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								dqf16. * 99/100 \startTrillSpan fqs
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
								s32 \fp \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Cello 04, offset: durationtools.Offset(251, 32), duration: durationtools.Duration(27, 16)
					{
						r32
						r8
						r4
						R2. * 1
						r4
						r4
						r32
					}
					% performer: Cello 04, offset: durationtools.Offset(305, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									ef'32 [ (
									a32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									ef'32 \glissando
									a32
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
					% performer: Cello 04, offset: durationtools.Offset(307, 32), duration: durationtools.Duration(53, 32)
					{
						r32
						r8
						R2. * 2
						\bar "|."
					}
				}
			>>
		>>
		\new StaffGroup <<
			\context StaffGroup = "Contrabass 01" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Contrabass 01, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(13, 32)
					{
						\stopStaff
						r4
						r8
						r32
						\startStaff
					}
					% performer: Contrabass 01, offset: durationtools.Offset(13, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Contrabass 01, offset: durationtools.Offset(19, 32), duration: durationtools.Duration(3, 16)
					{
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
					% performer: Contrabass 01, offset: durationtools.Offset(25, 32), duration: durationtools.Duration(5, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							c'32 \glissando \startTextSpan
							c'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Contrabass 01, offset: durationtools.Offset(15, 16), duration: durationtools.Duration(11, 32)
					{
						\stopStaff
						r16
						r4
						r32
						\startStaff
					}
					% performer: Contrabass 01, offset: durationtools.Offset(41, 32), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Contrabass 01, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(7, 8)
					{
						\stopStaff
						r16
						R2. * 1
						r16
						\startStaff
					}
					% performer: Contrabass 01, offset: durationtools.Offset(37, 16), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 01, offset: durationtools.Offset(39, 16), duration: durationtools.Duration(15, 16)
					{
						\stopStaff
						r16
						r4
						r4
						r4.
						\startStaff
					}
					% performer: Contrabass 01, offset: durationtools.Offset(27, 8), duration: durationtools.Duration(5, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							c'32 \glissando \startTextSpan
							a32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Contrabass 01, offset: durationtools.Offset(113, 32), duration: durationtools.Duration(39, 32)
					{
						\stopStaff
						r16.
						r8
						R2. * 1
						r4
						\startStaff
					}
					% performer: Contrabass 01, offset: durationtools.Offset(19, 4), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 01, offset: durationtools.Offset(39, 8), duration: durationtools.Duration(7, 32)
					{
						\stopStaff
						r8
						r16.
						\startStaff
					}
					% performer: Contrabass 01, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 01, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(57, 16)
					{
						\stopStaff
						r32
						R2. * 4
						r4
						r4
						r32
						\startStaff
					}
					% performer: Contrabass 01, offset: durationtools.Offset(281, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							a32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 01, offset: durationtools.Offset(283, 32), duration: durationtools.Duration(17, 16)
					{
						\stopStaff
						r32
						r8
						R2. * 1
						r8
						r32
						\startStaff
					}
					% performer: Contrabass 01, offset: durationtools.Offset(317, 32), duration: durationtools.Duration(1, 16)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 01, offset: durationtools.Offset(319, 32), duration: durationtools.Duration(41, 32)
					{
						\stopStaff
						r32
						r4
						r4
						R2. * 1
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Contrabass 01"
					shortInstrumentName = #"Contrabass 01"
				} {
					\clef "bass_8"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Contrabass 01, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(13, 32)
					{
						r4
						r8
						r32
					}
					% performer: Contrabass 01, offset: durationtools.Offset(13, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								e,,16. -\open [ ~ \startTrillSpan g,,
								e,,16. * 99/100 ]
								s16. * 1/100 \stopTrillSpan
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
								s32
								s32
							}
						}
					>>
					% performer: Contrabass 01, offset: durationtools.Offset(19, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									ef,32 [ (
									r32
									af,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									ef,32 \glissando
									s32
									af,32
								}
							>>
							{
								\pitchedTrill
								dqf,16 :128 [ ~ \startTrillSpan d,
								dqf,32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
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
								s32 \p \>
								s32
								s32
							}
						}
					>>
					% performer: Contrabass 01, offset: durationtools.Offset(25, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								fqs,,16. * 99/100 \startTrillSpan gqs,,
								s16. * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								bqf,,16 * 99/100 :128 \startTrillSpan cs,
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
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Contrabass 01, offset: durationtools.Offset(15, 16), duration: durationtools.Duration(11, 32)
					{
						r16
						r4
						r32
					}
					% performer: Contrabass 01, offset: durationtools.Offset(41, 32), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									a,,32 [ (
									r32
									b,,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									a,,32 \glissando
									s32
									b,,32
								}
							>>
							{
								\pitchedTrill
								fs,,16 * 99/100 :128 \startTrillSpan a,,
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
					% performer: Contrabass 01, offset: durationtools.Offset(23, 16), duration: durationtools.Duration(7, 8)
					{
						r16
						R2. * 1
						r16
					}
					% performer: Contrabass 01, offset: durationtools.Offset(37, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									d,32 [ (
									r32
									r32
									bqs,,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									d,32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Contrabass 01, offset: durationtools.Offset(39, 16), duration: durationtools.Duration(15, 16)
					{
						r16
						r4
						r4
						r4.
					}
					% performer: Contrabass 01, offset: durationtools.Offset(27, 8), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									gqf,,32 [ (
									r32
									aqs,,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									gqf,,32 \glissando
									s32
									aqs,,32
								}
							>>
							{
								\pitchedTrill
								af,,32 :256 [ ~ \startTrillSpan bf,,
								af,,32 * 99/100 :256 ]
								s32 * 1/100 \stopTrillSpan
							}
						}
						\context Voice = "span" \with {
							\override Hairpin #'circled-tip = ##t
						} {
							{
								s32 \fp \>
								s32
								s32
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Contrabass 01, offset: durationtools.Offset(113, 32), duration: durationtools.Duration(39, 32)
					{
						r16.
						r8
						R2. * 1
						r4
					}
					% performer: Contrabass 01, offset: durationtools.Offset(19, 4), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								gqs,8 * 99/100 \startTrillSpan a,
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
					% performer: Contrabass 01, offset: durationtools.Offset(39, 8), duration: durationtools.Duration(7, 32)
					{
						r8
						r16.
					}
					% performer: Contrabass 01, offset: durationtools.Offset(163, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								ef,8 * 99/100 \startTrillSpan f,
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
					% performer: Contrabass 01, offset: durationtools.Offset(167, 32), duration: durationtools.Duration(57, 16)
					{
						r32
						R2. * 4
						r4
						r4
						r32
					}
					% performer: Contrabass 01, offset: durationtools.Offset(281, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqf,32 [ (
									fqs,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqf,32 \glissando
									fqs,32
								}
							>>
						}
						\context Voice = "span" {
							{
								s32 \fp
								s32
							}
						}
					>>
					% performer: Contrabass 01, offset: durationtools.Offset(283, 32), duration: durationtools.Duration(17, 16)
					{
						r32
						r8
						R2. * 1
						r8
						r32
					}
					% performer: Contrabass 01, offset: durationtools.Offset(317, 32), duration: durationtools.Duration(1, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								a,16 * 99/100 \startTrillSpan bqs,
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
					% performer: Contrabass 01, offset: durationtools.Offset(319, 32), duration: durationtools.Duration(41, 32)
					{
						r32
						r4
						r4
						R2. * 1
						\bar "|."
					}
				}
			>>
			\context StaffGroup = "Contrabass 02" \with {
				\remove System_start_delimiter_engraver
				\remove Span_bar_engraver
			} <<
				\new Staff \with {
					\remove Bar_engraver
					\override Beam #'stencil = ##f
					\override BreathingSign #'font-size = #5
					\override Clef #'transparent = ##t
					\override Dots #'transparent = ##t
					\override Flag #'stencil = ##f
					\override Glissando #'bound-details = #'((right (attach-dir . 0) (padding . 0.5)) (left (attach-dir . 0) (padding . 0.5)))
					\override Glissando #'zigzag-length = #1
					\override Glissando #'zigzag-width = #2
					\override MultiMeasureRest #'transparent = ##t
					\override MultiMeasureRestNumber #'stencil = ##f
					\override NoteHead #'stencil = #ly:text-interface::print
					\override NoteHead #'text = \markup {
					\halign
						#0.7
						\draw-circle
							#0.6
							#0.4
							##f
					}
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
					% performer: Contrabass 02, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						\stopStaff
						r16
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(5, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							\revert Glissando #'style
						}
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\filled-box
									#'(0 . 1.5)
									#'(-0.75 . 0.75)
									#0
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							c'32 \glissando \startTextSpan
							e'32 \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					% performer: Contrabass 02, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(1, 2)
					{
						\stopStaff
						r32
						r4
						r8..
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(23, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							c'32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 02, offset: durationtools.Offset(27, 32), duration: durationtools.Duration(15, 8)
					{
						\stopStaff
						r32
						r8
						r4
						r4
						R2. * 1
						r4...
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(87, 32), duration: durationtools.Duration(3, 16)
					{
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
							c'32
						}
					}
					% performer: Contrabass 02, offset: durationtools.Offset(93, 32), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(47, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Contrabass 02, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(15, 32)
					{
						\stopStaff
						r32
						r8
						r4
						r16
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(57, 16), duration: durationtools.Duration(5, 32)
					{
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
					% performer: Contrabass 02, offset: durationtools.Offset(119, 32), duration: durationtools.Duration(7, 8)
					{
						\stopStaff
						r32
						R2. * 1
						r16.
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 02, offset: durationtools.Offset(151, 32), duration: durationtools.Duration(1, 32)
					{
						\stopStaff
						r32
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(19, 4), duration: durationtools.Duration(1, 8)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 02, offset: durationtools.Offset(39, 8), duration: durationtools.Duration(3, 16)
					{
						\stopStaff
						r8
						r16
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(81, 16), duration: durationtools.Duration(1, 8)
					{
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
					% performer: Contrabass 02, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							e'32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 02, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(103, 32)
					{
						\stopStaff
						r16.
						r8
						r4
						r4
						R2. * 3
						r4
						\startStaff
					}
					% performer: Contrabass 02, offset: durationtools.Offset(17, 2), duration: durationtools.Duration(3, 32)
					{
						{
							\override Glissando #'style = #'dashed-line
							c'32 \glissando
							s32
							a32
							\revert Glissando #'style
						}
					}
					% performer: Contrabass 02, offset: durationtools.Offset(275, 32), duration: durationtools.Duration(85, 32)
					{
						\stopStaff
						r32
						r8
						r4
						R2. * 3
						\startStaff
					}
				}
				\new Staff \with {
					\override Glissando #'zigzag-length = #2
					instrumentName = #"Contrabass 02"
					shortInstrumentName = #"Contrabass 02"
				} {
					\clef "bass_8"
					\time 3/4
					\tempo 4 = 66
					\compressFullBarRests
					\mergeDifferentlyDottedOn
					\mergeDifferentlyHeadedOn
					% performer: Contrabass 02, offset: durationtools.Offset(0, 1), duration: durationtools.Duration(1, 16)
					{
						r16
					}
					% performer: Contrabass 02, offset: durationtools.Offset(1, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								af,,16. * 99/100 \startTrillSpan bf,,
								s16. * 1/100 \stopTrillSpan
								\revert NoteHead #'style
								\revert TrillPitchHead #'stencil
								\revert TrillPitchHead #'text
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								dqs,16 * 99/100 :128 \startTrillSpan f,
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
							}
							{
								s32
								s32 \!
							}
						}
					>>
					% performer: Contrabass 02, offset: durationtools.Offset(7, 32), duration: durationtools.Duration(1, 2)
					{
						r32
						r4
						r8..
					}
					% performer: Contrabass 02, offset: durationtools.Offset(23, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									aqs,,32 [ (
									r32
									r32
									bf,,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									aqs,,32 \glissando
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
								s32 \fp \>
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Contrabass 02, offset: durationtools.Offset(27, 32), duration: durationtools.Duration(15, 8)
					{
						r32
						r8
						r4
						r4
						R2. * 1
						r4...
					}
					% performer: Contrabass 02, offset: durationtools.Offset(87, 32), duration: durationtools.Duration(3, 16)
					<<
						\new Voice {
							{
								\pitchedTrill
								gqs,,32 [ ~ \startTrillSpan bf,,
								gqs,,16 * 99/100 ]
								s16 * 1/100 \stopTrillSpan
							}
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								eqf,16. * 99/100 :128 \startTrillSpan e,
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
							}
							{
								\once \override Hairpin #'circled-tip = ##t
								s32 \p \>
								s32
								s32 \!
							}
						}
					>>
					% performer: Contrabass 02, offset: durationtools.Offset(93, 32), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Contrabass 02, offset: durationtools.Offset(47, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								gqf,,16 [ ~ \startTrillSpan g,,
								gqf,,16. * 99/100 ]
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
								s32 \fp \>
								s32
								s32
								s32
								s32 \!
							}
						}
					>>
					% performer: Contrabass 02, offset: durationtools.Offset(99, 32), duration: durationtools.Duration(15, 32)
					{
						r32
						r8
						r4
						r16
					}
					% performer: Contrabass 02, offset: durationtools.Offset(57, 16), duration: durationtools.Duration(5, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								d,8 -\open [ ~ ~ \startTrillSpan dqs,
								d,32 * 99/100 ]
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
					% performer: Contrabass 02, offset: durationtools.Offset(119, 32), duration: durationtools.Duration(7, 8)
					{
						r32
						R2. * 1
						r16.
					}
					% performer: Contrabass 02, offset: durationtools.Offset(147, 32), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								af,8 * 99/100 \startTrillSpan aqs,
								s8 * 1/100 \stopTrillSpan
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
					% performer: Contrabass 02, offset: durationtools.Offset(151, 32), duration: durationtools.Duration(1, 32)
					{
						r32
					}
					% performer: Contrabass 02, offset: durationtools.Offset(19, 4), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\pitchedTrill
								a,,8 * 99/100 \startTrillSpan b,,
								s8 * 1/100 \stopTrillSpan
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
					% performer: Contrabass 02, offset: durationtools.Offset(39, 8), duration: durationtools.Duration(3, 16)
					{
						r8
						r16
					}
					% performer: Contrabass 02, offset: durationtools.Offset(81, 16), duration: durationtools.Duration(1, 8)
					<<
						\new Voice {
							{
								\override NoteHead #'style = #'harmonic
								\override TrillPitchHead #'stencil = #ly:text-interface::print
								\override TrillPitchHead #'text = \markup {
								\musicglyph
									#"noteheads.s0harmonic"
								}
								\pitchedTrill
								d,8 * 99/100 \startTrillSpan e,
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
					% performer: Contrabass 02, offset: durationtools.Offset(83, 16), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							{
								\pitchedTrill
								bqf,,16 [ ~ \startTrillSpan c,
								bqf,,32 * 99/100 ]
								s32 * 1/100 \stopTrillSpan
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
					% performer: Contrabass 02, offset: durationtools.Offset(169, 32), duration: durationtools.Duration(103, 32)
					{
						r16.
						r8
						r4
						r4
						R2. * 3
						r4
					}
					% performer: Contrabass 02, offset: durationtools.Offset(17, 2), duration: durationtools.Duration(3, 32)
					<<
						\new Voice {
							<<
								\new Voice \with {
									\override Accidental #'stencil = ##f
									\override NoteHead #'transparent = ##t
									\override Rest #'transparent = ##t
								} {
									\slurDashed
									c,32 [ (
									r32
									ef,32 ] )
									\slurSolid
								}
								\new Voice \with {
									\override Beam #'stencil = ##f
									\override Dots #'stencil = ##f
									\override Flag #'stencil = ##f
									\override Glissando #'bound-details = #'('(right (attach-dir . 0) (padding . 3)) '(left (attach-dir . 0) (padding . 1.5)))
									\override Glissando #'minimum-length = #6
									\override NoteHead #'style = #'harmonic
									\override Stem #'stencil = ##f
								} {
									c,32 \glissando
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
							}
						}
					>>
					% performer: Contrabass 02, offset: durationtools.Offset(275, 32), duration: durationtools.Duration(85, 32)
					{
						r32
						r8
						r4
						R2. * 3
						\bar "|."
					}
				}
			>>
		>>
	>>
}