import random
from abjad import Duration
from aurora.nouns.figures import *
from aurora.nouns.figures.ASRFigureInscriber import ASRFigureInscriber
from aurora.nouns.trajectories import *


class ShimmeringFigureInscriber(ASRFigureInscriber):

    def __init__(self, seed = 0):
        attack = FigureReservoir( \
            [LeftHandSingleStop(), LeftHandTrill()], \
            [RightHandCircular(), RightHandTremolo()])

        sustain = FigureReservoir( \
            [LeftHandTrill()], \
            [RightHandCircular(), RightHandTremolo(), RightHandLegato()])

        release = FigureReservoir( \
            [LeftHandRoll(), LeftHandTrill()], \
            [RightHandLegato()])

        random.seed(seed)
        min_traj = smooth_trajectory(generate_random_trajectory(20), 5).normalize()
        max_traj = smooth_trajectory(generate_random_trajectory(20), 5).normalize()
        trajectories = TrajectorySet([min_traj, max_traj])

        ASRFigureInscriber.__init__(self, attack, sustain, release, trajectories,
            (4, 12, None, None, None, 4),
            exclusion = Duration(1, 16),
            seed = seed)
