from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_EchoFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = EchoFabricLoom(ensemble, 10)
