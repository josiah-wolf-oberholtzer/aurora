import random
from aurora.nouns.trajectories.Point import Point
from aurora.nouns.trajectories.Trajectory import Trajectory
from aurora.nouns.trajectories.scale_trajectory import scale_trajectory


def generate_random_trajectory(segments, seed = 0):

    random.seed(seed)
    points = []
    for i in range(segments + 1):
        x = i * (1. / float(segments))
        y = random.random()
        points.append(Point(x, y))
    return Trajectory(points).normalize()
