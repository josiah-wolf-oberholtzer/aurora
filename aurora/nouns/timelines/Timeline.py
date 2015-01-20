from collections import Iterable

from abjad import Duration
from abjad.tools import timespantools

from aurora.nouns.aggregates import Aggregate
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import Fabric
from abjad.tools.abctools import AbjadObject


class Timeline(AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_pairs',
        )

    ### INITIALIZER ###

    def __init__(self, *args):
        assert len(args)
        assert all(isinstance(x, Iterable) and len(x) == 2 for x in args)
        assert all(isinstance(x[0], Aggregate) for x in args)
        assert all(isinstance(x[1], (int, Duration)) for x in args)
        assert len(args) == len(set([x[0] for x in args]))
        self._pairs = tuple([tuple(x) for x in args])

    ### SPECIAL METHODS ###

    def __call__(self):
        print 'Building Timeline'
        resolved_subfabrics = self._resolve_subfabrics()
        self._inscribe_subfabrics(resolved_subfabrics)
        return resolved_subfabrics

    def __hash__(self):
        return hash(self.__class__.__name__, self)

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ' '

    ### PRIVATE METHODS ###

    def _compute_logical_not(self, timespan_inventory):
        logical_not = timespantools.TimespanInventory()
        for timespan, overlap_factor in \
            timespan_inventory.compute_overlap_factor_mapping.items():
            if not overlap_factor:
                logical_not.append(timespan)
        return logical_not

    def _displace_fabric(self, fabric, offset):
        temp = {}
        for performer, inventory in fabric.iteritems():
            temp[performer] = inventory.translate(offset)
        return Fabric(temp)

    def _get_aggregate_exclusion_threshold(self, aggregate):
        if hasattr(aggregate, 'exclusion'):
            return aggregate.exclusion
        return Duration(1, 8)

    def _get_fabric_subset_referencing_aggregate(self, fabric, aggregate):
        temp = {}
        for performer, inventory in fabric.iteritems():
            subinventory = timespantools.TimespanInventory([
                x for x in inventory if x['aggregate'] == aggregate])
            if subinventory:
                temp[performer] = subinventory
        if not temp:
            return None
        return Fabric(temp)

    def _inscribe_subfabrics(self, fabric):
        for i, aggregate in enumerate(self.aggregates):
            print '\tInscribing Fabric %d of %d' % (i + 1, len(self.pairs))
            subfabric = self._get_fabric_subset_referencing_aggregate(fabric, aggregate)
            if subfabric is not None:
                aggregate.inscribe_fabric(subfabric)
            print '\t\t...done!\n'
        return fabric

    def _resolve_overlap(self, old_inventory, new_inventory, minimum_duration):
        assert isinstance(old_inventory, timespantools.TimespanInventory)
        assert isinstance(new_inventory, timespantools.TimespanInventory)
        minimum_duration = Duration(minimum_duration)
        result = timespantools.TimespanInventory(new_inventory)
        for timespan in old_inventory:
            result -= timespan
        result = timespantools.TimespanInventory(
            x for x in result if minimum_duration < x.duration)
        result.extend(old_inventory)
        result.sort()
        return result

    def _resolve_subfabrics(self):
        resolved_fabric = {}
        for i, pair in enumerate(self.pairs):
            aggregate = pair[0]
            offset = pair[1]
            print '\tWeaving Fabric {} of {} ({})'.format(
                i + 1,
                len(self.pairs),
                type(aggregate.fabric_loom).__name__,
                )
            fabric = aggregate.make_uninscribed_fabric()
            displaced_fabric = self._displace_fabric(fabric, offset)
            exclusion = self._get_aggregate_exclusion_threshold(aggregate)
            print '\tResolving Fabric %d of %d' % (i + 1, len(self.pairs))
            for performer, inventory in displaced_fabric.iteritems():
                if performer not in resolved_fabric:
                    resolved_fabric[performer] = inventory
                else:
                    resolved_fabric[performer] = self._resolve_overlap(
                        resolved_fabric[performer], inventory, exclusion)
                    #resolved_fabric[performer] = \
                    #    timespantools.resolve_overlaps_between_nonoverlapping_inventories(
                    #        [resolved_fabric[performer], inventory],
                    #        exclusion)
            print '\t\t...done!\n'
        return Fabric(resolved_fabric)

    ### PUBLIC ATTRIBUTES ###

    @property
    def aggregates(self):
        return [pair[0] for pair in self.pairs]

    @property
    def ensemble(self):
        return Ensemble(aggregate.fabric.ensemble
            for aggregate in self.aggregates)

    @property
    def offsets(self):
        return [pair[1] for pair in self.pairs]

    @property
    def pairs(self):
        return self._pairs
