import random
from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms._FabricLoom import _FabricLoom
from aurora.nouns.trajectories import *


class FogFabricLoom(_FabricLoom):

    def __init__(self, ensemble, duration, seed=0):
        assert isinstance(ensemble, Ensemble)
        assert 0 < duration
        quantization = Duration(1, 32)

        ### GENERATOR ###
        duration_domain = Domain(Duration(1, 4), Duration(3, 2), [quantization])
        offset_domain = Domain(0, duration, [quantization])
        duration_goal = MagnitudeGoal(duration)
        interval_count_goal = IntervalCountGoal(int(len(ensemble) * duration))
        goals = [duration_goal, interval_count_goal]
        generator = NonReferencingGenerator(duration_domain, offset_domain, goals, seed=seed)

        ### FILTERS ###
        random.seed(seed)
        gravity_filter = GravityFilter(
            [
                [
                    random.random(),
                    random.random(),
                    random.random(),
                    ]
                for i in range(random.randint(1, 5))
                ]
            )
        traj = generate_window_trajectory('cos', 100)
        dmcf = DynamicMagnitudeClippingFilter('start_offset', traj, quantization, Duration(3, 2))
        dmmf = DynamicMagnitudeMaskingFilter('<', traj, 0, 1)
        filters = [gravity_filter, dmcf, dmmf]

        ### RESOLVER ###
        resolver = HeuristicShufflingResolver(ensemble, op='xor', seed=seed)

        ### INIT ###
        _FabricLoom.__init__(
            self,
            ensemble,
            generator,
            filters,
            resolver,
            seed=seed,
            )