from abjad import Duration
from aurora.nouns.aggregates import *
from aurora.nouns.colors import *
from aurora.nouns.envelopes import *
from aurora.nouns.looms import *
from aurora.nouns.figures import *
from aurora.nouns.ensembles import *
from aurora.nouns.pitches import *


def make_dust():

#	15

	aggregates = [
		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(10, 59), Duration(27, 4), seed = 78),
			ChirpingFigureInscriber(seed = 32),
			MockPitchInscriber(seed = 36),
			MockColorInscriber(seed = 30),
			FlatEnvelopeInscriber(seed = 17),
			]), Duration(11, 4)], # from 3 to 12

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(10, 89), Duration(39, 4), seed = 27),
			ChirpingFigureInscriber(seed = 44),
			MockPitchInscriber(seed = 56),
			MockColorInscriber(seed = 29),
			CrookedEnvelopeInscriber(seed = 72),
			]), Duration(47, 4)], # from 15 to 28

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(8, 72), Duration(15, 4), seed = 54),
			ChirpingFigureInscriber(seed = 21),
			MockPitchInscriber(seed = 66),
			MockColorInscriber(seed = 83),
			FlatEnvelopeInscriber(seed = 46),
			]), Duration(99, 4)], # from 33 to 38

        [Aggregate(*[ # hand built
            DustFabricLoom(RandomEnsemble(6, 99), Duration(27, 4), seed = 30),
            WarblingFigureInscriber(seed = 47),
            MockPitchInscriber(seed = 5),
            MockColorInscriber(seed = 85),
            FlatEnvelopeInscriber(seed = 61),
            ]), Duration(198, 4)], # ?

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(7, 87), Duration(33, 4), seed = 61),
			TremblingFigureInscriber(seed = 8),
			MockPitchInscriber(seed = 83),
			MockColorInscriber(seed = 23),
			FlatEnvelopeInscriber(seed = 5),
			]), Duration(211, 4)], # from 70 to 81

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(3, 35), Duration(21, 4), seed = 21),
			TremblingFigureInscriber(seed = 47),
			MockPitchInscriber(seed = 5),
			MockColorInscriber(seed = 85),
			CrookedEnvelopeInscriber(seed = 61),
			]), Duration(127, 2)], # from 84 to 91

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(6, 81), Duration(27, 4), seed = 65),
			TremblingFigureInscriber(seed = 94),
			MockPitchInscriber(seed = 9),
			MockColorInscriber(seed = 55),
			CrookedEnvelopeInscriber(seed = 19),
			]), Duration(137, 2)], # from 91 to 100

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(5, 49), Duration(45, 4), seed = 82),
			ChirpingFigureInscriber(seed = 52),
			MockPitchInscriber(seed = 5),
			MockColorInscriber(seed = 17),
			FlatEnvelopeInscriber(seed = 13),
			]), Duration(291, 4)], # from 97 to 112

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(9, 30), Duration(9, 1), seed = 34),
			TremblingFigureInscriber(seed = 81),
			MockPitchInscriber(seed = 55),
			MockColorInscriber(seed = 64),
			FlatEnvelopeInscriber(seed = 73),
			]), Duration(74, 1)], # from 98 to 110

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(3, 28), Duration(39, 4), seed = 100),
			ChirpingFigureInscriber(seed = 86),
			MockPitchInscriber(seed = 27),
			MockColorInscriber(seed = 71),
			CrookedEnvelopeInscriber(seed = 10),
			]), Duration(79, 1)], # from 105 to 118

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(10, 78), Duration(9, 2), seed = 5),
			TremblingFigureInscriber(seed = 66),
			MockPitchInscriber(seed = 8),
			MockColorInscriber(seed = 48),
			FlatEnvelopeInscriber(seed = 20),
			]), Duration(383, 4)], # from 127 to 133

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(4, 1), Duration(3, 1), seed = 76),
			ShimmeringFigureInscriber(seed = 35),
			MockPitchInscriber(seed = 46),
			MockColorInscriber(seed = 29),
			CrookedEnvelopeInscriber(seed = 88),
			]), Duration(415, 4)], # from 138 to 142

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(4, 97), Duration(6, 1), seed = 81),
			ChirpingFigureInscriber(seed = 40),
			MockPitchInscriber(seed = 35),
			MockColorInscriber(seed = 61),
			CrookedEnvelopeInscriber(seed = 88),
			]), Duration(429, 4)], # from 143 to 151

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(4, 49), Duration(3, 1), seed = 97),
			TremblingFigureInscriber(seed = 8),
			MockPitchInscriber(seed = 4),
			MockColorInscriber(seed = 8),
			CrookedEnvelopeInscriber(seed = 79),
			]), Duration(467, 4)], # from 155 to 159

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(8, 17), Duration(21, 2), seed = 55),
			ChirpingFigureInscriber(seed = 2),
			MockPitchInscriber(seed = 41),
			MockColorInscriber(seed = 68),
			CrookedEnvelopeInscriber(seed = 97),
			]), Duration(485, 4)], # from 161 to 175

		[Aggregate(*[
			DustFabricLoom(RandomEnsemble(4, 48), Duration(6, 1), seed = 83),
			ShimmeringFigureInscriber(seed = 60),
			MockPitchInscriber(seed = 10),
			MockColorInscriber(seed = 26),
			CrookedEnvelopeInscriber(seed = 75),
			]), Duration(541, 4)], # from 180 to 188

	]

	return aggregates

