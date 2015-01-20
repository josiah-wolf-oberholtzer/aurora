from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_BurstFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = BurstFabricLoom(ensemble, 10)
