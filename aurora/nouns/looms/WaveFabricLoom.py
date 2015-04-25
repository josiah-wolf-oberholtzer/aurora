from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms.FabricLoom import FabricLoom
from aurora.nouns.trajectories import *


class WaveFabricLoom(FabricLoom):

    def __init__(self, ensemble, duration, seed=0):
        assert isinstance(ensemble, Ensemble)
        assert 0 < duration
        quantization = Duration(1, 32)

        ### GENERATOR ###
        duration_domain = Domain(Duration(1, 8), Duration(1, 2), [quantization])
        offset_domain = Domain(0, duration, [quantization])
        duration_goal = MagnitudeGoal(duration)
        depth_density_goal = DepthDensityGoal(2)
        goals = [duration_goal, depth_density_goal]
        generator = NonReferencingGenerator(duration_domain, offset_domain, goals, seed=seed)

        ### FILTERS ###
        gravity_filter = GravityFilter([[0.5, 1, 0.5], [0.5, 0.5, 0.25], [0.5, 0.25, 0.25]])
        traj = generate_window_trajectory('cos', 100)
        dmcf = DynamicMagnitudeClippingFilter('start_offset', traj, Duration(1, 8), Duration(3, 4))
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