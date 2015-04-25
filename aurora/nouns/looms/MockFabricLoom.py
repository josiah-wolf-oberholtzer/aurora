from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms.FabricLoom import FabricLoom
from aurora.nouns.trajectories import *


class MockFabricLoom(FabricLoom):

    def __init__(self, ensemble, duration, seed=0):
        assert isinstance(ensemble, Ensemble)
        assert 0 < duration
        quantization = Duration(1, 32)

        # GENERATOR
        duration_domain = Domain([duration])
        offset_domain = Domain([0])
        interval_count_goal = IntervalCountGoal(len(ensemble))
        goals = [interval_count_goal]
        generator = NonReferencingGenerator(duration_domain, offset_domain, goals, seed=seed)

        # FILTERS
        filters = []

        # RESOLVER
        resolver = HeuristicShufflingResolver(ensemble, seed=seed)

        # INIT
        FabricLoom.__init__(
            self,
            ensemble,
            generator,
            filters,
            resolver,
            seed=seed,
            )
