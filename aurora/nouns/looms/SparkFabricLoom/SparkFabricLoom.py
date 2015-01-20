from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms._FabricLoom import _FabricLoom
from aurora.nouns.trajectories import *


class SparkFabricLoom(_FabricLoom):

    def __init__(self, ensemble, seed = 0):
        assert isinstance(ensemble, Ensemble)
        quantization = Duration(1, 32)

        ### GENERATOR ###
        duration_domain = Domain(Duration(1, 16), Duration(1, 4), [quantization])
        offset_domain = Domain([0])
        interval_count_goal = IntervalCountGoal(len(ensemble))
        goals = [interval_count_goal]
        generator = NonReferencingGenerator(duration_domain, offset_domain, goals, seed = seed)

        ### FILTERS ###
        filters = []

        ### RESOLVER ###
        resolver = HeuristicShufflingResolver(ensemble, seed = seed)

        ### INIT ###
        _FabricLoom.__init__(self, ensemble, generator, filters, resolver)
