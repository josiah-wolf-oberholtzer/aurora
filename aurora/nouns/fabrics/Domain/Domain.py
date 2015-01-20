from collections import Iterable
from abjad import Duration
from abjad.tools.abctools import AbjadObject


class Domain(AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_domain',
        )

    ### INITIALIZER ###

    def __init__(self, *args):
        from aurora.nouns import fabrics
        if len(args) == 1:
            assert isinstance(args[0], Iterable) and len(args[0])
            assert all([isinstance(x, (int, Duration))
                for x in args[0]])
            object.__setattr__(self, '_domain', tuple(set(args[0])))
        elif len(args) == 2:
            assert isinstance(args[0], fabrics.PayloadedTimespan)
            assert isinstance(args[1], Iterable) and len(args[1])
            assert all([isinstance(x, (int, Duration))
                for x in args[1]])
            object.__setattr__(self, '_domain',
                tuple(self._exec(args[0].start_offset, args[0].stop_offset, set(args[1]))))
        elif len(args) == 3:
            assert isinstance(args[0], (int, Duration))
            assert isinstance(args[1], (int, Duration))
            assert args[0] < args[1]
            assert isinstance(args[2], Iterable) and len(args[2])
            assert all([isinstance(x, (int, Duration))
                for x in args[2]])
            object.__setattr__(self, '_domain',
                tuple(self._exec(args[0], args[1], set(args[2]))))
        else:
            raise ValueError

    ### SPECIAL METHODS ###

    def __eq__(self, other):
        if type(other) == type(self):
            if other._domain == self._domain:
                return True
        return False

    def __getitem__(self, item):
        return self._domain[item]

    def __getslice__(self, start_offset, stop_offset):
        return self._domain[start_offset:stop_offset]

    def __hash__(self):
        return hash(self.domain)

    def __iter__(self):
        for x in self._domain:
            yield x

    def __len__(self):
        return len(self._domain)

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return str(self._domain)

    ### PRIVATE METHODS ###

    def _exec(self, start_offset, stop_offset, steps):
        values = []
        assert all([0 < x for x in steps])
        for step in steps:
            v = start_offset
            while v <= stop_offset:
                if v not in values:
                    if isinstance(v, Duration) and v.denominator == 1:
                        v = int(v)
                    values.append(v)
                v += step
        values.sort()
        return values
