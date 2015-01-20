from collections import Iterable
from aurora.nouns.trajectories.Trajectory import Trajectory
from abjad.tools.abctools import AbjadObject


class TrajectorySet(AbjadObject):

    __slots__ = ('_max', '_min', '_trajectories',)

    def __init__(self, trajectories):
        assert isinstance(trajectories, Iterable) \
            and len(trajectories) \
            and all([isinstance(x, Trajectory) for x in trajectories])
        object.__setattr__(self, '_trajectories', tuple(trajectories))
        object.__setattr__(self, '_max', max([t.max for t in self.trajectories]))
        object.__setattr__(self, '_min', min([t.min for t in self.trajectories]))

    ### SPECIAL METHODS ###

    def __eq__(self, other):
        if type(self) == type(other):
            if self.trajectories == other.trajectories:
                return True
        return False

    def __getitem__(self, item):
        return self.trajectories[item]

    def __getslice__(self, start_offset, stop_offset):
        return self.trajectories[start_offset:stop_offset]

    def __hash__(self):
        return hash(self.trajectories)

    def __len__(self):
        return len(self._trajectories)

    def __repr__(self):
        if 1 < len(self):
            return '%s((\n\t%s\n))' % (self.__class__.__name__, \
                ',\n\t'.join([repr(x) for x in self.trajectories]))
        else:
            return '%s(%s)' % (self.__class__.__name__, \
                self.trajectories)

    ### PUBLIC ATTRIBUTES ###

    @property
    def is_normalized(self):
        return self.min == 0 and self.max == 1

    @property
    def max(self):
        return self._max

    @property
    def min(self):
        return self._min
    
    @property
    def trajectories(self):
        return self._trajectories

    ### PUBLIC METHODS ###

    def get_ys_at_x(self, x):
        return tuple([t.get_y_at_x(x) for t in self.trajectories])

    def scale(self, min, max):
        trajectories = []
        for trajectory in self.trajectories:
            trajectories.append(\
                scale_trajectory(trajectory, self.min, self.max, min, max))
        return TrajectorySet(trajectories)
