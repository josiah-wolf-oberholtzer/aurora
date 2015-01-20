import copy
from abjad import *
from abjad.tools.abctools import AbjadObject


class PartTranscriber(AbjadObject):

    def __init__(self):
        pass

    ### SPECIAL METHODS ###
    
    def __call__(self, lily):
        print '\tTranscribing Parts'
        assert isinstance(lily, lilyfiletools.LilyFile)
        parts = []
        score = lily.score_block[0]
        assert isinstance(score, Score)
        for orchestral_group in score:
            assert isinstance(orchestral_group, scoretools.StaffGroup)
            staff_groups = [staff_group for staff_group in orchestral_group]
            for staff_group in staff_groups:
                assert isinstance(staff_group, scoretools.StaffGroup)
                print '\t\tTranscribing %s' % staff_group.name
                ### Why doesn't copy work?
                ### We want to clone the instrumental parts,
                ### not reuse the ones in the master-score object!
                ### But, instead I'm detaching each instrument... yuck
                score = Score([])
                score.append(staff_group)
                part = lilypondfiletools.make_basic_lilypond_file(score)
                assert staff_group not in orchestral_group
                self._polish_staves(part)
                self._polish_score(part)
                self._polish_lily(part)
                parts.append(part)
        return parts

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE METHODS ###

    def _polish_lily(self, lily):
        performer_name = lily.score_block[0][0].name
        lily.default_paper_size = ('a4', 'portrait')
        lily.global_staff_size = 10
        lily.header_block.composer = 'Josiah Wolf Oberholtzer (1984)'
        lily.header_block.dedication = 'for Ensemble Kaleidoskop'
        lily.header_block.instrument = schemetools.Scheme(
            performer_name,
            force_quotes=True,
            )
        lily.header_block.title = schemetools.Scheme(
            'mbrsi/aurora',
            force_quotes=True,
            )

        lily.paper_block.between_system_spacing = schemetools.SchemeAssociativeList( \
            ('space', 0), ('padding', 2), ('stretchability', 0), ('minimum-distance', 0))
        lily.paper_block.top_system_spacing = schemetools.SchemeAssociativeList( \
            ('space', 0), ('padding', 4), ('stretchability', 0), ('minimum-distance', 0))
        lily.paper_block.bottom_system_spacing = schemetools.SchemeAssociativeList( \
            ('space', 0), ('padding', 4), ('stretchability', 0), ('minimum-distance', 0))

        lily.paper_block.max_systems_per_page = 8
        lily.paper_block.optimal_page_breaking = True
        lily.paper_block.print_page_number = True
        lily.paper_block.ragged_right = True
        lily.paper_block.ragged_bottom = False
        lily.paper_block.ragged_last_bottom = True

        lily.paper_block.right_margin = lilypondfiletools.LilyPondDimension(0.75, 'in')
        lily.paper_block.left_margin = lilypondfiletools.LilyPondDimension(0.75, 'in')
        lily.paper_block.top_margin = lilypondfiletools.LilyPondDimension(0.75, 'in')
        lily.paper_block.bottom_margin = lilypondfiletools.LilyPondDimension(0.75, 'in')        

        lily.paper_block.oddFooterMarkup = markuptools.Markup( \
            '\\fill-line { "josiah wolf oberholtzer - "mbrsi/aurora" - %s" }' % performer_name.lower())
        lily.paper_block.evenFooterMarkup = markuptools.Markup( \
            '\\fill-line { "%s - "mbrsi/aurora" - josiah wolf oberholtzer" }' % performer_name.lower())

    def _polish_score(self, lily):
        score = lily.score_block[0]
        score.remove_commands.append('Bar_number_engraver')
        score.set.beat_length = schemetools.SchemeMoment(Duration(1, 4))
        score.set.harmonic_dots = True
        score.set.subdivide_beams = True
        override(score).bar_number.break_visibility = schemetools.SchemeVectorConstant(False, True, True)
        override(score).bar_number.font_size = 4
        override(score).bar_number.padding = 5
        override(score).bar_number.self_alignment_X = schemetools.SchemeVariable('CENTER')
        override(score).bar_number.stencil = schemetools.Scheme('(make-stencil-boxer 0.1 1.0 ly:text-interface::print)')
        override(score).beam.auto_knee_gap = 10
        override(score).beam.breakable = True
        override(score).dynamic_line_spanner.staff_padding = 2
        override(score).dynamic_line_spanner.Y_extent = schemetools.SchemePair(-1.5, 1.5)
        override(score).glissando.breakable = True
        override(score).glissando.dash_fraction = 0
        override(score).glissando.dash_period = 1.75
        override(score).glissando.springs_and_rods = schemetools.Scheme('ly:spanner::set-spacing-rods')
        override(score).glissando.minimum_length = 8
        override(score).glissando.thickness = 2.5
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
        override(score).text_script.padding = 1.5
        override(score).text_script.staff_padding = 4
        override(score).text_spanner.thickness = 3
        override(score).trill_pitch_accidental.whiteout = True
        override(score).trill_pitch_head.whiteout = True
        override(score).tuplet_bracket.padding = 3.5
        override(score).tuplet_number.font_size = 2
        override(score).bar_line.layer = 5
        override(score).span_bar.layer = 5
        override(score).staff_symbol.layer = 1
        override(score).trill_pitch_head.layer = 4
        override(score).trill_pitch_accidental.layer = 4
        override(score).tuplet_number.padding = 1.5

    def _polish_staves(self, lily):
        score = lily.score_block[0]
        staff_group = score[0]
        staff_group[0].consists_commands.append('Bar_number_engraver')
        override(staff_group[0]).bar_number.outside_staff_priority = 1000
        staff_group[1].remove_commands.append('Instrument_name_engraver')
        override(staff_group[1]).glissando.zigzag_length = 1
        override(staff_group[1]).glissando.zigzag_width = 2
