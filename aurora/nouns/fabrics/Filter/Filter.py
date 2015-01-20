import random
from abjad.tools.timespantools import TimespanInventory
from abjad.tools.abctools import AbjadObject


class Filter(AbjadObject):

    __slots__ = ('_seed',)

    def __init__(self, seed = 0):
        object.__setattr__(self, '_seed', seed)

    ### SPECIAL METHODS ###

    def __call__(self, inventory):
        assert isinstance(inventory, TimespanInventory)
        random.seed(self.seed)
        return self._exec(inventory)

    def __eq__(self, other):
        if type(other) == type(self) \
            and other.seed == self.seed:
            return True
        return False

    def __hash__(self):
        return hash([self.__class__.__name__, self.seed])

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        raise Exception('Not implemented in %s.' % self.__class__.__name__)

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        raise Exception('Not implemented in %s.' % self.__class__.__name__)

    ### PUBLIC ATTRIBUTES ###

    @property
    def seed(self):
        return self._seed
