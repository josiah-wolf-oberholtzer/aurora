import itertools
from abjad import *
from aurora.nouns.colors import *
from aurora.nouns.figures import *
from abjad.tools.abctools import AbjadObject
from aurora.utils.durutils import partition_duration_by_nested_grids_and_offset


class BowingTranscriber(AbjadObject):
    
    def __init__(self):
        pass

    def __call__(self, timespan, instrument):
    
        bowing_container = Container([])

        # create one container per figure
        # fill each container with 32nd notes / skips
        for figure in timespan['figures']:
            container = Container([])
            ticks = int(figure.duration / Duration(1, 32))
            container.append(Note(0, Duration(1, 32)))
            container.extend(scoretools.Skip(Duration(1, 32)) * (ticks - 1))
            bowing_container.append(container)

        # convert pizz containers to rests
        # apply circular and jete style
        for i, figure in enumerate(timespan['figures']):
            if isinstance(figure['right'], RightHandPizzicato):
                bowing_container[i][:] = scoretools.make_rests([Duration(1, 32)] \
                    * len(bowing_container[i]))
#                spannertools.HiddenStaffSpanner(bowing_container[i])
            elif isinstance(figure['right'], RightHandJete):
                override(bowing_container[i]).glissando.style = 'dashed-line'
            elif isinstance(figure['right'], RightHandCircular):
                override(bowing_container[i]).glissando.style = 'zigzag'

        # split containers prior to rest containers, as well as final containers            
        for i, container in enumerate(bowing_container):
            if isinstance(container[0], Rest):
                if 0 < i and isinstance(bowing_container[i - 1][0], Note):
                    bowing_container[i - 1][-1] = Note(0, Duration(1, 32))
        if not isinstance(bowing_container[-1][0], Rest):
            bowing_container[-1][-1] = Note(0, Duration(1, 32))

        # apply position information to each non-rest container
        for i, figure in enumerate(timespan['figures']):
            if not isinstance(bowing_container[i][0], Rest):
                bowing_container[i][0].written_pitch = figure['position'][0].pitch
                if not isinstance(bowing_container[i][-1], scoretools.Skip):
                    bowing_container[i][-1].written_pitch = figure['position'][1].pitch

        # apply circular pitch
        for i, figure in enumerate(timespan['figures']):
            if isinstance(figure['right'], RightHandCircular):
                bowing_container[i][0].written_pitch = 0
                if not isinstance(bowing_container[i][-1], scoretools.Skip):
                    bowing_container[i][-1].written_pitch = 0
                if i < (len(bowing_container) - 1) \
                    and not isinstance(bowing_container[i + 1][0], Rest):
                    bowing_container[i + 1][0].written_pitch = 0
                    
        # apply pressure spanner ??
        groups = []
        group = []
        for i, figure in enumerate(timespan['figures']):
            if isinstance(figure['right'], (RightHandJete, RightHandPizzicato)) \
                or not isinstance(figure['pressure'][0], OverPressure):
                if group:
                    groups.append(group)
                    group = []
            else:
                group.append(i)
        if group:
            groups.append(group)
        for group in groups:
            for i in group:
                components = bowing_container[i]
                spanner = spannertools.make_solid_text_spanner_with_nib(
                    left_text=r"\filled-box #'(0 . 1.5) #'(-0.75 . 0.75) #0",
                    direction=Up,
                    )
                attach(spanner, components)

        # gliss
        groups = []
        group = []
        for i, figure in enumerate(timespan['figures']):
            if isinstance(figure['right'], RightHandPizzicato) \
                and len(group):
                groups.append(group)
                group = []
            else:
                group.append(i)
        if group:
            groups.append(group)
        for group in groups:
            for i in group:
                glissando = spannertools.Glissando()    
                attach(glissando, bowing_container[i])

        # test and return
        assert inspect(bowing_container).get_duration() == timespan.duration
        return bowing_container
