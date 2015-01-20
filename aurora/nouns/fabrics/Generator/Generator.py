import random
from collections import Iterable
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.Goal import Goal
from aurora.nouns.fabrics.Domain import Domain
from abjad.tools.abctools import AbjadObject


class Generator(AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_duration_domain',
        '_goals',
        '_inventory',
        '_offset_domain',
        '_seed',
        )

    ### INITIALIZER ###

    def __init__(self, duration_domain, offset_domain, goals, seed=0):
        assert isinstance(duration_domain, Domain)
        assert isinstance(offset_domain, Domain)
        assert isinstance(goals, Iterable) and len(goals)
        assert all(isinstance(x, Goal) for x in goals)
        goaldict = {}
        for goal in goals:
            if goal.__class__ not in goaldict:
                goaldict[goal.__class__] = goal
            else:
                raise ValueError('Duplicate goal types not allowed.')
        assert all([0 < x for x in duration_domain])
        self._goals = tuple(goaldict.values())
        self._duration_domain = duration_domain
        self._offset_domain = offset_domain
        self._seed = seed
        self._inventory = None

    ### SPECIAL METHODS ###

    def __call__(self):
        if self._inventory is None:
            inventory = TimespanInventory([])
            random.seed(self.seed)
            iter = self._exec()
            while not all(x(inventory) for x in self.goals):
                inventory.append(iter.next())
            self._inventory = inventory
        return self.inventory

    def __eq__(self, other):
        if type(other) == type(self) \
            and other.duration_domain == self.duration_domain \
            and other.offset_domain == self.offset_domain \
            and other.goals == self.goals \
            and other.seed == self.seed:
            return True
        return False

    def __hash__(self):
        return hash((
            self.__class__.__name__,
            self.duration_domain,
            self.offset_domain,
            self.goals,
            self.seed,
            ))

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ', '.join((
            repr(self.duration_domain),
            repr(self.offset_domain),
            repr(self.goals),
            self.seed,
            ))

    ### PRIVATE METHODS ###

    def _exec(self):
        raise Exception('Not implemented in %s.' % self.__class__.__name__)

    ### PUBLIC ATTRIBUTES ###

    @property
    def goals(self):
        return self._goals

    @property
    def duration_domain(self):
        return self._duration_domain

    @property
    def offset_domain(self):
        return self._offset_domain

    @property
    def seed(self):
        return self._seed

    @property
    def inventory(self):
        if self._inventory is None:
            return self()
        else:
            return self._inventory
