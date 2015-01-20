from abjad import *
from aurora.nouns.colors import *
from aurora.nouns.figures.LeftHand import LeftHand
from aurora.utils.durutils import partition_duration_by_nested_grids_and_offset


class LeftHandTrill(LeftHand):

    def __call__(self, figure, instrument):
        duration, offset = figure.duration, figure.start_offset
        grids = [Duration(3, 4), Duration(1, 4)]
        durations = partition_duration_by_nested_grids_and_offset(duration, grids, offset)
        pitches, strings, touch = figure['pitches'], figure['strings'], figure['touch']
        container = Container(scoretools.make_leaves(pitches[0], durations))
        # apply spanners if more than one leaf made
        if 1 < len(container):
            tie = spannertools.Tie()
            attach(tie, container[:])
            beam = spannertools.MultipartBeam()
            attach(beam, container[:])
        # add skip to ensure trill spanner termination
        skip = scoretools.Skip(container[-1].written_duration)
        attach(Multiplier(1, 100), skip)
        attach(Multiplier(99, 100), container[-1])
        container.append(skip)
        # apply trill spanner
        trill = spannertools.TrillSpanner(
            pitch=pitches[1],
            )
        attach(trill, container[:])
        # check for open strings, apply harmonic style if necessary
        if pitches[0] != instrument.strings[strings[0]] and str(touch) != 'default':
            override(container).note_head.style = str(touch)
        elif pitches[0] == instrument.strings[strings[0]]:
            articulation = indicatortools.Articulation('open')
            attach(articulation, container.select_leaves()[0])
        if isinstance(touch, HarmonicTouch):
            override(container).trill_pitch_head.stencil = \
                schemetools.Scheme('ly:text-interface::print')
            override(container).trill_pitch_head.text = \
                markuptools.Markup(
                    markuptools.MusicGlyph("noteheads.s0harmonic"))
            #    schemetools.Scheme('(markup #:musicglyph "noteheads.s0harmonic" )')
        # sanity check and return
        assert inspect(container).get_duration() == figure.duration
        return container
