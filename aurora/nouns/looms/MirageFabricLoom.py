from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms.FabricLoom import FabricLoom
from aurora.nouns.trajectories import *


class MirageFabricLoom(FabricLoom):

    def __init__(self, ensemble, duration, frequency=Duration(1, 4), seed=0):
        assert isinstance(ensemble, Ensemble)
        assert 0 < duration
        assert 0 < frequency
        quantization = Duration(1, 32)

        ### GENERATOR ###
        duration_domain = Domain([frequency])
        offset_domain = Domain([frequency])
        duration_goal = MagnitudeGoal(duration)
        goals = [duration_goal]
        generator = BackReferencingGenerator(duration_domain, offset_domain, goals, seed=seed)

        ### FILTERS ###
        traj = generate_window_trajectory('cos', 100).scale(1, 0)
        dmrf = DynamicMagnitudeRandomizationFilter(traj, Duration(-1, 8), Duration(1, 4))
        dorf = DynamicOffsetRandomizationFilter(traj, Duration(-1, 4), Duration(1, 4))
        filters = [dmrf, dorf]

        ### RESOLVER ###
        resolver = HeuristicShufflingResolver(ensemble, seed=seed)

        ### INIT ###
        FabricLoom.__init__(
            self,
            ensemble,
            generator,
            filters,
            resolver,
            seed=seed,
            )