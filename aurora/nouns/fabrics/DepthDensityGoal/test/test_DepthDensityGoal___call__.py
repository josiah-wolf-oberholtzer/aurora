from abjad import Duration
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics import DepthDensityGoal
from aurora.nouns.fabrics import PayloadedTimespan


def test_DepthDensityGoal___call___01():
    dg = DepthDensityGoal(2)
    inventory = TimespanInventory([PayloadedTimespan(0, 1)])
    assert not dg(inventory)


def test_DepthDensityGoal___call___02():
    dg = DepthDensityGoal(1)
    inventory = TimespanInventory([PayloadedTimespan(0, 1)])
    assert dg(inventory)
