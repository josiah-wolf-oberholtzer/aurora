from abjad import *
from aurora.nouns.colors import *
from aurora.nouns.figures import *
from aurora.nouns.figures.RightHand import RightHand


class RightHandPizzicato(RightHand):

    def __call__(self, container, figure, instrument):
        note = container.select_leaves()[0]
        markuptools.Markup(r'\italic Pizz.', 'up')(note)
        if isinstance(figure['pressure'][0], OverPressure):
            indicatortools.Articulation('snappizzicato')(note)
        return container
