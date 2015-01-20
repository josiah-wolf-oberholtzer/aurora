from abjad.tools.indicatortools import Clef
from abjad.tools.pitchtools import NumberedInterval
from abjad.tools.pitchtools import NamedPitch
from abjad.tools.pitchtools import PitchRange
from aurora.nouns.instruments._Instrument import _Instrument


class Violin(_Instrument):
    '''Model of the violin as an instrument.'''

    name, short_name = 'Violin', 'Vln.'

    clef = 'treble'

    max_gliss = NumberedInterval(12)

    max_trill = NumberedInterval(7)

    range = PitchRange((NamedPitch("g"), 'inclusive'), (NamedPitch("e'''"), 'inclusive'))

    quadruple_sort = 'stop_offset'

    strings = {
        4: NamedPitch("g"),
        3: NamedPitch("d'"),
        2: NamedPitch("a'"),
        1: NamedPitch("e''"),
    }

    string_ranges = {
        4: PitchRange((NamedPitch("g"), 'inclusive'), (NamedPitch("g'"), 'inclusive')),
        3: PitchRange((NamedPitch("d'"), 'inclusive'), (NamedPitch("d''"), 'inclusive')),
        2: PitchRange((NamedPitch("a'"), 'inclusive'), (NamedPitch("a''"), 'inclusive')),
        1: PitchRange((NamedPitch("e''"), 'inclusive'), (NamedPitch("e'''"), 'inclusive')),
    }


