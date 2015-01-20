from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms._FabricLoom import _FabricLoom
from aurora.nouns.trajectories import *


class BurstFabricLoom(_FabricLoom):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_duration',
        )

    ### INITIALIZER ###

    def __init__(self, ensemble, duration, seed=0):
        assert isinstance(ensemble, Ensemble)
        assert 0 < duration
        quantization = Duration(1, 32)
 
        self._duration = duration

        # GENERATOR
        duration_domain = Domain(Duration(1, 8), Duration(1, 4), [quantization])
        offset_domain = Domain(0, duration, [quantization])
        interval_count_goal = IntervalCountGoal((3 + int(duration / 2.)) * len(ensemble))
        goals = [interval_count_goal]
        generator = NonReferencingGenerator(duration_domain, offset_domain, goals, seed = seed)

        # FILTERS
        gravity_filter = GravityFilter([[0.25, 1, 0.5]], reference = 'start_offset')
        traj = Trajectory([Point(0, 1), Point(0.5, 0.25), Point(1, 0)])
        clipping_filter = DynamicMagnitudeClippingFilter('stop_offset', traj, Duration(1, 16), Duration(1, 4))
        filters = [gravity_filter, clipping_filter]

        # RESOLVER
        resolver = HeuristicShufflingResolver(ensemble, seed = seed)

        # INIT
        _FabricLoom.__init__(self, ensemble, generator, filters, resolver, seed)

    ### PUBLIC PROPERTIES ###

    @property
    def duration(self):
        return self._duration 
