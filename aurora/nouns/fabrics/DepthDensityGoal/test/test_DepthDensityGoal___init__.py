import py.test
from abjad import Duration
from aurora.nouns.fabrics import DepthDensityGoal


def test_DepthDensityGoal___init___01():
    dg = DepthDensityGoal(1)


def test_DepthDensityGoal___init___02():
    dg = DepthDensityGoal(Duration(2, 5))


def test_DepthDensityGoal___init___03():
    py.test.raises(AssertionError, "dg = DepthDensityGoal(0)")


def test_DepthDensityGoal___init___04():
    py.test.raises(AssertionError, "dg = DepthDensityGoal(Duration(-1, 3))")
