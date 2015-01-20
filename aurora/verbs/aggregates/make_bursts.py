from abjad import Duration
from aurora.nouns.aggregates import *
from aurora.nouns.colors import *
from aurora.nouns.envelopes import *
from aurora.nouns.looms import *
from aurora.nouns.figures import *
from aurora.nouns.ensembles import *
from aurora.nouns.pitches import *


def make_bursts():

#	12

	aggregates = [
		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(6, 96), Duration(9, 2), seed = 22),
			WarblingFigureInscriber(seed = 33),
			MockPitchInscriber(seed = 25),
			MockColorInscriber(seed = 36),
			PrickingEnvelopeInscriber(seed = 91),
			]), Duration(11, 1)], # from 14 to 20

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(10, 69), Duration(9, 2), seed = 25),
			WarblingFigureInscriber(seed = 99),
			MockPitchInscriber(seed = 6),
			MockColorInscriber(seed = 100),
			PrickingEnvelopeInscriber(seed = 3),
			]), Duration(12, 1)], # from 16 to 22

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(6, 69), Duration(15, 2), seed = 73),
			ChirpingFigureInscriber(seed = 30),
			MockPitchInscriber(seed = 8),
			MockColorInscriber(seed = 46),
			SharpEnvelopeInscriber(seed = 16),
			]), Duration(75, 4)], # from 25 to 35

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(21, 56), Duration(6, 1), seed = 24),
			ChirpingFigureInscriber(seed = 2),
			MockPitchInscriber(seed = 18),
			MockColorInscriber(seed = 40),
			PrickingEnvelopeInscriber(seed = 2),
			]), Duration(119, 4)], # from 39 to 47

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(9, 70), Duration(3, 1), seed = 20),
			ChirpingFigureInscriber(seed = 47),
			MockPitchInscriber(seed = 70),
			MockColorInscriber(seed = 18),
			PrickingEnvelopeInscriber(seed = 95),
			]), Duration(149, 4)], # from 49 to 53

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(8, 62), Duration(15, 4), seed = 60),
			WarblingFigureInscriber(seed = 32),
			MockPitchInscriber(seed = 90),
			MockColorInscriber(seed = 34),
			SharpEnvelopeInscriber(seed = 44),
			]), Duration(217, 4)], # from 72 to 77

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(22, 2), Duration(15, 2), seed = 58),
			ChirpingFigureInscriber(seed = 62),
			MockPitchInscriber(seed = 61),
			MockColorInscriber(seed = 87),
			SharpEnvelopeInscriber(seed = 22),
			]), Duration(61, 1)], # from 81 to 91

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(5, 5), Duration(27, 4), seed = 34),
			WarblingFigureInscriber(seed = 66),
			MockPitchInscriber(seed = 81),
			MockColorInscriber(seed = 97),
			PrickingEnvelopeInscriber(seed = 24),
			]), Duration(223, 2)], # from 148 to 157

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(7, 79), Duration(15, 2), seed = 72),
			WarblingFigureInscriber(seed = 29),
			MockPitchInscriber(seed = 40),
			MockColorInscriber(seed = 81),
			SharpEnvelopeInscriber(seed = 10),
			]), Duration(453, 4)], # from 151 to 161

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(7, 10), Duration(33, 4), seed = 7),
			TremblingFigureInscriber(seed = 47),
			MockPitchInscriber(seed = 78),
			MockColorInscriber(seed = 85),
			PrickingEnvelopeInscriber(seed = 62),
			]), Duration(495, 4)], # from 165 to 176

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(5, 72), Duration(9, 2), seed = 93),
			TremblingFigureInscriber(seed = 59),
			MockPitchInscriber(seed = 41),
			MockColorInscriber(seed = 83),
			PrickingEnvelopeInscriber(seed = 52),
			]), Duration(273, 2)], # from 182 to 188

		[Aggregate(*[
			BurstFabricLoom(RandomEnsemble(20, 9), Duration(9, 4), seed = 18),
			WarblingFigureInscriber(seed = 92),
			MockPitchInscriber(seed = 61),
			MockColorInscriber(seed = 64),
			SharpEnvelopeInscriber(seed = 89),
			]), Duration(551, 4)], # from 183 to 186

	]

	return aggregates

