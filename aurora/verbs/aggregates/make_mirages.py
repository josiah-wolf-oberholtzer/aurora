from abjad import Duration
from aurora.nouns.aggregates import *
from aurora.nouns.colors import *
from aurora.nouns.envelopes import *
from aurora.nouns.looms import *
from aurora.nouns.figures import *
from aurora.nouns.ensembles import *
from aurora.nouns.pitches import *


def make_mirages():

#	6

	aggregates = [
		[Aggregate(*[
			MirageFabricLoom(RandomEnsemble(5, 87), Duration(57, 4), seed = 62),
			WhisperingFigureInscriber(seed = 23),
			MockPitchInscriber(seed = 96),
			MockColorInscriber(seed = 44),
			PrickingEnvelopeInscriber(seed = 32),
			]), Duration(11, 4)], # from 3 to 22

		[Aggregate(*[
			MirageFabricLoom(RandomEnsemble(9, 58), Duration(45, 4), seed = 16),
			WhisperingFigureInscriber(seed = 67),
			MockPitchInscriber(seed = 97),
			MockColorInscriber(seed = 66),
			PrickingEnvelopeInscriber(seed = 36),
			]), Duration(131, 4)], # from 43 to 58

		[Aggregate(*[
			MirageFabricLoom(RandomEnsemble(7, 86), Duration(12, 1), seed = 66),
			WhisperingFigureInscriber(seed = 93),
			MockPitchInscriber(seed = 15),
			MockColorInscriber(seed = 15),
			PrickingEnvelopeInscriber(seed = 94),
			]), Duration(39, 1)], # from 52 to 68

		[Aggregate(*[
			MirageFabricLoom(RandomEnsemble(3, 23), Duration(57, 4), seed = 36),
			WhisperingFigureInscriber(seed = 61),
			MockPitchInscriber(seed = 20),
			MockColorInscriber(seed = 38),
			PrickingEnvelopeInscriber(seed = 8),
			]), Duration(86, 1)], # from 114 to 133

		[Aggregate(*[
			MirageFabricLoom(RandomEnsemble(12, 55), Duration(12, 1), seed = 94),
			WhisperingFigureInscriber(seed = 17),
			MockPitchInscriber(seed = 92),
			MockColorInscriber(seed = 49),
			PrickingEnvelopeInscriber(seed = 36),
			]), Duration(373, 4)], # from 124 to 140

		[Aggregate(*[
			MirageFabricLoom(RandomEnsemble(6, 21), Duration(39, 4), seed = 40),
			WhisperingFigureInscriber(seed = 89),
			MockPitchInscriber(seed = 66),
			MockColorInscriber(seed = 55),
			PrickingEnvelopeInscriber(seed = 37),
			]), Duration(133, 1)], # from 177 to 190

	]

	return aggregates

