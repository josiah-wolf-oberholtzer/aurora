import py.test
from aurora.nouns.fabrics.Goal import Goal


def testGoal___repr___01():
    g = Goal(3)
    assert repr(g) == "Goal(3)"
