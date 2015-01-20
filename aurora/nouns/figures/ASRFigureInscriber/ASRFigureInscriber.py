from collections import Iterable
from abjad import Duration
from aurora.nouns.figures import *
from aurora.nouns.figures.FigureInscriber import FigureInscriber
from aurora.nouns.trajectories import TrajectorySet
from aurora.utils.mathutils import scale_value


class ASRFigureInscriber(FigureInscriber):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_attack',
        '_exclusion',
        '_reference',
        '_release',
        '_sustain',
        '_seed',
        '_subdivision_specs',
        '_trajectories',
        )

    def __init__(
        self,
        attack,
        sustain,
        release,
        trajectories,
        subdivision_specs,
        exclusion=Duration(1, 16),
        reference='centroid',
        seed=0,
        ):
        FigureInscriber.__init__(self, exclusion, reference, seed)
        assert isinstance(attack, FigureReservoir)
        assert isinstance(sustain, FigureReservoir)
        assert isinstance(release, FigureReservoir)
        assert isinstance(trajectories, TrajectorySet) \
            and len(trajectories) == 2 \
            and trajectories.is_normalized
        assert isinstance(subdivision_specs, Iterable) \
            and len(subdivision_specs) == 6 \
            and all([isinstance(x, (int, type(None))) for x in subdivision_specs])
        self._attack = attack
        self._sustain = sustain
        self._release = release
        self._trajectories = trajectories
        self._subdivision_specs = subdivision_specs

    ### PRIVATE METHODS ###

    def _exec(self, fabric, start_offset, stop_offset):
        for performer in fabric:
            for timespan in fabric[performer]:
                divisions = self._get_interval_subdivisions(timespan, self.subdivision_specs)
                timespan['figures'] = tuple(divisions)
                divisions[0]['left'], divisions[0]['right'] = self.attack()
                if self._figure_breaks_across_bar(divisions[0]) \
                    and divisions[0].duration != Duration(1, 8):
                    while isinstance(divisions[0]['left'], LeftHandRoll):
                        divisions[0]['left'], divisions[0]['right'] = self.attack()
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
        return fabric

    ### PUBLIC ATTRIBUTES ###

    @property
    def attack(self):
        return self._attack

    @property
    def release(self):
        return self._release

    @property
    def subdivision_specs(self):
        return self._subdivision_specs

    @property
    def sustain(self):
        return self._sustain

    @property
    def trajectories(self):
        return self._trajectories

    @property
    def min_subdivision(self):
        return self.subdivision_specs[0]

    @property
    def max_subdivision(self):
        return self.subdivision_specs[1]

    @property
    def min_length(self):
        return self.subdivision_specs[2]

    @property
    def max_length(self):
        return self.subdivision_specs[3]

    @property
    def first_subdivision(self):
        return self.subdivision_specs[4]

    @property
    def last_subdivision(self):
        retu
