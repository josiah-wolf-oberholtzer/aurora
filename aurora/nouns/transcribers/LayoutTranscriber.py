from abjad import *
from abjad.tools.abctools import AbjadObject


class LayoutTranscriber(AbjadObject):

    def __init__(self):
        pass

    ### SPECIAL METHODS ###

    def __call__(self, score):
        print '\tTranscribing Layout'
        assert isinstance(score, Score)
        assert all([isinstance(x, scoretools.StaffGroup) for x in score])
        for group in score:
            assert all([isinstance(x, scoretools.StaffGroup) for x in group])
        lily = lilypondfiletools.make_basic_lilypond_file(score)
        self._polish_staves(lily)
        self._polish_score(lily)
        self._polish_lily(lily)
        return lily

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE METHODS ###

    def _polish_lily(self, lily):
        lily.default_paper_size = ('11x17', 'portrait')
        lily.global_staff_size = 7.75
        lily.header_block.dedication = 'for Ensemble Kaleidoskop'
        lily.header_block.title = schemetools.Scheme(
            'mbrsi/aurora',
            force_quotes=True,
            )
        lily.header_block.subtitle = 'for String Orchestra'
        lily.header_block.composer = 'Joséphine Wolf Oberholtzer (1984)'
        lily.paper_block.indent = 0
        lily.paper_block.max_systems_per_page = 1
        lily.paper_block.minimal_page_breaking = True
        lily.paper_block.print_page_number = True
        lily.paper_block.ragged_bottom = False
        lily.paper_block.ragged_last_bottom = False
        lily.paper_block.ragged_right = False
        lily.paper_block.tagline = False
        lily.paper_block.right_margin = lilypondfiletools.LilyPondDimension(1, 'in')
        lily.paper_block.left_margin = lilypondfiletools.LilyPondDimension(1.5, 'in')
        lily.paper_block.oddFooterMarkup = markuptools.Markup('\\fill-line { "joséphine wolf oberholtzer - "mbrsi/aurora"" }')
        lily.paper_block.evenFooterMarkup = markuptools.Markup('\\fill-line { ""mbrsi/aurora" - joséphine wolf oberholtzer" }')

    def _polish_score(self, lily):
        score = lily.score_block.items[0]
        score.remove_commands.append('Bar_number_engraver')
        set_(score).beat_length = schemetools.SchemeMoment(Duration(1, 4))
        set_(score).harmonic_dots = True
        set_(score).subdivide_beams = True
        override(score).bar_number.break_visibility = schemetools.SchemeVectorConstant(False, True, True)
        override(score).bar_number.font_size = 4
        override(score).bar_number.padding = 5
        override(score).bar_number.self_alignment_X = schemetools.Scheme('CENTER')
        override(score).bar_number.stencil = schemetools.Scheme('(make-stencil-boxer 0.1 1.0 ly:text-interface::print)')
        override(score).beam.auto_knee_gap = 10
        override(score).beam.breakable = True
        override(score).dynamic_line_spanner.staff_padding = 2
        override(score).dynamic_line_spanner.Y_extent = schemetools.SchemePair(-1.5, 1.5)
        override(score).glissando.breakable = True
        override(score).glissando.dash_fraction = 0
        override(score).glissando.dash_period = 1.5
        override(score).glissando.springs_and_rods = schemetools.Scheme('ly:spanner::set-spacing-rods')
        override(score).glissando.minimum_length = 6
        override(score).glissando.thickness = 2
        override(score).hairpin.minimum_length = 5
        override(score).instrument_name.font_size = 2
        override(score).instrument_name.padding = 4
        override(score).instrument_name.font_series = 'bold'
        override(score).instrument_name.font_shape = 'upright'
        override(score).metronome_mark.font_size = 4
        override(score).metronome_mark.padding = 5
        override(score).metronome_mark.font_series = 'bold'
        override(score).note_column.ignore_collision = True
        override(score).spacing_spanner.common_shortest_duration = schemetools.SchemeMoment(Duration(1, 32))
        override(score).stem.stemlet_length = 1.5
        override(score).text_script.staff_padding = 4
        override(score).text_spanner.thickness = 2
        override(score).trill_pitch_accidental.whiteout = True
        override(score).trill_pitch_head.whiteout = True
        override(score).tuplet_bracket.padding = 2
        override(score).tuplet_number.font_size = 2
        override(score).bar_line.layer = 5
        override(score).span_bar.layer = 5
        override(score).staff_symbol.layer = 1
        override(score).trill_pitch_head.layer = 4
        override(score).trill_pitch_accidental.layer = 4

    def _polish_staves(self, lily):
        score = lily.score_block.items[0]
        topmost_staff = iterate(score).by_class(Staff).next()
        topmost_staff.consists_commands.append('Bar_number_engraver')
        override(topmost_staff).bar_number.outside_staff_priority = 1000
        for orchestral_group in score:
            for staff_group in orchestral_group:
                staff_group.remove_commands.append('System_start_delimiter_engraver')
                staff_group.remove_commands.append('Span_bar_engraver')
                for i, staff in enumerate(staff_group):
                    attach(indicatortools.LilyPondCommand('time 3/4'),
                        staff)
                    attach(indicatortools.LilyPondCommand('tempo 4 = 66'),
                        staff)
