from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_ChantFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = ChantFabricLoom(ensemble, 10)
