from abjad import *
from aurora.nouns.transcribers.BowingTranscriber import BowingTranscriber
from aurora.nouns.transcribers.FingerTranscriber import FingerTranscriber
from abjad.tools.abctools import AbjadObject


class FigureTranscriber(AbjadObject):

    def __init__(self):
        object.__setattr__(self, '_bowing_transcriber', BowingTranscriber())
        object.__setattr__(self, '_finger_transcriber', FingerTranscriber())

    ### SPECIAL METHODS ###

    def __call__(self, timespan, performer, next=None):
        instrument = performer.instruments[0]
        finger_container = self.finger_transcriber(timespan, instrument, next)
        bowing_container = self.bowing_transcriber(timespan, instrument)
        for container in [finger_container, bowing_container]:
            message = 'performer: {}, offset: {}, duration: {}'.format(
                performer.name, timespan.start_offset, timespan.duration)
            indicator = indicatortools.LilyPondComment(message)
            attach(indicator, container)
        assert inspect(finger_container).get_duration() == timespan.duration
        assert inspect(bowing_container).get_duration() == timespan.duration
        return finger_container, bowing_container

    ### PUBLIC ATTRIBUTES ###

    @property
    def bowing_transcriber(self):
        return self._bowing_transcriber

    @property
    def finger_transcriber(self):
        return self._finger_transcriber
