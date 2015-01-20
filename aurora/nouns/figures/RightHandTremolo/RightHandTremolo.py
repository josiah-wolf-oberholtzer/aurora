from abjad import *
from aurora.nouns.figures import *
from aurora.nouns.figures.RightHand import RightHand


class RightHandTremolo(RightHand):

    def __call__(self, container, figure, instrument):
        if isinstance(figure['left'], (LeftHandPattern, LeftHandSingleStop, LeftHandTrill)):
            for note in filter(lambda x: isinstance(x, (Note, Chord)), container):
                flag_count = note.written_duration.flag_count
                tremolo = indicatortools.StemTremolo(32 * pow(2, flag_count))
                attach(tremolo, note)
        elif isinstance(figure['left'], (LeftHandGlissando, LeftHandOscillation)):
            for note in filter(lambda x: isinstance(x, (Note, Chord)), container[0]):
                flag_count = note.written_duration.flag_count
                tremolo = indicatortools.StemTremolo(32 * pow(2, flag_count))
                attach(tremolo, note)
        return container
