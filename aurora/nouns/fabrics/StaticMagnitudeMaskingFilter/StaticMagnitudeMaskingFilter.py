from abjad import Duration
from abjad.tools.timespantools import *
from aurora.nouns.fabrics.Filter import Filter


class StaticMagnitudeMaskingFilter(Filter):

    __slots__ = ('_duration', '_op', '_seed')

    def __init__(self, op, duration):
        Filter.__init__(self)
        assert op in ('==', '!=', '<', '>', '<=', '>=')
        assert isinstance(duration, (int, Duration))
        object.__setattr__(self, '_duration', duration)
        object.__setattr__(self, '_op', op)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return '%s, %s' % (repr(self.op), str(self.duration))

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        intervals = []
        for timespan in inventory:
            if not eval('%s %s %s' % \
                (str(timespan.duration), self.op, str(self.duration))):
                intervals.append(timespan)
        return TimespanInventory(intervals)

    ### PUBLIC ATTRIBUTES ###

    @property
    def duration(self):
        return self._duration

    @property
    def op(self):
        return self._op
