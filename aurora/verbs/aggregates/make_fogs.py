from abjad import Duration
from aurora.nouns.aggregates import *
from aurora.nouns.colors import *
from aurora.nouns.envelopes import *
from aurora.nouns.looms import *
from aurora.nouns.figures import *
from aurora.nouns.ensembles import *
from aurora.nouns.pitches import *


def make_fogs():

#   12

    aggregates = [
        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(6, 48), Duration(45, 4), seed = 89),
            ShimmeringFigureInscriber(seed = 66),
            MockPitchInscriber(seed = 18),
            MockColorInscriber(seed = 94),
            SmoothEnvelopeInscriber(seed = 8),
            ]), Duration(18, 1)], # from 24 to 39

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(9, 82), Duration(57, 4), seed = 87),
            WailingFigureInscriber(seed = 94),
            MockPitchInscriber(seed = 55),
            PaleColorInscriber(seed = 7),
            SmoothEnvelopeInscriber(seed = 74),
            ]), Duration(24, 1)], # from 32 to 51

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(6, 98), Duration(51, 4), seed = 79),
            ShimmeringFigureInscriber(seed = 15),
            MockPitchInscriber(seed = 36),
            MockColorInscriber(seed = 16),
            SmoothEnvelopeInscriber(seed = 91),
            ]), Duration(79, 2)], # from 52 to 69

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(9, 57), Duration(51, 4), seed = 4),
            WailingFigureInscriber(seed = 94),
            MockPitchInscriber(seed = 85),
            PaleColorInscriber(seed = 84),
            SmoothEnvelopeInscriber(seed = 35),
            ]), Duration(61, 1)], # from 81 to 98

        [Aggregate(*[ # hand built
            FogFabricLoom(RandomEnsemble(7, 100), Duration(60, 4), seed = 100),
            WailingFigureInscriber(seed = 94),
            MockPitchInscriber(seed = 85),
            MockColorInscriber(seed = 84),
            SmoothEnvelopeInscriber(seed = 35),
            ]), Duration(64, 1)], # from 82 to 100

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(16, 65), Duration(57, 4), seed = 5),
            WailingFigureInscriber(seed = 26),
            MockPitchInscriber(seed = 92),
            PaleColorInscriber(seed = 62),
            SmoothEnvelopeInscriber(seed = 55),
            ]), Duration(307, 4)], # from 102 to 121

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(6, 74), Duration(45, 4), seed = 37),
            ShimmeringFigureInscriber(seed = 6),
            MockPitchInscriber(seed = 22),
            MockColorInscriber(seed = 46),
            SmoothEnvelopeInscriber(seed = 4),
            ]), Duration(373, 4)], # from 124 to 139

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(8, 47), Duration(45, 4), seed = 55),
            WailingFigureInscriber(seed = 8),
            MockPitchInscriber(seed = 80),
            PaleColorInscriber(seed = 31),
            FlatEnvelopeInscriber(seed = 86),
            ]), Duration(403, 4)], # from 134 to 149

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(4, 57), Duration(51, 4), seed = 81),
            WailingFigureInscriber(seed = 10),
            MockPitchInscriber(seed = 24),
            MockColorInscriber(seed = 58),
            SmoothEnvelopeInscriber(seed = 92),
            ]), Duration(419, 4)], # from 139 to 156

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(7, 7), Duration(69, 4), seed = 83),
            WailingFigureInscriber(seed = 20),
            MockPitchInscriber(seed = 80),
            PaleColorInscriber(seed = 12),
            SmoothEnvelopeInscriber(seed = 60),
            ]), Duration(425, 4)], # from 141 to 164

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(6, 60), Duration(9, 1), seed = 38),
            WailingFigureInscriber(seed = 27),
            MockPitchInscriber(seed = 54),
            PaleColorInscriber(seed = 78),
            SmoothEnvelopeInscriber(seed = 38),
            ]), Duration(223, 2)], # from 148 to 160

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(9, 30), Duration(51, 4), seed = 86),
            WailingFigureInscriber(seed = 33),
            MockPitchInscriber(seed = 96),
            PaleColorInscriber(seed = 89),
            SmoothEnvelopeInscriber(seed = 78),
            ]), Duration(465, 4)], # from 155 to 172

        [Aggregate(*[
            FogFabricLoom(RandomEnsemble(10, 54), Duration(69, 4), seed = 43),
            WailingFigureInscriber(seed = 44),
            MockPitchInscriber(seed = 19),
            PaleColorInscriber(seed = 5),
            SmoothEnvelopeInscriber(seed = 71),
            ]), Duration(483, 4)], # from 161 to 184

    ]

    return aggregates

