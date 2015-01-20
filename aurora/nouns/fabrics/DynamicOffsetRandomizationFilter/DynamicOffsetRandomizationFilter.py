import random
from abjad.tools.timespantools import *
from aurora.nouns.fabrics.DynamicScalingFilter import DynamicScalingFilter
from aurora.utils.mathutils import scale_value
from aurora.utils.mathutils import round_x_to_nearest_multiple_of_y


class DynamicOffsetRandomizationFilter(DynamicScalingFilter):

    ### PRIVATE METHODS ###

    def _exec_with_reference(self, inventory, start_offset, stop_offset):
        intervals = []
        for timespan in inventory:
            r = scale_value(random.random(), 0, 1, self.min, self.max)
            if self.reference == 'start_offset':
                x = timespan.start_offset
            elif self.reference == 'stop_offset':
                x = timespan.stop_offset
            elif self.reference == 'centroid':
                x = timespan.axis
            x = scale_value(x, start_offset, stop_offset, 0, 1)
            y = self.trajectory.get_y_at_x(x)
            o = round_x_to_nearest_multiple_of_y(r * y, self.quantization)
            intervals.append(timespan.translate(o))
        return TimespanInventory(intervals)
