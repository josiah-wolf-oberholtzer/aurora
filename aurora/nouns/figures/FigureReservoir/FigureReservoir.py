import random
from collections import Iterable
from aurora.nouns.figures.LeftHand import LeftHand
from aurora.nouns.figures.RightHand import RightHand
from abjad.tools.abctools import AbjadObject


class FigureReservoir(AbjadObject):

    __slots__ = ('_left', '_right')

    def __init__(self, left, right):        
        assert isinstance(left, Iterable) and len(left) \
            and all([isinstance(x, LeftHand) for x in left])
        assert isinstance(right, Iterable) and len(right) \
            and all([isinstance(x, RightHand) for x in right])
        object.__setattr__(self, '_left', tuple(left))
        object.__setattr__(self, '_right', tuple(right))
        
    ### SPECIAL METHODS ###

    def __call__(self):
        return random.choice(self.left), random.choice(self.right)

    def __eq__(self, other):
        if type(other) == type(self) \
            and other.left == self.left \
            and other.right == self.right:
            return True
        return False

    def __hash__(self):
        return hash([self.__class__.__name__, self.left, self.right])

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ' '

    ### PUBLIC ATTRIBUTES ###

    @property
    def left(self):
        return self._left

    @property
    def right(self):
        return self._right
