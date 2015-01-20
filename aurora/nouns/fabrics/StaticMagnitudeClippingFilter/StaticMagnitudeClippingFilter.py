from abjad.tools import durationtools
from abjad.tools import timespantools
from aurora.nouns.fabrics.Filter import Filter


class StaticMagnitudeClippingFilter(Filter):

    __slots__ = ('_min', '_max', '_seed')

    def __init__(self, min, max):
        Filter.__init__(self)
        assert isinstance(min, (type(None), int, durationtools.Duration))
        assert isinstance(max, (type(None), int, durationtools.Duration))
        if all([isinstance(x, (int, Duration)) for x in (min, max)]):
            assert 0 < min <= max
        object.__setattr__(self, '_min', min)
        object.__setattr__(self, '_max', max)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return '%s, %s' % (str(self.min), str(self.max))
    
    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        return inventory.clip_timespan_durations(self.min, self.max)

    ### PUBLIC ATTRIBUTES ###

    @property
    def max(self):
        return self._max

    @property
    def min(self):
        return self._min
