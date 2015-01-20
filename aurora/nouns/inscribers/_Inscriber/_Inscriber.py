import random
from aurora.nouns.fabrics import Fabric
from aurora.utils.mathutils import scale_value
from abjad.tools.abctools import AbjadObject


class _Inscriber(AbjadObject):

    __slots__ = ('_reference', '_seed',)

    def __init__(self, reference = 'centroid', seed = 0):
        assert reference in ['centroid', 'start_offset', 'stop_offset']
        object.__setattr__(self, '_reference', reference)
        object.__setattr__(self, '_seed', seed)

    ### SPECIAL METHODS ###

    def __call__(self, fabric):
        assert isinstance(fabric, Fabric)
        random.seed(self.seed)
        start_offset, stop_offset = self._get_fabric_extrema(fabric)
        fabric = self._exec(fabric, start_offset, stop_offset)
        return fabric

    def __eq__(self, other):
        if type(other) == type(self) \
            and other.reference == self.reference \
            and other.seed == self.seed:
            return True
        return False

    def __hash__(self):
        return hash(self.__class__.__name__, self.seed)

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE METHODS ###

    @property
    def _format_string(self):
        return ' '

    ### PRIVATE METHODS ###

    def _exec(self, fabric, start_offset, stop_offset):
        raise Exception('Not implemented in %s' % self.__class__.__name__)

    def _get_fabric_extrema(self, fabric):
        if self.reference == 'start_offset':
            start_offset = min([inventory.start_offset for inventory in fabric.values()])
            stop_offset = max([inventory.latest_start for inventory in fabric.values()])
        elif self.reference == 'stop_offset':
            start_offset = min([inventory.earliest_stop for inventory in fabric.values()])
            stop_offset = max([inventory.stop_offset for inventory in fabric.values()])
        elif self.reference == 'centroid':
            start_offset = min([min([i.axis for i in inventory]) for inventory in fabric.values()])
            stop_offset = max([min([i.axis for i in inventory]) for inventory in fabric.values()])
        return start_offset, stop_offset

    def _get_interval_x(self, timespan, start_offset, stop_offset):
        if self.reference == 'centroid':
            reference = timespan.axis
        elif self.reference == 'start_offset':
            reference = timespan.start_offset
        elif self.reference == 'stop_offset':
            reference = timespan.stop_offset
        return scale_value(reference, start_offset, stop_offset, 0., 1.)

    ### PUBLIC ATTRIBUTES

    @property
    def reference(self):
        return self._reference

    @property
    def seed(self):
        return self._seed

