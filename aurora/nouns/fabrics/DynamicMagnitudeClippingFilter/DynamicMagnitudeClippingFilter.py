from abjad import Duration
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.DynamicScalingFilter import DynamicScalingFilter
from aurora.utils.mathutils import scale_value
from aurora.utils.mathutils import round_x_to_nearest_multiple_of_y


class DynamicMagnitudeClippingFilter(DynamicScalingFilter):

    __slots__ = ('_max', '_min', '_op', '_quantization', '_reference', '_seed', '_trajectory',)

    def __init__(self, op, trajectory, min, max, reference = 'start_offset', quantization = Duration(1, 32)):
        assert 0 < min <= max
        DynamicScalingFilter.__init__(self, trajectory, min, max, reference, quantization)
        assert op in ('start_offset', 'stop_offset')
        object.__setattr__(self, '_op', op)

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
            y = scale_value(y, 0., 1., self.min, self.max)
            y = round_x_to_nearest_multiple_of_y(y, self.quantization) 
            if self.op == 'start_offset':
                if timespan.duration < y:
                    intervals.append(timespan.set_duration(y))
                else:
                    intervals.append(timespan)
            elif self.op == 'stop_offset':
                if y < timespan.duration:
                    intervals.append(timespan.set_duration(y))
                else:
                    intervals.append(timespan)
        return TimespanInventory(intervals)

    ### PUBLIC ATTRIBUTES ###

    @property
    def op(self):
        return self._op
