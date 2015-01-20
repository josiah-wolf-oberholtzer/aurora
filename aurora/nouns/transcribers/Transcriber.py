from aurora.nouns.fabrics import Fabric
from aurora.nouns.transcribers.LayoutTranscriber import LayoutTranscriber
from aurora.nouns.transcribers.ScoreTranscriber import ScoreTranscriber
from abjad.tools.abctools import AbjadObject


class Transcriber(AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = ('_layout_transcriber', '_score_transcriber')

    ### INITIALIZER ###

    def __init__(self):
        object.__setattr__(self, '_layout_transcriber', LayoutTranscriber())
        object.__setattr__(self, '_score_transcriber', ScoreTranscriber())

    ### SPECIAL METHODS ###

    def __call__(self, fabric):
        assert isinstance(fabric, Fabric)
        print 'Transcribing'
        score = self.score_transcriber(fabric)
        score = self.layout_transcriber(score)
        print '\t...done transcribing'
        return score

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_strings(self):
        return ' '

    ### PUBLIC ATTRIBUTES ###

    @property
    def layout_transcriber(self):
        return self._layout_transcriber
    
    @property
    def score_transcriber(self):
        return self._score_transcriber
