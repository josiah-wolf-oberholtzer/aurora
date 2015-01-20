from aurora.nouns.trajectories.Point import Point
from aurora.nouns.trajectories.Trajectory import Trajectory
from aurora.nouns.trajectories.resample_trajectory import resample_trajectory


def smooth_trajectory(trajectory, smoothing_factor, resampling_factor = None):
    assert isinstance(trajectory, Trajectory)
    assert isinstance(smoothing_factor, int) and 0 <= smoothing_factor
    
    if resampling_factor is not None:
        resampled = resample_trajectory(trajectory, resampling_factor)
    else:
        resampled = trajectory

    points = []

    for i, point in enumerate(resampled.points):
        indices = range(i - smoothing_factor, i + smoothing_factor + 1)
        for j, index in enumerate(indices):
            if index < 0:
                indices[j] = 0
            elif len(resampled.points) <= index:
                indices[j] = len(resampled.points) - 1
        subset = [resampled.points[j] for j in indices]
        new_y = sum([p.y for p in subset]) / float(len(subset))
        points.append(Point(point.x, new_y))

    return Trajectory(points)
