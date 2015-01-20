import random
from abjad import Duration
from aurora.nouns.figures import *
from aurora.nouns.figures.ASRFigureInscriber import ASRFigureInscriber
from aurora.nouns.trajectories import *


class WailingFigureInscriber(ASRFigureInscriber):

    def __init__(self, seed = 0):
        attack = FigureReservoir( \
            [LeftHandSingleStop()], \
            [RightHandLegato()])

        sustain = FigureReservoir( \
            [LeftHandPattern()], \
            [RightHandLegato()])

        release = FigureReservoir( \
            [LeftHandSingleStop()], \
            [RightHandCircular(), RightHandTremolo()])

        random.seed(seed)
        min_traj = smooth_trajectory(generate_random_trajectory(20), 5).normalize()
        max_traj = smooth_trajectory(generate_random_trajectory(20), 5).normalize()
        trajectories = TrajectorySet([min_traj, max_traj])

        ASRFigureInscriber.__init__(self, attack, sustain, release, trajectories,
            (8, 16, None, None, None, None),
            exclusion = Duration(1, 16),
            seed = seed)
