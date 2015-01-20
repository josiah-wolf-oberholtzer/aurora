from abjad import *
from aurora.nouns.figures import *
from aurora.nouns.figures.RightHand import RightHand


class RightHandJete(RightHand):

    def __call__(self, container, figure, instrument):
        if isinstance(figure['left'], (LeftHandPattern, LeftHandRoll)):
            if 1 < len(container):
                slur = spannertools.Slur()
                attach(slur, container)
                indicator = indicatortools.LilyPondCommand('slurDashed')
                attach(indicator, container)
                indicator = indicatortools.LilyPondCommand(
                    'slurSolid', 'closing')
                attach(indicator, container)
            for note in container:
                indicatortools.Articulation('.')(note)
        elif isinstance(figure['left'], (LeftHandGlissando, LeftHandOscillation)):
            slur = spannertools.Slur()
            attach(slur, container[0])
            indicator = indicatortools.LilyPondCommand('slurDashed')
            attach(indicator, container[0])
            indicator = indicatortools.LilyPondCommand('slurSolid', 'closing')
            attach(indicator, container[0])
        return container
