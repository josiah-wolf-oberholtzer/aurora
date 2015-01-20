import random
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.Filter import Filter
from aurora.nouns.fabrics.Domain import Domain


class StaticOffsetRandomizationFilter(Filter):

    __slots__ = ('_domain', '_seed')

    def __init__(self, domain):
        Filter.__init__(self)
        assert isinstance(domain, Domain)
        object.__setattr__(self, '_domain', domain)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return '%s' % str(self.domain)

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        intervals = []
        for timespan in inventory:
            intervals.append(timespan.translate(random.choice(self.domain)))
        return TimespanInventory(intervals)

    ### PUBLIC ATTRIBUTES ###

    @property
    def domain(self):
        return self._domain
