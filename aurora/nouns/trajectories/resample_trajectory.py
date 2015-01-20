from aurora.nouns.trajectories.Point import Point
from aurora.nouns.trajectories.Trajectory import Trajectory


def resample_trajectory(trajectory, segments):
    assert isinstance(trajectory, Trajectory)
    assert isinstance(segments, int) and 0 < segments

    points = []
    for i in range(segments + 1):
        x = i * (1. / float(segments))
        points.append(Point(x, trajectory.get_y_at_x(x)))

    return Trajectory(points)