#                    if indicatortools.get_effective_tempo(staff) is None:
#                        indicatortools.TempoMark(Duration(1, 4), 66)(staff)
#                    indicatortools.TimeSignatureMark(Duration(3, 4))(staff)
                    attach(indicatortools.LilyPondCommand('compressFullBarRests'),
                        staff)
                    if i == 0:
                        self._polish_bowing_staff(staff)
                    else:
                        self._polish_finger_staff(staff)

    def _polish_bowing_staff(self, staff):
        staff.remove_commands.append('Bar_engraver')
        attach(indicatortools.Clef('percussion'), staff)
        set_(staff).font_size = -3
        override(staff).beam.stencil = False
        override(staff).flag.stencil = False
        override(staff).breathing_sign.font_size = 5
        override(staff).clef.transparent = True
        override(staff).dots.transparent = True
        override(staff).glissando.bound_details = \
            schemetools.SchemeVector(
                [
                    'right',
                    schemetools.SchemePair('attach-dir', 0),
                    schemetools.SchemePair('padding', 0.5),
                    ],
                [
                    'left',
                    schemetools.SchemePair('attach-dir', 0),
                    schemetools.SchemePair('padding', 0.5),
                    ]
                )
        override(staff).glissando.zigzag_length = 1
        override(staff).glissando.zigzag_width = 2
        override(staff).multi_measure_rest.transparent = True
        override(staff).multi_measure_rest_number.stencil = False
        override(staff).note_head.stencil = schemetools.Scheme('ly:text-interface::print')
        override(staff).note_head.text = markuptools.Markup(
            markuptools.MarkupCommand('halign', 0.7,
                 markuptools.MarkupCommand('draw-circle', 0.6, 0.4, False)
            ))
        override(staff).rest.transparent = True
        override(staff).staff_symbol.line_positions = schemetools.SchemeVector(-4, 0, 4)
        override(staff).staff_symbol.staff_space = schemetools.Scheme('magstep', -3)
        override(staff).stem.stencil = False
        override(staff).time_signature.stencil = False

    def _polish_finger_staff(self, staff):
        attach(indicatortools.LilyPondCommand('mergeDifferentlyDottedOn'),
            staff)
        attach(indicatortools.LilyPondCommand('mergeDifferentlyHeadedOn'),
            staff)
        attach(indicatortools.BarLine('|.'),
            staff.select_leaves(allow_discontiguous_leaves=True)[-1])
        override(staff).glissando.zigzag_length = 2
