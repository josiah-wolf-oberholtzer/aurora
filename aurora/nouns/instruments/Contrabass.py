# -*- encoding: utf-8 -*-
from abjad.tools.pitchtools import NumberedInterval
from abjad.tools.pitchtools import NamedPitch
from abjad.tools.pitchtools import PitchRange
from aurora.nouns.instruments.Instrument import Instrument


class Contrabass(Instrument):
    '''Model of the contrabass as an instrument.

    ::

        >>> import aurora
        >>> aurora.nouns.instruments.Contrabass()
        Contrabass()

    '''

    name, short_name = 'Contrabass', 'Cb.'

    clef = 'bass_8'

    max_gliss = NumberedInterval(7)

    max_trill = NumberedInterval(3)

    range = PitchRange.from_pitches(
        NamedPitch("e,,"),
        NamedPitch("g"),
        )

    quadruple_sort = 'start_offset'

    strings = {
        4: NamedPitch("e,,"),
        3: NamedPitch("a,,"),
        2: NamedPitch("d,"),
        1: NamedPitch("g,"),
        }

    string_ranges = {
        4: PitchRange.from_pitches(
            NamedPitch("e,,"),
            NamedPitch("c,"),
            ),
        3: PitchRange.from_pitches(
            NamedPitch("a,,"),
            NamedPitch("f,"),
            ),
        2: PitchRange.from_pitches(
            NamedPitch("d,"),
            NamedPitch("bf,"),
            ),
        1: PitchRange.from_pitches(
            NamedPitch("g,"),
            NamedPitch("ef"),
            ),
        }