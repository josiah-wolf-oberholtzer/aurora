import random
from abjad import Duration
from aurora.nouns.fabrics import Domain
from aurora.nouns.figures import *
from aurora.nouns.pitches.PitchInscriber import PitchInscriber


class MockPitchInscriber(PitchInscriber):

    ### PRIVATE METHODS ###

    def _inscribe_double_pitches(self, figure, instrument, prev_strings):
        strings = self._choose_n_strings(2, prev_strings)
        pitch_ranges = [instrument.string_ranges[x] for x in strings]
        ### TODO: Constrain this to a subrange by fingering
        pitches = self._choose_n_random_pitches_in_pitch_range(2, pitch_ranges[0])
        figure['pitches'] = pitches
        return strings

    def _inscribe_gliss_pitches(self, figure, instrument, prev_strings):
        strings = self._choose_n_strings(1, prev_strings)
        pitch_ranges = [instrument.string_ranges[x] for x in strings]
        ticks = int(figure.duration / Duration(1, 32))
        pitches = self._choose_n_random_pitches_in_pitch_range(2, pitch_ranges[0])
        figure['pitches'] = pitches
        return strings

    def _inscribe_pattern_pitches(self, figure, instrument, prev_strings):
        strings = self._choose_n_strings(1, prev_strings)
        pitch_ranges = [instrument.string_ranges[x] for x in strings]
        ticks = int(figure.duration / Duration(1, 32))
        prlo, prhi = pitch_ranges[0].start_pitch.pitch_number, \
            pitch_ranges[0].stop_pitch.pitch_number
        d = Domain(prlo, prhi, [Duration(1, 2)])
        pitches = [float(random.choice(d))]
        for i in range(1, ticks):
            d = Domain(
                max(prlo, Duration.from_float(pitches[-1] - 2.)), \
                min(prhi, Duration.from_float(pitches[-1] + 2.)), \
                [Duration(1, 2)])
            pitch = float(random.choice(d))
            while pitch == pitches[-1]:
                pitch = float(random.choice(d))
            pitches.append(pitch)
        assert all([pitch in pitch_ranges[0] for pitch in pitches])
        figure['pitches'] = pitches
        return strings

    def _inscribe_roll_pitches(self, figure, instrument, prev_strings):
        strings = self._choose_n_strings(4, prev_strings)
        ### TODO: Constrain random pitches by fingering proximity
        pitches = []
        fingers = []
        opens = []

        shift = random.randint(1, 8)
        for i in xrange(4):
            p = random.randint(-1, 3)
            if p == -1:
                opens.append(i)
            else:
                fingers.append(p)

        fingers.sort()
        if instrument.quadruple_sort == 'start_offset':
            fingers.reverse()

        for i in xrange(4):
            string = instrument.strings[4 - i]
            if i in opens:
                pitches.append(string)
            else:
                pitches.append(string + fingers.pop(0) + shift)

        if strings[0] == 1:
            pitches.reverse()
        figure['pitches'] = pitches
        return strings

    def _inscribe_single_pitches(self, figure, instrument, prev_strings):
        strings = self._choose_n_strings(1, prev_strings)        
        pitch_ranges = [instrument.string_ranges[x] for x in strings]
        pitches = self._choose_n_random_pitches_in_pitch_range(1, pitch_ranges[0])
        figure['pitches'] = pitches
        return strings

    def _inscribe_trill_pitches(self, figure, instrument, prev_strings):
        strings = self._choose_n_strings(1, prev_strings)
        pitch_ranges = [instrument.string_ranges[x] for x in strings]
        pitches = self._choose_n_random_pitches_in_pitch_range(2, pitch_ranges[0])
        while float(instrument.max_trill) < abs(pitches[0] - pitches[1]):
            pitches = self._choose_n_random_pitches_in_pitch_range(2, pitch_ranges[0])
        figure['pitches'] = list(sorted(pitches))
        return strings
