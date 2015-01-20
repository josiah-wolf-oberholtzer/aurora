import random
from abjad import Duration
from aurora.nouns.figures import *
from aurora.nouns.figures.ASRFigureInscriber import ASRFigureInscriber
from aurora.nouns.trajectories import *
from aurora.utils.durutils import partition_duration_by_nested_grids_and_offset


class ChirpingFigureInscriber(ASRFigureInscriber):

    def __init__(self, seed = 0):
        attack = FigureReservoir( \
            [LeftHandRoll(), LeftHandGlissando()], \
            [RightHandJete(), RightHandLegato()])

        sustain = FigureReservoir( \
            [LeftHandPattern()], \
            [RightHandStaccato()])

        release = FigureReservoir( \
            [LeftHandGlissando(), LeftHandOscillation()], \
            [RightHandPizzicato()])

        random.seed(seed)
        min_traj = smooth_trajectory(generate_random_trajectory(20), 4).normalize()
        max_traj = smooth_trajectory(generate_random_trajectory(20), 4).normalize()
        trajectories = TrajectorySet([min_traj, max_traj])

        ASRFigureInscriber.__init__(self, attack, sustain, release, trajectories,
            (4, 8, None, None, 4, None),
            exclusion = Duration(1, 8),
            seed = seed)
