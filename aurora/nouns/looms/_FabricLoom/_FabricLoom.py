from collections import Iterable
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics.Filter import Filter
from aurora.nouns.fabrics.Generator import Generator
from aurora.nouns.fabrics.Resolver import Resolver
from abjad.tools.abctools import AbjadObject


class _FabricLoom(AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_ensemble',
        '_fabric',
        '_filtered_inventory',
        '_filters',
        '_generated_inventory',
        '_generator',
        '_resolved_inventory',
        '_resolver',
        '_seed',
        )

    ### INITIALIZER ###

    def __init__(self, ensemble, generator, filters, resolver, seed):
        assert isinstance(ensemble, Ensemble)
        assert isinstance(generator, Generator)
        assert isinstance(filters, Iterable)
        if len(filters):
            assert all(isinstance(x, Filter) for x in filters)
        assert isinstance(resolver, Resolver)
        assert isinstance(seed, int)
        self._ensemble = ensemble
        self._fabric = None
        self._filtered_inventory = None
        self._filters = tuple(filters)
        self._generated_inventory = None
        self._generator = generator
        self._resolved_inventory = None
        self._resolver = resolver
        self._seed = seed

    ### SPECIAL METHODS ###

    def __call__(self):
        return self.fabric

    def __eq__(self, other):
        if type(other) == type(self) \
            and other.ensemble == self.ensemble \
            and other.filters == self.filters \
            and other.generator == self.generator \
            and other.resolver == self.resolver:
            return True
        return False

    def __hash__(self):
        return hash([self.__class__.__name__,
            self.ensemble,
            self.filters,
            self.generator,
            self.resolver,
            ])

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ' '

    ### PRIVATE METHODS

    def _exec(self):
        print '\t\tgenerating'
        fabric = self.generator()
        self._generated_inventory = fabric
        print '\t\t\tgenerated {} intervals, overall duration {}'.format(
            len(fabric), fabric.duration)
        for i, timespan_filter in enumerate(self.filters):
            print '\t\tapplying filter {} of {} ({})'.format(
                i + 1, len(self.filters),
                type(timespan_filter).__name__,
                )
            fabric = timespan_filter(fabric)
        self._filtered_inventory = fabric
        print '\t\tresolving'
        fabric = self.resolver(fabric)
        resolved_inventory = TimespanInventory()
        for value in fabric.values():
            resolved_inventory.extend(value)
        self._resolved_inventory = resolved_inventory
        return fabric

    ### PUBLIC ATTRIBUTES ###

    @property
    def ensemble(self):
        return self._ensemble

    @property
    def fabric(self):
        if self._fabric is None:
            self._fabric = self._exec()
        print '\t\tpulling fabric'
        return self._fabric

    @property
    def filters(self):
        return self._filters

    @property
    def generator(self):
        return self._generator

    @property
    def resolver(self):
        return self._resolver

    @property
    def seed(self):
        return self._seed
