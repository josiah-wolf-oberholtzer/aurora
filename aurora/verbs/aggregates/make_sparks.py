from abjad import Duration
from aurora.nouns.aggregates import *
from aurora.nouns.colors import *
from aurora.nouns.envelopes import *
from aurora.nouns.looms import *
from aurora.nouns.figures import *
from aurora.nouns.ensembles import *
from aurora.nouns.pitches import *


def make_sparks():

#	18

	aggregates = [
		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(15, 38), seed = 94),
			WarblingFigureInscriber(seed = 24),
			MockPitchInscriber(seed = 7),
			MockColorInscriber(seed = 39),
			SharpEnvelopeInscriber(seed = 71),
			]), Duration(15, 1)], # at 5

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(8, 66), seed = 53),
			WarblingFigureInscriber(seed = 40),
			MockPitchInscriber(seed = 46),
			MockColorInscriber(seed = 46),
			SharpEnvelopeInscriber(seed = 64),
			]), Duration(27, 4)], # at 9

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(19, 89), seed = 24),
			WarblingFigureInscriber(seed = 94),
			MockPitchInscriber(seed = 60),
			MockColorInscriber(seed = 83),
			SharpEnvelopeInscriber(seed = 86),
			]), Duration(24, 1)], # at 32

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(15, 49), seed = 7),
			WarblingFigureInscriber(seed = 80),
			MockPitchInscriber(seed = 27),
			MockColorInscriber(seed = 68),
			SharpEnvelopeInscriber(seed = 48),
			]), Duration(135, 4)], # at 45

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(9, 99), seed = 5),
			WarblingFigureInscriber(seed = 92),
			MockPitchInscriber(seed = 83),
			MockColorInscriber(seed = 80),
			SharpEnvelopeInscriber(seed = 18),
			]), Duration(39, 1)], # at 52

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(18, 70), seed = 99),
			WarblingFigureInscriber(seed = 17),
			MockPitchInscriber(seed = 2),
			MockColorInscriber(seed = 4),
			SharpEnvelopeInscriber(seed = 73),
			]), Duration(117, 2)], # at 78

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(22, 63), seed = 37),
			WarblingFigureInscriber(seed = 28),
			MockPitchInscriber(seed = 30),
			MockColorInscriber(seed = 49),
			SharpEnvelopeInscriber(seed = 10),
			]), Duration(309, 4)], # at 103

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(15, 17), seed = 68),
			WarblingFigureInscriber(seed = 40),
			MockPitchInscriber(seed = 98),
			MockColorInscriber(seed = 85),
			SharpEnvelopeInscriber(seed = 11),
			]), Duration(165, 2)], # at 110

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(15, 96), seed = 52),
			WarblingFigureInscriber(seed = 32),
			MockPitchInscriber(seed = 92),
			MockColorInscriber(seed = 93),
			SharpEnvelopeInscriber(seed = 52),
			]), Duration(171, 2)], # at 114

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(8, 50), seed = 54),
			WarblingFigureInscriber(seed = 10),
			MockPitchInscriber(seed = 74),
			MockColorInscriber(seed = 56),
			SharpEnvelopeInscriber(seed = 91),
			]), Duration(90, 1)], # at 120

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(18, 62), seed = 11),
			WarblingFigureInscriber(seed = 37),
			MockPitchInscriber(seed = 53),
			MockColorInscriber(seed = 31),
			SharpEnvelopeInscriber(seed = 57),
			]), Duration(369, 4)], # at 123

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(12, 77), seed = 7),
			WarblingFigureInscriber(seed = 4),
			MockPitchInscriber(seed = 72),
			MockColorInscriber(seed = 57),
			SharpEnvelopeInscriber(seed = 18),
			]), Duration(231, 2)], # at 154

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(13, 33), seed = 82),
			WarblingFigureInscriber(seed = 52),
			MockPitchInscriber(seed = 79),
			MockColorInscriber(seed = 44),
			SharpEnvelopeInscriber(seed = 5),
			]), Duration(465, 4)], # at 155

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(12, 34), seed = 90),
			WarblingFigureInscriber(seed = 79),
			MockPitchInscriber(seed = 33),
			MockColorInscriber(seed = 79),
			SharpEnvelopeInscriber(seed = 75),
			]), Duration(471, 4)], # at 157

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(20, 61), seed = 55),
			WarblingFigureInscriber(seed = 88),
			MockPitchInscriber(seed = 78),
			MockColorInscriber(seed = 79),
			SharpEnvelopeInscriber(seed = 2),
			]), Duration(531, 4)], # at 177

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(14, 86), seed = 51),
			WarblingFigureInscriber(seed = 25),
			MockPitchInscriber(seed = 45),
			MockColorInscriber(seed = 21),
			SharpEnvelopeInscriber(seed = 2),
			]), Duration(567, 4)], # at 189

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(10, 99), seed = 68),
			WarblingFigureInscriber(seed = 57),
			MockPitchInscriber(seed = 55),
			MockColorInscriber(seed = 76),
			SharpEnvelopeInscriber(seed = 64),
			]), Duration(573, 4)], # at 191

		[Aggregate(*[
			SparkFabricLoom(RandomEnsemble(9, 44), seed = 0),
			WarblingFigureInscriber(seed = 12),
			MockPitchInscriber(seed = 34),
			MockColorInscriber(seed = 71),
			SharpEnvelopeInscriber(seed = 99),
			]), Duration(585, 4)], # at 197

	]

	return aggregates

