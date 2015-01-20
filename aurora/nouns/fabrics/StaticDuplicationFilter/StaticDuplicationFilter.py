from copy import copy
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.Filter import Filter


class StaticDuplicationFilter(Filter):

    __slots__ = ('_count', '_seed')

    def __init__(self, count):
        Filter.__init__(self)
        assert 0 < count
        object.__setattr__(self, '_count', int(count))

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        intervals = []
        for timespan in inventory:
            intervals.append(timespan)
            intervals.append(copy(timespan))
        return TimespanInventory(intervals)
        
    ### PUBLIC ATTRIBUTES ###

    @property
    def count(self):
        return self._count
