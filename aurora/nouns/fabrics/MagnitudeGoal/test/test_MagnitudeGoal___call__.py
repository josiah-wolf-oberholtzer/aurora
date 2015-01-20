from abjad import Duration
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns import fabrics


def test_MagnitudeGoal___call___01():
    mg = fabrics.MagnitudeGoal(100)
    inventory = TimespanInventory([
        fabrics.PayloadedTimespan(0, 1),
        ])
    assert not mg(inventory)


def test_MagnitudeGoal___call___02():
    mg = fabrics.MagnitudeGoal(100)
    inventory = TimespanInventory([
        fabrics.PayloadedTimespan(0, 100),
        ])
    assert mg(inventory)


def test_MagnitudeGoal___call___03():
    mg = fabrics.MagnitudeGoal(100)
    inventory = TimespanInventory([
        fabrics.PayloadedTimespan(0, 1000),
        ])
    assert mg(inventory)
