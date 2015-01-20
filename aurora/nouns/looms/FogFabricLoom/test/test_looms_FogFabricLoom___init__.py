from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_FogFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = FogFabricLoom(ensemble, 10)
