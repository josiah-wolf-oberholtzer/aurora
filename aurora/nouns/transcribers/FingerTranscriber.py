from abjad import *
from abjad.tools.scoretools.Leaf import Leaf
from abjad.tools.abctools import AbjadObject


class FingerTranscriber(AbjadObject):

    def __init__(self):
        pass

    def __call__(self, timespan, instrument, next = None):
        main_voice = Voice([])
        span_voice = Voice([])
        for figure in timespan['figures']:
            ticks = int(figure.duration / Duration(1, 32))
            subcontainer = figure['left'](figure, instrument)
            subcontainer = figure['right'](subcontainer, figure, instrument)
            main_voice.append(subcontainer)
            span_voice.append(Container(scoretools.Skip(Duration(1, 32)) * ticks))
            span_voice.name = 'span'
        container = Container([main_voice, span_voice])
        container.is_simultaneous = True
        timespan['envelope'](container, next)
        assert inspect(container).get_duration() == timespan.duration
        return container
