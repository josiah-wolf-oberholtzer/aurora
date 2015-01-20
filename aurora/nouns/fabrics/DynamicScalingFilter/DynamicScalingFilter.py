import random
from abjad import Duration
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.Filter import Filter
from aurora.nouns.trajectories import Trajectory
from aurora.utils.mathutils import scale_value


class DynamicScalingFilter(Filter):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_max',
        '_min',
        '_quantization',
        '_reference',
        '_seed',
        '_trajectory',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        trajectory,
        min,
        max,
        reference='start_offset',
        quantization=Duration(1, 32),
        seed=0,
        ):
        assert isinstance(trajectory, Trajectory) and trajectory.is_normalized
        assert all([isinstance(x, (int, Duration)) for x in (min, max)])
        assert reference in ('start_offset', 'stop_offset', 'centroid',)
        assert isinstance(quantization, (int, Duration))
        assert 0 < quantization
        object.__setattr__(self, '_trajectory', trajectory)
        object.__setattr__(self, '_min', min)
        object.__setattr__(self, '_max', max)
        object.__setattr__(self, '_reference', reference)
        object.__setattr__(self, '_seed', seed)
        object.__setattr__(self, '_quantization', quantization)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ', '.join([repr(self.trajectory), str(self.min), str(self.max), \
            repr(self.reference), repr(self.quantization)])

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        if self.reference == 'start_offset':
            start_offset = inventory.start_offset
            stop_offset = max(x.start_offset for x in inventory)
        elif self.reference == 'stop_offset':
            start_offset = min(x.stop_offset for x in inventory)
            stop_offset = inventory.stop_offset
        elif self.reference == 'centroid':
            start_offset = min(x.axis for x in inventory)
            stop_offset = max(x.axis for x in inventory)
        else:
            raise Exception('Unknown reference value %s' % repr(self.reference))
        return self._exec_with_reference(inventory, start_offset, stop_offset)

    def _exec_with_reference(self, inventory, start_offset, stop_offset):
        raise Exception('Not implemented in %s' % self.__class__.__name__)

    ### PUBLIC ATTRIBUTES ###

    @property
    def max(self):
        return self._max

    @property
    def min(self):
        return self._min

    @property
    def quantization(self):
        return self._quantization

    @property
    def reference(self):
        return self._reference

    @property
    def trajectory(self):
        return self._trajectory
