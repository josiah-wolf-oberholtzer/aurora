import numpy
from collections import Iterable
from abjad import Duration
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.Filter import Filter
from aurora.utils.mathutils import round_x_to_nearest_multiple_of_y


class GravityFilter(Filter):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_nodes',
        '_quantization',
        '_reference',
        '_seed',
        )

    def __init__(
        self,
        nodes,
        reference='centroid',
        quantization=Duration(1, 32),
        seed=0,
        ):
        Filter.__init__(self, seed)
        assert isinstance(nodes, Iterable) and len(nodes)
        assert all([isinstance(x, (Iterable)) and len(x) == 3 for x in nodes])
        assert all([all([0. <= x <= 1. for x in node]) for node in nodes])
        assert reference in ('start_offset', 'stop_offset', 'centroid')
        assert isinstance(quantization, (int, Duration)) and 0 < quantization
        object.__setattr__(self, '_nodes', tuple([tuple(node) for node in nodes]))
        object.__setattr__(self, '_quantization', quantization)
        object.__setattr__(self, '_reference', reference)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ', '.join((
            repr(self.nodes),
            repr(self.reference),
            repr(self.quantization),
            str(self.seed),
            ))

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        lo, hi = self._get_reference_extrema(inventory)
        if lo == hi:
            return inventory
        filtered_inventory = TimespanInventory([])
        grid = self._make_grid(lo, hi)
        for i, timespan in enumerate(inventory):
            if self.reference == 'start_offset':
                ref = timespan.start_offset
            if self.reference == 'stop_offset':
                ref = timespan.stop_offset
            if self.reference == 'centroid':
                ref = timespan.axis
            ref = round_x_to_nearest_multiple_of_y(ref, self.quantization)
            idx = int((ref - lo) / self.quantization)
#            print '[%d/%d]: %s @ %d (of %d)' % (i, len(inventory) - 1, timespan, idx, len(grid) - 1)
            displacement = grid[idx]
            filtered_inventory.append(timespan.translate(displacement * self.quantization))
        return filtered_inventory

    def _get_reference_extrema(self, inventory):
        if self.reference == 'start_offset':
            lo, hi = inventory.start_offset, inventory.stop_offset
        elif self.reference == 'stop_offset':
            lo, hi = inventory.start_offset, inventory.stop_offset
        elif self.reference == 'centroid':
            lo = min([x.axis for x in inventory])
            hi = max([x.axis for x in inventory])
        lo = round_x_to_nearest_multiple_of_y(lo, self.quantization)
        hi = round_x_to_nearest_multiple_of_y(hi, self.quantization)
        return lo, hi

    def _make_grid(self, lo, hi):
        size = int((hi - lo) / self.quantization) + 1
        grid = [0] * size
        for node in self.nodes:
            center = int(node[0] * float(size))
            radius = int(node[1] * float(size))
            amplitude = int(node[2] * float(size))
            wavelet = self._make_wavelet(radius, amplitude)
            for i, value in enumerate(wavelet):
                idx = center - radius + i
                if 0 <= idx < len(grid):
                    grid[idx] += value
        return grid

    def _make_wavelet(self, radius, amplitude):
        lin = numpy.linspace(0, 1, (radius * 2) + 1)
        cos = numpy.cos((lin * numpy.pi * 2) + numpy.pi)
        sin = numpy.sin(lin * numpy.pi * 2)
        cos -= cos.min()
        cos /= cos.max()
        cos = numpy.power(cos, 1)
        wavelet = cos * sin
        wavelet /= wavelet.max()
        wavelet *= amplitude
        wavelet = numpy.around(wavelet, 0)
        return numpy.cast[int](wavelet).tolist()

    ### PUBLIC ATTRIBUTES ###

    @property
    def nodes(self):
        return self._nodes

    @property
    def quantization(self):
        return self._quantization

    @property
    def reference(self):
        return self._reference
