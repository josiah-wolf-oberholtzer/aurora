from abjad import *
from aurora.nouns.figures.LeftHand import LeftHand
from aurora.utils.durutils import partition_duration_by_nested_grids_and_offset


class LeftHandSingleStop(LeftHand):

    def __call__(self, figure, instrument):
        duration, offset = figure.duration, figure.start_offset
#        grids = [Duration(3, 4), Duration(1, 4), Duration(1, 8)]
        grids = [Duration(3, 4), Duration(1, 4)]
        durations = partition_duration_by_nested_grids_and_offset(duration, grids, offset)
        pitches, strings, touch = figure['pitches'], figure['strings'], figure['touch']
        container = Container(scoretools.make_leaves(pitches[0], durations))
        if 1 < len(container):
            attach(spannertools.Tie(), container[:])
            attach(spannertools.MultipartBeam(), container)
        if pitches[0] != instrument.strings[strings[0]] and str(touch) != 'default':
            override(container).note_head.style = str(touch)
        elif pitches[0] == instrument.strings[strings[0]]:
            attach(indicatortools.Articulation('open'),
                container.select_leaves()[0])
        assert container.get_duration() == figure.duration
        return container
