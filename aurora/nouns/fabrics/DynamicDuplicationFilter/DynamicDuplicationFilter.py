from copy import copy
from abjad import Duration
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.DynamicScalingFilter import DynamicScalingFilter
from aurora.utils.mathutils import scale_value


class DynamicDuplicationFilter(DynamicScalingFilter):

    def __init__(self, trajectory, min, max, reference = 'start_offset', quantization = Duration(1, 32), seed = 0):
        assert 0 <= min <= max
        DynamicScalingFilter.__init__(self, trajectory, min, max, reference, quantization, seed)

    ### PRIVATE METHODS ###

    def _exec_with_reference(self, inventory, start_offset, stop_offset):
        intervals = []
        for timespan in inventory:
            if self.reference == 'start_offset':
                x = timespan.start_offset
            elif self.reference == 'stop_offset':
                x = timespan.stop_offset
            elif self.reference == 'centroid':
                x = timespan.axis
            x = scale_value(x, start_offset, stop_offset, 0, 1)
            y = self.trajectory.get_y_at_x(x)
            y = int(scale_value(y, 0., 1., self.min, self.max))
            intervals.append(timespan)
            intervals.extend([copy(timespan) for i in range(y)])
        return TimespanInventory(intervals)
