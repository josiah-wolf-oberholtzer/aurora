# -*- encoding: utf-8 -*-
from abjad.tools.pitchtools import NumberedInterval
from abjad.tools.pitchtools import NamedPitch
from abjad.tools.pitchtools import PitchRange
from aurora.nouns.instruments.Instrument import Instrument


class Violin(Instrument):
    '''Model of the violin as an instrument.

    ::

        >>> import aurora
        >>> aurora.nouns.instruments.Violin()
        Violin()

    '''

    name, short_name = 'Violin', 'Vln.'

    clef = 'treble'

    max_gliss = NumberedInterval(12)

    max_trill = NumberedInterval(7)

    range = PitchRange.from_pitches(
        NamedPitch("g"),
        NamedPitch("e'''"),
        )

    quadruple_sort = 'stop_offset'

    strings = {
        4: NamedPitch("g"),
        3: NamedPitch("d'"),
        2: NamedPitch("a'"),
        1: NamedPitch("e''"),
        }

    string_ranges = {
        4: PitchRange.from_pitches(
            NamedPitch("g"),
            NamedPitch("g'"),
            ),
        3: PitchRange.from_pitches(
            NamedPitch("d'"),
            NamedPitch("d''"),
            ),
        2: PitchRange.from_pitches(
            NamedPitch("a'"),
            NamedPitch("a''"),
            ),
        1: PitchRange.from_pitches(
            NamedPitch("e''"),
            NamedPitch("e'''"),
            ),
        }