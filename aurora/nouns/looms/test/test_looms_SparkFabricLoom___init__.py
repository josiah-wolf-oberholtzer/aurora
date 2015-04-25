from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_SparkFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = SparkFabricLoom(ensemble, 10)
