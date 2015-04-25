from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_MirageFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = MirageFabricLoom(ensemble, 10)
