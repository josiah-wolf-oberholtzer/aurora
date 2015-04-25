from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_DustFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = DustFabricLoom(ensemble, 10)
