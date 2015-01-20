from abjad.tools.timespantools import TimespanInventory
from aurora.nouns import performers
from aurora.nouns import ensembles
from copy import copy


class Fabric(dict):

    __slots__ = ('_ensemble',)

    def __init__(self, *args):
        if len(args) == 2:
            ensemble = args[0]
            inventorys = args[1]
            assert isinstance(ensemble, ensembles.Ensemble)
            assert all(isinstance(inventory, TimespanInventory)
                for inventory in inventorys)
            assert len(ensemble) == len(inventorys)
            self._ensemble = ensemble
            for performer, inventory in zip(ensemble, inventorys):
                dict.__setitem__(self, performer, inventory)
        elif len(args) == 1:
            assert isinstance(args[0], dict)
            assert all(isinstance(key, performers.Performer)
                for key in args[0].keys())
            assert all(isinstance(value, TimespanInventory)
                for value in args[0].values())
            self._ensemble = ensembles.Ensemble(args[0].keys())
            for performer, inventory in args[0].iteritems():
                dict.__setitem__(self, performer, inventory)
        else:
            raise ValueError

    ### SPECIAL METHODS ###

    def __copy__(self):
        temp = {}
        for performer, inventory in self.iteritems():
            temp[performer] = copy(inventory)
        return Fabric(temp)

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ' '

    ### PUBLIC ATTRIBUTES ###

    @property
    def bounds(self):
        from abjad.tools import timespantools
        return timespantools.Timespan(
            start_Offset=self.start_offset,
            stop_offset=self.stop_offset,
            )

    @property
    def ensemble(self):
        return self._ensemble

    @property
    def stop_offset(self):
        return max(
            inventory.stop_offset
            for inventory in filter(
                lambda x: x is not None, self.values())
            )

    @property
    def start_offset(self):
        return min(
            inventory.start_offset
            for inventory in filter(
                lambda x: x is not None, self.values())
            )
