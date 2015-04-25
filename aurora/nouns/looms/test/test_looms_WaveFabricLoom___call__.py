from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_WaveFabricLoom___call___01():
    ensemble = StringOrchestra()
    loom = WaveFabricLoom(ensemble, 10)
    fabric = loom.fabric
    assert isinstance(fabric, dict)
    assert all([performer in fabric for performer in ensemble])
    assert all([isinstance(val, TimespanInventory) for val in fabric.values()])
