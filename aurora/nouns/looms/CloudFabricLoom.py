import random
from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms.FabricLoom import FabricLoom
from aurora.nouns.trajectories import *
from aurora.utils.mathutils import scale_value


class CloudFabricLoom(FabricLoom):

    def __init__(self, ensemble, duration, seed=0):
        assert isinstance(ensemble, Ensemble)
        assert 0 < duration
        quantization = Duration(1, 32)

        ### GENERATOR ###
        duration_domain = Domain(Duration(1, 8), Duration(1, 2), [quantization])
        offset_domain = Domain(0, duration, [quantization])
        duration_goal = MagnitudeGoal(duration)
        depth_density_goal = DepthDensityGoal(Duration(3, 2))
        goals = [duration_goal, depth_density_goal]
        generator = NonReferencingGenerator(duration_domain, offset_domain, goals, seed=seed)

        ### FILTERS ###
        random.seed(seed)
        gravity_wells = [
            [
                random.random(),
                scale_value(random.random(), 0, 1, 0.3, 1),
                scale_value(random.random(), 0, 1, 0.25, 0.75)
                ]
            for i in range(random.randint(3, 5))
            ]
        gravity_filter = GravityFilter(gravity_wells)
        traj = generate_window_trajectory('cos', 100)
        dmcf = DynamicMagnitudeClippingFilter('stop_offset', traj, quantization, Duration(1, 4))
        filters = [gravity_filter, dmcf]

        ### RESOLVER ###
        resolver = HeuristicShufflingResolver(ensemble, op='xor', seed=seed)

        ### INIT ###
        FabricLoom.__init__(
            self,
            ensemble,
            generator,
            filters,
            resolver,
            seed=seed,
            )