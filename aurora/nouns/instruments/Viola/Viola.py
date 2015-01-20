from abjad.tools.indicatortools import Clef
from abjad.tools.pitchtools import NumberedInterval
from abjad.tools.pitchtools import NamedPitch
from abjad.tools.pitchtools import PitchRange
from aurora.nouns.instruments._Instrument import _Instrument


class Viola(_Instrument):
    '''Model of the viola as an instrument.'''

    name, short_name = 'Viola', 'Vla.'

    clef = 'alto'

    max_gliss = NumberedInterval(12)

    max_trill = NumberedInterval(7)

    range = PitchRange((NamedPitch("c"), 'inclusive'), (NamedPitch("a''"), 'inclusive'))

    quadruple_sort = 'stop_offset'

    strings = {
        4: NamedPitch("c"),
        3: NamedPitch("g"),
        2: NamedPitch("d'"),
        1: NamedPitch("a'"),
    }

    string_ranges = {
        4: PitchRange((NamedPitch("c"), 'inclusive'), (NamedPitch("c'"), 'inclusive')),
        3: PitchRange((NamedPitch("g"), 'inclusive'), (NamedPitch("g'"), 'inclusive')),
        2: PitchRange((NamedPitch("d'"), 'inclusive'), (NamedPitch("d''"), 'inclusive')),
        1: PitchRange((NamedPitch("a'"), 'inclusive'), (NamedPitch("a''"), 'inclusive')),
    }


