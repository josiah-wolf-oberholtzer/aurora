from abjad import *
from aurora.utils.durutils import partition_duration_by_nested_grids_and_offset


class SilenceTranscriber(abctools.AbjadObject):

    ### INITIALIZER ##

    def __init__(self):
        pass

    ### SPECIAL METHODS ###

    def __call__(self, timespan, performer):
        duration = timespan.duration
        grids = [
            durationtools.Duration(3, 4),
            durationtools.Duration(1, 4),
            durationtools.Duration(1, 8),
            ]
        offset = timespan.start_offset
        durations = partition_duration_by_nested_grids_and_offset(
            duration, grids, offset)
        finger_container = Container(scoretools.make_rests(durations))
        bowing_container = Container(scoretools.make_rests(durations))
        for container in [finger_container, bowing_container]:
            message = 'performer: {}, offset: {}, duration: {}'
            message = message.format(
                performer.name, timespan.start_offset, timespan.duration)
            lilypond_comment = indicatortools.LilyPondComment(message)
            attach(lilypond_comment, container)
            rests = [x for x in container
                if inspect(x).get_duration() == durationtools.Duration(3, 4)]
            if rests:
                mmr = scoretools.MultimeasureRest(durationtools.Duration(3, 4))
                multiplier = Multiplier(len(rests))
                attach(multiplier, mmr)
                container[container.index(rests[0])] = mmr
                for rest in rests[1:]:
                    container.pop(container.index(rest))
        hidden_staff_spanner = spannertools.HiddenStaffSpanner()
        attach(hidden_staff_spanner, bowing_container)
        assert inspect(finger_container).get_duration() == timespan.duration, \
            (inspect(finger_container).get_duration(), timespan.duration)
        assert inspect(bowing_container).get_duration() == timespan.duration, \
            (inspect(bowing_container).get_duration(), timespan.duration)
        return finger_container, bowing_container
