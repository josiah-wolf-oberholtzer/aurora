import random
from abjad import Duration
from aurora.nouns.figures import *
from aurora.nouns.figures.ASRFigureInscriber import ASRFigureInscriber
from aurora.nouns.trajectories import *


class WhisperingFigureInscriber(ASRFigureInscriber):

    def __init__(self, seed = 0):
        attack = FigureReservoir( \
            [LeftHandRoll()], \
            [RightHandJete()])

        sustain = FigureReservoir( \
            [LeftHandSingleStop()], \
            [RightHandLegato()])

        release = FigureReservoir( \
            [LeftHandRoll(), LeftHandTrill()], \
            [RightHandLegato()])

        random.seed(seed)
        min_traj = smooth_trajectory(generate_random_trajectory(20), 5).normalize()
        max_traj = smooth_trajectory(generate_random_trajectory(20), 5).normalize()
        trajectories = TrajectorySet([min_traj, max_traj])

        ASRFigureInscriber.__init__(self, attack, sustain, release, trajectories,
            (3, 12, None, None, 4, 4),
            exclusion = Duration(1, 8),
            seed = seed)

    ### PRIVATE METHODS ###

    def _exec(self, fabric, start_offset, stop_offset):
        for performer in fabric:
            for timespan in fabric[performer]:
                divisions = self._get_interval_subdivisions(timespan, self.subdivision_specs)
                timespan['figures'] = tuple(divisions)

                divisions[0]['left'], divisions[0]['right'] = self.attack()
                if self._figure_breaks_across_bar(divisions[0]) \
                    and divisions[0].duration != Duration(1, 8):
                    divisions[0]['left'], divisions[0]['right'] = self.sustain()

                if 1 < len(divisions):
                    divisions[-1]['left'], divisions[-1]['right'] = self.release()
                    if self._figure_breaks_across_bar(divisions[-1]) \
                        and divisions[-1].duration != Duration(1, 8):
                        while isinstance(divisions[-1]['left'], LeftHandRoll):
                            divisions[-1]['left'], divisions[-1]['right'] = self.release()

                if 2 < len(divisions):
                    for division in divisions[1:-1]:
                        division['left'], division['right'] = self.sustain()
                        if self._figure_breaks_across_bar(division) \
                            and division.duration != Duration(1, 8):
                            while isinstance(division['left'], LeftHandRoll):
                                division['left'], division['right'] = self.sustain()
