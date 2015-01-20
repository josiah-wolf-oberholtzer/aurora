from abjad.tools import pitchtools
from aurora.nouns.colors.Position import Position


class MoltoSulPontPosition(Position):

    __slots__ = ('_pitch',)

    def __init__(self):
        object.__setattr__(self, '_pitch', pitchtools.make_n_middle_c_centered_pitches(5)[0])
#        object.__setattr__(self, '_pitch', -3)
