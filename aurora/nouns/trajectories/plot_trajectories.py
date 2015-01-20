from collections import Iterable
from aurora.nouns.trajectories.Trajectory import Trajectory
from aurora.utils.listutils import unzip_lists


def plot_trajectories(trajectories):
    import matplotlib.pyplot as plt

    assert isinstance(trajectories, (Trajectory, Iterable))
    if isinstance(trajectories, Trajectory):
        trajectories = [trajectories]
    if isinstance(trajectories, Iterable):
        assert len(trajectories) and all([isinstance(x, Trajectory) for x in trajectories])

    fig = plt.figure()
    subplot = fig.add_subplot(111)        

    for trajectory in trajectories:
        coords = [p.coords for p in trajectory]
        unzipped = unzip_lists(coords)
        lines = subplot.plot(unzipped[0], unzipped[1])

    return plt, fig
