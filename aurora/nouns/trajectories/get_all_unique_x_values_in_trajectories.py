from collections import Iterable
from aurora.nouns.trajectories.Trajectory import Trajectory


def get_all_unique_x_values_in_trajectories(trajectories):
    assert isinstance(trajectories, Iterable)
    assert all([isinstance(x, Trajectory) for x in trajectories])

    xs = []
    for trajectory in trajectories:
        for point in trajectory:
            if point.x not in xs:
                xs.append(point.x)

    xs.sort()
    return xs
