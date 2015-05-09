from abjad.tools import pitchtools
from aurora.nouns.colors.Position import Position


class MoltoSulPontPosition(Position):

    __slots__ = ('_pitch',)

    def __init__(self):
        object.__setattr__(
            self,
            '_pitch',
            pitchtools.NamedPitch('f'),
            #pitchtools.make_n_middle_c_centered_pitches(5)[0],
            )