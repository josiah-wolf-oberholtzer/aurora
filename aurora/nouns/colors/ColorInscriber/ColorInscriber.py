import random
from collections import Iterable
from aurora.nouns.colors import *
from aurora.nouns.colors import Touch, Pressure, Position
from aurora.nouns.fabrics import Fabric
from aurora.nouns.figures import *
from aurora.nouns.performers import Contrabassist
from aurora.utils.mathutils import drunk
from abjad.tools.abctools import AbjadObject


class ColorInscriber(AbjadObject):

    __slots__ = ('_reference', '_seed',)

    def __init__(self, touches, positions, pressures, \
        reference = 'centroid', seed = 0):
        assert isinstance(touches, Iterable) and len(touches) and \
            all([isinstance(x, Touch) for x in touches])
        assert isinstance(positions, Iterable) and len(touches) and \
            all([isinstance(x, Position) for x in positions])
        assert isinstance(pressures, Iterable) and len(touches) and \
            all([isinstance(x, Pressure) for x in pressures])
        assert reference in ['centroid', 'start_offset', 'stop_offset']
        object.__setattr__(self, '_touches', tuple(touches))
        object.__setattr__(self, '_positions', tuple(positions))
        object.__setattr__(self, '_pressures', tuple(pressures))
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
        for performer, inventory in fabric.iteritems():
            for timespan in inventory:
                pos_ids_one = drunk(len(timespan['figures']), len(self.positions), 2)
                pos_ids_two = [drunk(2, len(self.positions), x)[1] for x in pos_ids_one]
                for i, figure in enumerate(timespan['figures']):
                    figure['touch'] = random.choice(self.touches)
                    figure['position'] = [self.positions[pos_ids_one[i]], self.positions[pos_ids_two[i]]]
                    figure['pressure'] = [random.choice(self.pressures), random.choice(self.pressures)]
                    if isinstance(performer, Contrabassist) \
                        and isinstance(figure['left'], \
                            (LeftHandGlissando, LeftHandOscillation, LeftHandRoll)):
                        figure['touch'] = HarmonicTouch()

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
    def positions(self):
        return self._positions

    @property
    def pressures(self):
        return self._pressures

    @property
    def reference(self):
        return self._reference
            
    @property
    def seed(self):
        return self._seed

    @property
    def touches(self):
        return self._touches
