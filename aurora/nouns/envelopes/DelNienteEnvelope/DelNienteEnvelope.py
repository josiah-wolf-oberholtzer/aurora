from abjad import *
from aurora.nouns.envelopes.Envelope import Envelope


class DelNienteEnvelope(Envelope):

    __slots__ = ('_dynamic',)

    def __init__(self, dynamic = 'p'):
        object.__setattr__(self, '_dynamic', dynamic)

    ### SPECIAL METHODS ###

    def __call__(self, container, next = None):
        main_voice = container[0]
        span_voice = container[1]

#        markuptools.Markup(r'\fontsize #-4 { %s }' % self.__class__.__name__, 'up')(main_voice.select_leaves()[0])
        override(span_voice).hairpin.circled_tip = True
        indicatortools.LilyPondCommand('<', 'right')(span_voice.select_leaves()[0])
        if 2 < len(span_voice.select_leaves()):
            indicatortools.LilyPondCommand(self.dynamic, 'right')(span_voice.select_leaves()[-1])
        elif next is None:
            indicatortools.LilyPondCommand('!', 'right')(span_voice.select_leaves()[-1])

        return container

    ### PUBLIC ATTRIBUTES ###

    @property
    def dynamic(self):
        return self._dynamic
