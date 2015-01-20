from collections import Iterable
from aurora.nouns.trajectories.Point import Point
from abjad.tools.abctools import AbjadObject
#from aurora.utils.listutils import normalize_lists_columnwise
from aurora.utils.listutils import normalize_list


class Trajectory(AbjadObject):
    '''A `Trajectory` is essentially a break-point function.'''

    __slots__ = ('_max', '_min', '_points',)

    def __init__(self, points):
        assert isinstance(points, Iterable) \
            and len(points) \
            and all([isinstance(x, Point) for x in points])
        if len(set([p.x for p in points])) < len(points):
            raise Exception('Cannot instantiate with non-unique x-values.')
        sorted_points = sorted(points, key = lambda p: p.x)
        xs = normalize_list([point.x for point in sorted_points])
        ys = [point.y for point in sorted_points]
        object.__setattr__(self, '_points', \
            tuple([Point(*p) for p in zip(xs, ys)]))
#        coords = [x.coords for x in points]
#        normed = sorted(normalize_lists_columnwise(coords), key = lambda x: x[0])
#        object.__setattr__(self, '_points', \
#            tuple([Point(*x) for x in normed]))
        object.__setattr__(self, '_min', min(ys))
        object.__setattr__(self, '_max', max(ys))

    ### SPECIAL METHODS ###

    def __eq__(self, other):
        if type(self) == type(other):
            if self.points == other.points:
                return True
        return False

    def __getitem__(self, item):
        return self.points[item]

    def __getslice__(self, start_offset, stop_offset):
        return self.points[start_offset: stop_offset]

    def __hash__(self):
        return hash(self.points)

    def __iter__(self):
        for p in self.points:
            yield p

    def __len__(self):
        return len(self.points)

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return repr(self.points)

    ### PRIVATE METHODS ###

    def _get_y_at_x(self, x):
        if 1 < x:
            x = 1
        elif x < 0:
            x = 0
    
        if len(self) == 1:
            return self.points[0].y
        elif x == 0:
            return self.points[0].y
        elif x == 1:
            return self.points[-1].y

        for i, point in enumerate(self.points):
            if point.x == x:
                return point.y
            elif x < point.x:
                prev = self.points[i - 1]
                next = point
                slope = (next.y - prev.y) / float(next.x - prev.x)
                return ((x - prev.x) * slope) + prev.y

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
    def points(self):
        return self._points

    ### PUBLIC METHODS ###

    def get_y_at_x(self, x):
        return self._get_y_at_x(x)

    def normalize(self):
        from aurora.nouns.trajectories.scale_trajectory import scale_trajectory
        return scale_trajectory(self, self.min, self.max, 0., 1.)

    def scale(self, min, max):
        from aurora.nouns.trajectories.scale_trajectory import scale_trajectory
        return scale_trajectory(self, self.min, self.max, min, max)
