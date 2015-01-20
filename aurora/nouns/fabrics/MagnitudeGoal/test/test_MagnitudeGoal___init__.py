import py.test
from abjad import Duration
from aurora.nouns.fabrics import MagnitudeGoal


def test_MagnitudeGoal___init___01():
    mg = MagnitudeGoal(1)
    
    
def test_MagnitudeGoal___init___02():
    mg = MagnitudeGoal(Duration(2, 5))

    
def test_MagnitudeGoal___init___03():
    py.test.raises(AssertionError, "mg = MagnitudeGoal(0)")


def test_MagnitudeGoal___init___04():
    py.test.raises(AssertionError, "mg = MagnitudeGoal(Duration(-1, 3))")
