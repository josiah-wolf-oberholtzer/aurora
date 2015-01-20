import random
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.Filter import Filter
from aurora.nouns.fabrics.Domain import Domain


class StaticMagnitudeRandomizationFilter(Filter):

    __slots__ = ('_domain', '_seed')

    def __init__(self, domain, seed = 0):
        Filter.__init__(self, seed)
        object.__setattr__(self, '_domain', domain)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return '%s' % str(self.domain)

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        intervals = []
        for timespan in inventory:
            duration = timespan.duration + random.choice(self.domain)
            if 0 < duration:
                intervals.append(timespan.set_duration(duration))
        return TimespanInventory(intervals)

    ### PUBLIC ATTRIBUTES ###

    @property
    def domain(self):
        return self._domain
