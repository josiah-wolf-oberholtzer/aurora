from abjad import *
from aurora.nouns.envelopes.Envelope import Envelope


class FortePianoSwellEnvelope(Envelope):

    __slots__ = ('_dynamic',)

    def __init__(self, dynamic='p'):
        object.__setattr__(self, '_dynamic', dynamic)

    ### SPECIAL METHODS ###

    def __call__(self, container, next=None):
        main_voice = container[0]
        span_voice = container[1]
#        markuptools.Markup(r'\fontsize #-4 { %s }' % self.__class__.__name__, 'up')(main_voice.select_leaves()[0])
        indicator = indicatortools.LilyPondCommand('fp', 'right')
        attach(indicator, span_voice.select_leaves()[0])
        if 6 < len(span_voice.select_leaves()):
            idx = 1 + (len(span_voice.select_leaves()) / 2)
            indicator = indicatortools.LilyPondCommand(self.dynamic, 'right')
            attach(indicator, span_voice.select_leaves()[idx])
            indicator = indicatortools.LilyPondCommand('<', 'right')
            attach(indicator, span_voice.select_leaves()[0])
            indicator = indicatortools.LilyPondCommand('>', 'right')
            attach(indicator, span_voice.select_leaves()[idx])
            if next is None:
                indicator = indicatortools.LilyPondCommand('!', 'right')
                attach(indicator, span_voice.select_leaves()[-1])
                ### Apply circled tip only to decrescendo hairpin, by placing \once \override on preceding leaf            
                override(span_voice.select_leaves()[idx]).hairpin.circled_tip = True
        elif 2 < len(span_voice.select_leaves()):
            indicator = indicatortools.LilyPondCommand('>', 'right')
            attach(indicator, span_voice.select_leaves()[0])
            if next is None:
                override(span_voice).hairpin.circled_tip = True
                indicator = indicatortools.LilyPondCommand('!', 'right')
                attach(indicator, span_voice.select_leaves()[-1])

        return container

    ### PUBLIC ATTRIBUTES ###

    @property
    def dynamic(self):
        return self._dynamic
