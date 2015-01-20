from collections import Iterable
from aurora.nouns.instruments import _Instrument
from abjad.tools.abctools import AbjadObject


class Performer(AbjadObject):

    __slots__ = ('_name', '_instruments')

    def __init__(self, name, instruments):
        assert isinstance(name, str) and len(name)
        assert isinstance(instruments, Iterable) and len(instruments)
        assert all([isinstance(x, _Instrument) for x in instruments])
        object.__setattr__(self, '_name', name)
        object.__setattr__(self, '_instruments', tuple(set(instruments)))

    ### SPECIAL METHODS ###

    def __eq__(self, other):
        if type(other) == type(self):
            if other.name == self.name:
                if other.instruments == self.instruments:
                    return True
        return False

    def __hash__(self):
        return hash((self.name, self.instruments,))

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES

    @property
    def _format_string(self):
        return '%s, %s' % (repr(self.name), repr(self.instruments))

    ### PUBLIC ATTRIBUTES ###

    @property
    def instruments(self):
        return self._instruments

    @property
    def name(self):
        return self._name
