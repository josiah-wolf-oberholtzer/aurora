from abjad import *
from aurora.nouns.envelopes.Envelope import Envelope


class FortePianoAlNienteEnvelope(Envelope):

    ### SPECIAL METHODS ###

    def __call__(self, container, next = None):
        main_voice = container[0]
        span_voice = container[1]

#        markuptools.Markup(r'\fontsize #-4 { %s }' % self.__class__.__name__, 'up')(main_voice.select_leaves()[0])

        indicatortools.Articulation('>')(main_voice.select_leaves()[0])
        indicatortools.LilyPondCommand('fp', 'right')(span_voice.select_leaves()[0])
        if 2 < len(span_voice.select_leaves()):
            indicatortools.LilyPondCommand('>', 'right')(span_voice.select_leaves()[0])
            if next is None:
                override(span_voice).hairpin.circled_tip = True
                indicatortools.LilyPondCommand('!', 'right')(span_voice.select_leaves()[-1])

        return container
