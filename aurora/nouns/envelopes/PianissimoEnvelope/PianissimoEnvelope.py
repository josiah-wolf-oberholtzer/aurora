from abjad import *
from aurora.nouns.envelopes.Envelope import Envelope


class PianissimoEnvelope(Envelope):

    ### SPECIAL METHODS ###

    def __call__(self, container, next = None):
        main_voice = container[0]
        span_voice = container[1]

#        markuptools.Markup(r'\fontsize #-4 { %s }' % self.__class__.__name__, 'up')(main_voice.select_leaves()[0])

        indicatortools.LilyPondCommand('ppp', 'right')(span_voice.select_leaves()[0])

        return container
