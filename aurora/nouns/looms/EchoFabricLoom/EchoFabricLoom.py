from abjad import Duration
from aurora.nouns.ensembles import Ensemble
from aurora.nouns.fabrics import *
from aurora.nouns.looms._FabricLoom import _FabricLoom
from aurora.nouns.trajectories import *


class EchoFabricLoom(_FabricLoom):

    def __init__(self, ensemble, duration, seed = 0):
        assert isinstance(ensemble, Ensemble)
        assert 0 < duration
        quantization = Duration(1, 32)

        ### GENERATOR ###
        duration_domain = Domain(Duration(1, 16), Duration(1, 4), [quantization])
        offset_domain = Domain(0, Duration(1, 4), [quantization])
        duration_goal = MagnitudeGoal(duration)
        goals = [duration_goal]
        generator = BackReferencingGenerator(duration_domain, offset_domain, goals, reference = 'stop_offset', seed = seed)

        ### FILTERS ###
        duplication_filter = StaticDuplicationFilter(1)
        random_domain = Domain(Duration(-1, 8), Duration(1, 8), [quantization])
        smrf = StaticMagnitudeRandomizationFilter(random_domain)
        sorf = StaticOffsetRandomizationFilter(random_domain)
        filters = [duplication_filter, smrf, sorf]

        ### RESOLVER ###
        resolver = HeuristicShufflingResolver(ensemble, op = 'xor')

        ### INIT ###
        _FabricLoom.__init__(self, ensemble, generator, filters, resolver)
