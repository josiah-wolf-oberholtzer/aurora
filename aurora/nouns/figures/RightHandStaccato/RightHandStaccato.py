from abjad import *
from aurora.nouns.figures import *
from aurora.nouns.figures.RightHand import RightHand


class RightHandStaccato(RightHand):

    def __call__(self, container, figure, instrument):
        if isinstance(figure['left'], LeftHandPattern):
            for note in container:
                indicatortools.Articulation('.')(note)
        return container
