import random
from collections import Iterable
from abjad.tools.timespantools import Timespan
from aurora.nouns.fabrics import Fabric
from aurora.nouns.figures import *
from abjad.tools.abctools import AbjadObject


class PitchInscriber(AbjadObject):

    __slots__ = ('_reference', '_seed',)

    def __init__(self, reference = 'centroid', seed = 0):
        assert reference in ['centroid', 'start_offset', 'stop_offset']
        object.__setattr__(self, '_reference', reference)
        object.__setattr__(self, '_seed', seed)

    ### SPECIAL METHODS ###

    def __call__(self, fabric):
        assert isinstance(fabric, Fabric)
        self._fabric_has_figures(fabric)
        start_offset, stop_offset = self._get_fabric_extrema(fabric)
        random.seed(self.seed)
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

    def _choose_n_random_pitches_in_pitch_range(self, n, pitch_range):
        start_offset = pitch_range.start_pitch.pitch_number
        stop_offset = pitch_range.stop_pitch.pitch_number
        pitches = [x / 2. + start_offset for x in range(0, 1 + (2 * (stop_offset - start_offset)))]
        random.shuffle(pitches)
        ns = [x % len(pitches) for x in range(n)]
        return [pitches[x] for x in ns]

    def _choose_n_strings(self, n, prev_strings = None):
        if n == 1:
            if prev_strings is None:
                strings = [1, 2, 3, 4]
            elif len(prev_strings) == 1:
                strings = [prev_strings[0] - 1, prev_strings[0], prev_strings[0] + 1]
                strings = list(sorted(filter(lambda x: 0 < x < 5, set(strings))))
            elif len(prev_strings) == 2:
                strings = [prev_strings[0] - 1, prev_strings[0],
                    prev_strings[1], prev_strings[1] + 1]
                strings = list(sorted(filter(lambda x: 0 < x < 5, set(strings))))
            elif len(prev_strings) == 4:
                strings = [prev_strings[-1]]
#            print '\t\tn = %s, prev = %s, strings = %s' % (n, prev_strings, strings)
            return [random.choice(strings)]
        elif n == 2:
            if prev_strings is None:
                strings = [1, 2, 3, 4]
            elif len(prev_strings) == 1:
                strings = [prev_strings[0] - 1, prev_strings[0], prev_strings[0] + 1]
                strings = list(sorted(filter(lambda x: 0 < x < 5, set(strings))))
            elif len(prev_strings) == 2:
                strings = [prev_strings[0] - 1, prev_strings[0],
                    prev_strings[1], prev_strings[1] + 1]
                strings = list(sorted(filter(lambda x: 0 < x < 5, set(strings))))
            elif len(prev_strings) == 4:
                strings = list(sorted(prev_strings[2:]))
#            print '\t\tn = %s, prev = %s, strings = %s' % (n, prev_strings, strings)
            choice = random.choice(strings[:-1])
            return [choice, choice + 1]
#        if n in [1, 2]:
#            if prev_strings is None:
#                strings = [1, 2, 3, 4]
#            elif len(prev_strings) == 1:
#                strings = [prev_strings[0] - 1, prev_strings[0], prev_strings[0] + 1]
#                strings = list(sorted(filter(lambda x: 0 < x < 5, set(strings))))
#            elif len(prev_strings) == 2:
#                strings = [prev_strings[0] - 1, prev_strings[0],
#                prev_strings[1], prev_strings[1] + 1]
#                strings = list(sorted(filter(lambda x: 0 < x < 5, set(strings))))
#            elif len(prev_strings) == 4:
#                strings = prev_strings
#            if n == 1:
#                return [random.choice(strings)]
#            elif n == 2:
#                choice = random.choice(strings[:-1])
#                return [choice, choice + 1]
        elif n == 4:
#            print '\t\tn = %s, prev = %s' % (n, prev_strings)
            if prev_strings is None or prev_strings == [2, 3]:
                return random.choice([[1, 2, 3, 4], [4, 3, 2, 1]])
            elif prev_strings in [[1], [2], [1, 2], [4, 3, 2, 1]]:
                return [1, 2, 3, 4]
            else:
                return [4, 3, 2, 1]

    def _exec(self, fabric, start_offset, stop_offset):
        for performer in fabric:
            instrument = performer.instruments[0]
            for i, timespan in enumerate(fabric[performer]):
                if 0 < i:
                    strings_used = fabric[performer][i - 1]['figures'][-1]['strings']
                else:
                    strings_used = None
                for figure in timespan['figures']:
                    left = figure['left']
                    if isinstance(left, (LeftHandGlissando, LeftHandOscillation)):
                        proc = self._inscribe_gliss_pitches
                    elif isinstance(left, LeftHandDoubleStop):
                        proc = self._inscribe_double_pitches
                    elif isinstance(left, LeftHandSingleStop):
                        proc = self._inscribe_single_pitches
                    elif isinstance(left, LeftHandPattern):
                        proc = self._inscribe_pattern_pitches
                    elif isinstance(left, LeftHandRoll):
                        proc = self._inscribe_roll_pitches
                    elif isinstance(left, LeftHandTrill):
                        proc = self._inscribe_trill_pitches
                    strings_used = proc(figure, instrument, strings_used)
                    figure['strings'] = strings_used
        return fabric

    def _fabric_has_figures(self, fabric):
        for inventory in fabric.values():
            for timespan in inventory:
                assert 'figures' in timespan
                assert isinstance(timespan['figures'], Iterable)
                assert len(timespan['figures'])
                assert all([isinstance(x, Timespan)
                    for x in timespan['figures']])

    def _get_fabric_extrema(self, fabric):
        if self.reference == 'start_offset':
            start_offset = min([inventory.start_offset for inventory in fabric.values()])
            stop_offset = max([inventory.latest_start for inventory in fabric.values()])
        elif self.reference == 'stop_offset':
            start_offset = min([inventory.earliest_stop for inventory in fabric.values()])
            stop_offset = max([inventory.stop_offset for inventory in fabric.values()])
        elif self.reference == 'centroid':
            centroids = []
            for inventory in fabric.values():
                for timespan in inventory:
                    for figure in timespan['figures']:
                        centroids.append(figure.axis)
            start_offset = min(centroids)
            stop_offset = max(centroids)
        return start_offset, stop_offset

    def _get_interval_x(self, timespan, start_offset, stop_offset):
        if self.reference == 'centroid':
            reference = timespan.axis
        elif self.reference == 'start_offset':
            reference = timespan.start_offset
        elif self.reference == 'stop_offset':
            reference = timespan.stop_offset
        return scale_value(reference, start_offset, stop_offset, 0., 1.)

    ### PUBLIC ATTRIBUTES ###

    @property
    def reference(self):
        return self._reference

    @property
    def seed(self):
        return self._seed
