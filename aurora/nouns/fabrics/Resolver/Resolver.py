import numbers
import random
from abjad.tools import abctools
from abjad.tools import durationtools
from abjad.tools import timespantools
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics.Fabric import Fabric


class Resolver(abctools.AbjadObject):
    '''A Resolver encapsulates the logic for exploding a single TimespanInventory
    into a collection of nonoverlapping TimespanInventorys, one for each Performer
    in a given Ensemble.'''

    __slots__ = ('_ensemble', '_seed',)

    def __init__(self, ensemble, seed = 0):
        assert isinstance(ensemble, Ensemble)
        assert isinstance(seed, numbers.Number)
        object.__setattr__(self, '_ensemble', ensemble)
        object.__setattr__(self, '_seed', seed)

    ### SPECIAL METHODS ###

    def __call__(self, inventory):
        assert isinstance(inventory, timespantools.TimespanInventory)
        random.seed(self.seed)
        inventory = inventory.clip_timespan_durations(
            durationtools.Duration(1, 16), None)
        inventorys = self._exec(inventory)
        start_offset = min([x.start_offset for x in inventorys])
        for i, inventory in enumerate(inventorys):
            inventorys[i] = inventory.translate(-1 * start_offset)
            inventorys[i] = timespantools.TimespanInventory(
                [x for x in inventorys[i] 
                    if durationtools.Duration(1, 16) <= x.duration])
            assert inventorys[i].all_are_nonoverlapping
        fabric = Fabric(self.ensemble, inventorys)
        for performer, inventory in fabric.iteritems():
            for timespan in inventory:
                timespan['performer'] = performer
        return fabric

    def __eq__(self, other):
        if type(other) == type(self) \
            and other.ensemble == self.ensemble \
            and other.seed == self.seed:
            return True
        return False

    def __hash__(self):
        return hash([self.ensemble, self.seed])

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return '%s, %s' % (self.ensemble, self.seed)

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        raise Exception('Not implemented in %s.' % self.__class__.__name__)

    ### PUBLIC ATTRIBUTES ###

    @property
    def ensemble(self):
        return self._ensemble

    @property
    def seed(self):
        return self._seed
