from abjad import *
from aurora.nouns.figures import *
from aurora.nouns.figures.RightHand import RightHand


class RightHandLegato(RightHand):

    def __call__(self, container, figure, instrument):
        if isinstance(figure['left'], (LeftHandPattern, LeftHandRoll)):
            if 1 < len(container):
                slur = spannertools.Slur()
                attach(slur, container)
        return container
