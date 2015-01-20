import random
from collections import Iterable
from abjad import Duration

from abjad.tools.abctools import AbjadObject
from abjad.tools.mathtools import cumulative_sums_pairwise
from abjad.tools.mathtools import next_integer_partition
from abjad.tools.mathtools import yield_all_partitions_of_integer

from aurora.nouns.fabrics import Fabric
from aurora.nouns.fabrics import PayloadedTimespan
from aurora.utils.durutils import partition_duration_by_nested_grids_and_offset
from aurora.utils.mathutils import scale_value


class FigureInscriber(AbjadObject):

    ### CLASS VARIABLES ###

    subdivision_cache = {}

    __slots__ = (
        '_exclusion',
        '_reference',
        '_seed',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        exclusion=Duration(1, 16),
        reference='centroid',
        seed=0,
        ):
        assert Duration(1, 16) <= exclusion
        assert reference in ['centroid', 'start_offset', 'stop_offset']
        self._exclusion = exclusion
        self._reference = reference
        self._seed = seed

    ### SPECIAL METHODS ###

    def __call__(self, fabric):
        assert isinstance(fabric, Fabric)
        random.seed(self.seed)
        start_offset, stop_offset = self._get_fabric_extrema(fabric)
        fabric = self._exec(fabric, start_offset, stop_offset)
        return fabric

    def __eq__(self, other):
        if type(other) == type(self) \
            and other.reference == self.reference \
            and other.seed == self.seed:
            return True
        return False

    def __hash__(self):
        return hash(self.__class__.__name__, self.seed)

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ' '

    ### PRIVATE METHODS ###

    def _exec(self, fabric, start_offset, stop_offset):
        raise Exception('Not implemented in %s' % self.__class__.__name__)

    def _get_fabric_extrema(self, fabric):
        if self.reference == 'start_offset':
            start_offset = min([inventory.start_offset for inventory in fabric.values()])
            stop_offset = max([inventory.latest_start for inventory in fabric.values()])
        elif self.reference == 'stop_offset':
            start_offset = min([inventory.earliest_stop for inventory in fabric.values()])
            stop_offset = max([inventory.stop_offset for inventory in fabric.values()])
        elif self.reference == 'centroid':
            start_offset = min([min([i.axis for i in inventory]) for inventory in fabric.values()])
            stop_offset = max([min([i.axis for i in inventory]) for inventory in fabric.values()])
        return start_offset, stop_offset

    def _get_interval_x(self, timespan, start_offset, stop_offset):
        if self.reference == 'centroid':
            reference = timespan.axis
        elif self.reference == 'start_offset':
            reference = timespan.start_offset
        elif self.reference == 'stop_offset':
            reference = timespan.stop_offset
        return scale_value(reference, start_offset, stop_offset, 0., 1.)

    def _get_interval_subdivisions(self, timespan, subdivision_specs):
        min_subdivision = subdivision_specs[0]
        max_subdivision = subdivision_specs[1]
        min_length = subdivision_specs[2]
        max_length = subdivision_specs[3]
        first_subdivision = subdivision_specs[4]
        last_subdivision = subdivision_specs[5]
        ticks = int(timespan.duration / Duration(1, 32))
        if (ticks, max_subdivision) in self.subdivision_cache:
            subdivisions, cache = self._subdivide_interval(ticks,
                min_subdivision, max_subdivision,
                min_length, max_length,
                first_subdivision, last_subdivision,
                cache=self.subdivision_cache[(ticks, max_subdivision)])
        else:
            subdivisions, cache = self._subdivide_interval(ticks,
                min_subdivision, max_subdivision,
                min_length, max_length,
                first_subdivision, last_subdivision)
            self.subdivision_cache[(ticks, max_subdivision)] = cache
        subdivisions = [Duration(x, 32) for x in subdivisions]
        pairs = cumulative_sums_pairwise(subdivisions)
        pairs = [(pair[0] + timespan.start_offset,
            pair[1] + timespan.start_offset)
            for pair in pairs]
        intervals = [PayloadedTimespan(pair[0], pair[1]) for pair in pairs]
        assert sum([x.duration for x in intervals]) == timespan.duration
        return intervals

    def _figure_breaks_across_bar(self, figure):
        duration = figure.duration
        grids = [Duration(3, 4)]
        offset = figure.start_offset
        parts = partition_duration_by_nested_grids_and_offset(
            duration, grids, offset)
        if 1 < len(parts):
            return True
        return False

    def _subdivide_interval(
        self,
        ticks,
        min_subdivision=None,
        max_subdivision=None,
        min_length=None,
        max_length=None,
        first_subdivision=None,
        last_subdivision=None,
        cache=None,
        ):

        assert 1 < ticks and isinstance(ticks, int)
        assert all([isinstance(x, (int, type(None))) for x in \
            (min_subdivision, max_subdivision, \
            min_length, max_length, \
            first_subdivision, last_subdivision)])

        # check subdivision values
        if min_subdivision is not None:
            assert 2 <= min_subdivision
        if max_subdivision is not None:
            assert 2 <= max_subdivision
        if min_subdivision is not None and max_subdivision is not None:
            assert min_subdivision <= max_subdivision

        # check length values
        if min_length is not None:
            assert 0 < min_length
        if max_length is not None:
            assert 0 < max_length
        if min_length is not None and max_length is not None:
            assert min_length <= max_length

        # make initial partition
        if max_subdivision is not None and max_subdivision <= ticks:
            if cache is not None:
                prepartition = cache
            else:
                prepartition = tuple(self._prepartition(ticks, max_subdivision))
            partitions = self._yield_from_partition(prepartition)
            partitions = filter(lambda x: 1 not in x, partitions)
            partitions = filter(lambda x: len(filter(lambda y: y == 2, x)) < 2, partitions)
        else:
            prepartition = tuple(yield_all_partitions_of_integer(ticks))
            partitions = filter(lambda x: 1 not in x, prepartition)
            partitions = filter(lambda x: len(filter(lambda y: y == 2, x)) < 2, partitions)

        # filter partition values
        if min_subdivision is not None:
            partitions = filter(lambda x: not len(filter(lambda y: y < min_subdivision, x)), partitions)
        if max_subdivision is not None:
            partitions = filter(lambda x: not len(filter(lambda y: max_subdivision < y, x)), partitions)
        if not len(partitions):
            partitions = [[ticks]]

        # filter partition lengths
        max_partition_length = max([len(x) for x in partitions])
        if min_length is not None:
            if min_length < max_partition_length:
                partitions = filter(lambda x: min_length <= len(x), partitions)
            else:
                partitions = filter(lambda x: len(x) == max_partition_length, partitions)
        if max_length is not None:
            partitions = filter(lambda x: len(x) <= max_length, partitions)

        # filter by first and last values
        if first_subdivision is not None and last_subdivision is not None \
            and first_subdivision == last_subdivision:
            filtered = filter(lambda x: len(filter(lambda y: y == first_subdivision, x)) == 2, partitions)
            if filtered: # try for two
                partitions = filtered
            else: # can't get two, try for one
                filtered = filter(lambda x: first_subdivision in x, partitions)
                if filtered:
                    partitions = filtered
        else:
            if first_subdivision is not None:
                filtered = filter(lambda x: first_subdivision in x, partitions)
                if filtered:
                    partitions = filtered
            if last_subdivision is not None:
                filtered = filter(lambda x: last_subdivision in x, partitions)
                if filtered:
                    partitions = filtered

        # shuffle it
        partitions = list(partitions)
        random.shuffle(partitions)
        partition = list(partitions[0])
        if 2 in partition:
            partition.pop(partition.index(2))
            random.shuffle(partition)
            partition.append(2)
        else:
            random.shuffle(partition)

        # reorder
        if first_subdivision is not None and last_subdivision is not None \
            and first_subdivision == last_subdivision:
            # if only one, then only apply to beginning
            if 1 == len(filter(lambda x: x == first_subdivision, partition)):
                partition.pop(partition.index(first_subdivision))
                partition.insert(0, first_subdivision)
            elif 1 < len(filter(lambda x: x == first_subdivision, partition)):
                partition.pop(partition.index(first_subdivision))
                partition.pop(partition.index(last_subdivision))
                partition.insert(0, first_subdivision)
                partition.append(last_subdivision)
        else:
            if first_subdivision is not None and first_subdivision in partition:
                partition.pop(partition.index(first_subdivision))
                partition.insert(0, first_subdivision)
            if last_subdivision is not None and last_subdivision in partition:
                partition.pop(partition.index(last_subdivision))
                partition.append(last_subdivision)

        assert sum(partition) == ticks

        return partition, prepartition

    def _prepartition(self, ticks, max):
        assert max <= ticks
        parts = []
        while 0 < (ticks - max):
            parts.append(max)
            ticks -= max
        parts.append(ticks)
        return parts

    def _yield_from_partition(self, partition):
        while partition is not None:
            yield partition
            partition = next_integer_partition(partition)

    ### PUBLIC ATTRIBUTES

    @property
    def exclusion(self):
        return self._exclusion

    @property
    def reference(self):
        return self._reference

    @property
    def seed(self):
        return self._seed
