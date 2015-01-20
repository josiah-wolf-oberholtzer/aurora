from copy import copy
from aurora.nouns.colors.ColorInscriber import ColorInscriber
from aurora.nouns.envelopes.EnvelopeInscriber import EnvelopeInscriber
from aurora.nouns.fabrics import Fabric
from aurora.nouns.looms._FabricLoom import _FabricLoom
from aurora.nouns.figures.FigureInscriber import FigureInscriber
from aurora.nouns.pitches.PitchInscriber import PitchInscriber
from abjad.tools.abctools import AbjadObject


class Aggregate(AbjadObject):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_color_inscriber',
        '_envelope_inscriber',
        '_fabric_loom',
        '_figure_inscriber',
        '_pitch_inscriber',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        fabric_loom=None,
        figure_inscriber=None,
        pitch_inscriber=None,
        color_inscriber=None,
        envelope_inscriber=None,
        ):
        assert isinstance(fabric_loom, _FabricLoom)
        assert isinstance(figure_inscriber, FigureInscriber)
        assert isinstance(pitch_inscriber, PitchInscriber)
        assert isinstance(color_inscriber, ColorInscriber)
        assert isinstance(envelope_inscriber, EnvelopeInscriber)
        self._fabric_loom = fabric_loom
        self._figure_inscriber = figure_inscriber
        self._pitch_inscriber = pitch_inscriber
        self._color_inscriber = color_inscriber
        self._envelope_inscriber = envelope_inscriber

    ### SPECIAL METHODS ###

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE METHODS ###

    @property
    def _format_string(self):
        return ' '

    ### PUBLIC ATTRIBUTES ###

    @property
    def color_inscriber(self):
        return self._color_inscriber

    @property
    def envelope_inscriber(self):
        return self._envelope_inscriber

    @property
    def fabric(self):
        return self.fabric_loom()

    @property
    def fabric_loom(self):
        return self._fabric_loom

    @property
    def figure_inscriber(self):
        return self._figure_inscriber

    @property
    def pitch_inscriber(self):
        return self._pitch_inscriber

    ### PUBLIC METHODS ###

    def make_uninscribed_fabric(self):
        fabric = self.fabric_loom()
        for performer in fabric:
            for timespan in fabric[performer]:
                timespan['aggregate'] = self
        return fabric

    def inscribe_fabric(self, fabric):
        assert isinstance(fabric, Fabric)
        print '\t\tinscribing figures'
        self.figure_inscriber(fabric)
        print '\t\tinscribing pitches'
        self.pitch_inscriber(fabric)
        print '\t\tinscribing colors'
        self.color_inscriber(fabric)
        print '\t\tinscribing envelope'
        self.envelope_inscriber(fabric)
        return fabric
