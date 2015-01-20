from abjad.tools.indicatortools import Clef
from abjad.tools.pitchtools import NumberedInterval
from abjad.tools.pitchtools import NamedPitch
from abjad.tools.pitchtools import PitchRange
from aurora.nouns.instruments._Instrument import _Instrument


class Contrabass(_Instrument):
    '''Model of the contrabass as an instrument.'''

    name, short_name = 'Contrabass', 'Cb.'

    clef = 'bass_8'

    max_gliss = NumberedInterval(7)

    max_trill = NumberedInterval(3)

    range = PitchRange((NamedPitch("e,,"), 'inclusive'), (NamedPitch("g"), 'inclusive'))

    quadruple_sort = 'start_offset'

    strings = {
        4: NamedPitch("e,,"),
        3: NamedPitch("a,,"),
        2: NamedPitch("d,"),
        1: NamedPitch("g,"),
    }

    string_ranges = {
        4: PitchRange((NamedPitch("e,,"), 'inclusive'), (NamedPitch("c,"), 'inclusive')),
        3: PitchRange((NamedPitch("a,,"), 'inclusive'), (NamedPitch("f,"), 'inclusive')),
        2: PitchRange((NamedPitch("d,"), 'inclusive'), (NamedPitch("bf,"), 'inclusive')),
        1: PitchRange((NamedPitch("g,"), 'inclusive'), (NamedPitch("ef"), 'inclusive')),
    }


