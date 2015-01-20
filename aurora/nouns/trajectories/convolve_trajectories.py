from collections import Iterable
from aurora.nouns.trajectories.Point import Point
from aurora.nouns.trajectories.Trajectory import Trajectory
from aurora.nouns.trajectories.get_all_unique_x_values_in_trajectories \
    import get_all_unique_x_values_in_trajectories


def convolve_trajectories(one, two):
    assert all([isinstance(x, Trajectory) for x in (one, two)])
    xs = get_all_unique_x_values_in_trajectories([one, two])
    points = []
    for x in xs:
        point = Point(x, one.get_y_at_x(x) * two.get_y_at_x(x))
        points.append(point)
    return Trajectory(points)
