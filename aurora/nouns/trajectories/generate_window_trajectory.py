import math
from aurora.nouns.trajectories.Point import Point
from aurora.nouns.trajectories.Trajectory import Trajectory


def generate_window_trajectory(type, segments):
    
    if type == 'cos':
        func = lambda x: math.cos((2 * math.pi * x) - math.pi)
    else:
        raise ValueError

    points = []
    for i in range(segments + 1):
        x = i * (1. / float(segments))
        points.append(Point(x, func(x)))

    return Trajectory(points).normalize()
