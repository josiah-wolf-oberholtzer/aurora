# -*- encoding: utf-8 -*-
from abjad.tools.pitchtools import NumberedInterval
from abjad.tools.pitchtools import NamedPitch
from abjad.tools.pitchtools import PitchRange
from aurora.nouns.instruments._Instrument import _Instrument


class Cello(_Instrument):
    '''Model of the cello as an instrument.

    ::

        >>> import aurora
        >>> aurora.nouns.instruments.Cello()
        Cello()

    '''

    name, short_name = 'Cello', 'Vcl.'

    clef = 'bass'

    max_gliss = NumberedInterval(12)

    max_trill = NumberedInterval(5)

    range = PitchRange.from_pitches(
        NamedPitch("c,"),
        NamedPitch("a'"),
        )

    quadruple_sort = 'start_offset'

    strings = {
        4: NamedPitch("c,"),
        3: NamedPitch("g,"),
        2: NamedPitch("d"),
        1: NamedPitch("a"),
        }

    string_ranges = {
        4: PitchRange.from_pitches(
            NamedPitch("c,"),
            NamedPitch("c"),
            ),
        3: PitchRange.from_pitches(
            NamedPitch("g,"),
            NamedPitch("g"),
            ),
        2: PitchRange.from_pitches(
            NamedPitch("d"),
            NamedPitch("d'"),
            ),
        1: PitchRange.from_pitches(
            NamedPitch("a"),
            NamedPitch("a'"),
            ),
        }