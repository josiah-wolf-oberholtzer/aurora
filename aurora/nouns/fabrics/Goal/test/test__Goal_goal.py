import py.test
from aurora.nouns.fabrics.Goal import Goal


def testGoal_goal_01():
    g = Goal(3)
    assert g.goal == 3
