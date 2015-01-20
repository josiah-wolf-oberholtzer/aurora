from collections import Iterable
from aurora.nouns.performers import Performer
from aurora.nouns.performers import sort_performers
from abjad.tools.abctools import AbjadObject


class Ensemble(AbjadObject):
    '''An ensemble is a unique set of performers.'''

    __slots__ = ('_performers',)

    def __init__(self, performers):
        def recurse(x):
            if isinstance(x, Iterable) and \
            not isinstance(x, (basestring)):
                return [a for i in x for a in recurse(i)]
            else:
                return [x]
        p = recurse(performers)
        assert len(p) and all([isinstance(x, Performer) for x in p])
        p = sort_performers(list(set(p)))
        object.__setattr__(self, '_performers', tuple(p))

    ### SPECIAL METHODS ###

    def __eq__(self, other):
        if type(other) == type(self):
            if other.performers == self.performers:
                return True
        return False

    def __getitem__(self, item):
        return self.performers[item]

    def __hash__(self):
        return hash(self.performers)

    def __iter__(self):
        for performer in self.performers:
            yield performer

    def __len__(self):
        return len(self.performers)

    def __repr__(self):
        return '%s([\n\t%s\n])' % (self.__class__.__name__,
            ',\n\t'.join([repr(p) for p in self.performers]))

    ### PUBLIC ATTRIBUTES ###

    @property
    def performers(self):
        return tuple(self._performers)
