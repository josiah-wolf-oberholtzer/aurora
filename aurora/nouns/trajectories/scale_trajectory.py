from aurora.nouns.trajectories.Point import Point
from aurora.nouns.trajectories.Trajectory import Trajectory
from aurora.utils.mathutils import scale_value


def scale_trajectory(trajectory, minin, maxin, minout, maxout):
    assert isinstance(trajectory, Trajectory)

    points = []
    for point in trajectory:
        new_y = scale_value(point.y, minin, maxin, minout, maxout)
        points.append(Point(point.x, new_y))

    return Trajectory(points)
