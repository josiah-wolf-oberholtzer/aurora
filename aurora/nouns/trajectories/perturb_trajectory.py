from random import random
from aurora.nouns.trajectories.Point import Point
from aurora.nouns.trajectories.Trajectory import Trajectory


def perturb_trajectory(trajectory, perturbation = 1, seed = 0):
    assert isinstance(trajectory, Trajectory)
    assert isinstance(perturbation, (float, int)) and 0. < perturbation
    
    points = []

    for i, point in enumerate(trajectory.points):
        r = ((random() * 2.) - 1.) * float(perturbation)
        points.append(Point(point.x, point.y + r))

    return Trajectory(points)

