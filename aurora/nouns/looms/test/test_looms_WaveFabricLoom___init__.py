from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_WaveFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = WaveFabricLoom(ensemble, 10)
