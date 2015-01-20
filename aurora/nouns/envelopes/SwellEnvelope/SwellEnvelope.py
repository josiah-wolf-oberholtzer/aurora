from abjad import *
from aurora.nouns.envelopes.Envelope import Envelope


class SwellEnvelope(Envelope):

    __slots__ = ('_dynamic',)

    def __init__(self, dynamic='p'):
        object.__setattr__(self, '_dynamic', dynamic)

    ### SPECIAL METHODS ###

    def __call__(self, container, next=None):
        main_voice = container[0]
        span_voice = container[1]

        if 4 < len(span_voice.select_leaves()):
            fmt = '+4'
            idx = len(span_voice.select_leaves()) / 2
            override(span_voice.select_leaves()[0]).hairpin.circled_tip = True
            indicator = indicatortools.LilyPondCommand(self.dynamic, 'right')
            attach(indicator, span_voice.select_leaves()[idx])
            indicator = indicatortools.LilyPondCommand('<', 'right')
            attach(indicator, span_voice.select_leaves()[0])
            indicator = indicatortools.LilyPondCommand('>', 'right')
            attach(indicator, span_voice.select_leaves()[idx])
            if next is None:
                override(span_voice.select_leaves()[idx]).hairpin.circled_tip = True
                indicator = indicatortools.LilyPondCommand('!', 'right')
                attach(indicator, span_voice.select_leaves()[-1])
        elif 2 < len(span_voice):
            fmt = '+2'
            override(span_voice.select_leaves()[0]).hairpin.circled_tip = True
            indicator = indicatortools.LilyPondCommand('<', 'right')
            attach(indicator, span_voice.select_leaves()[0])
            indicator = indicatortools.LilyPondCommand(self.dynamic, 'right')
            attach(indicator, span_voice.select_leaves()[-1])
        else:
            fmt = '-2'
            indicator = indicatortools.LilyPondCommand(self.dynamic, 'right')
            attach(indicator, span_voice.select_leaves()[0])

#        markuptools.Markup(r'\fontsize #-4 { %s %s n=%s }' % (self.__class__.__name__, fmt, next), 'up')(main_voice.select_leaves()[0])

        return container

    ### PUBLIC ATTRIBUTES ###

    @property
    def dynamic(self):
        return self._dynamic
