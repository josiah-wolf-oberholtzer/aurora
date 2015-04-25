import random
from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms.FabricLoom import FabricLoom
from aurora.nouns.trajectories import *


class ChantFabricLoom(FabricLoom):

    def __init__(self, ensemble, duration, frequency=Duration(1, 2), seed=0):
        assert isinstance(ensemble, Ensemble)
        assert 0 < duration
        quantization = Duration(1, 32)

        ### GENERATOR ###
        duration_domain = Domain(Duration(1, 16), Duration(1, 4), [quantization])
        offset_domain = Domain([frequency])
        duration_goal = MagnitudeGoal(duration)
        goals = [duration_goal]
        generator = BackReferencingGenerator(duration_domain, offset_domain, goals, seed=seed)

        ### FILTERS ###
        random.seed(seed)
        duplication_trajectory = Trajectory([Point(0, 0), Point(1, 1)])
        duplication_trajectory = resample_trajectory(duplication_trajectory, 100)
        duplication_trajectory = perturb_trajectory(duplication_trajectory, 0.2)
        duplication_trajectory = smooth_trajectory(duplication_trajectory, 5).normalize()
        duplication_filter = DynamicDuplicationFilter(duplication_trajectory, 0, len(ensemble))
        random_domain = Domain(Duration(-1, 8), Duration(1, 8), [quantization])
        smrf = StaticMagnitudeRandomizationFilter(random_domain)
        sorf = StaticOffsetRandomizationFilter(random_domain)
        filters = [duplication_filter, smrf, sorf]

        ### RESOLVER ###
        resolver = HeuristicShufflingResolver(ensemble, seed=seed)

        ### INIT ###
        FabricLoom.__init__(
            self,
            ensemble,
            generator,
            filters,
            resolver,
            seed=seed
            )