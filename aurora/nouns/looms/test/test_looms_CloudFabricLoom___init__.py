from aurora.nouns.ensembles import *
from aurora.nouns.looms import *


def test_looms_CloudFabricLoom___init___01():
    ensemble = StringOrchestra()
    loom = CloudFabricLoom(ensemble, 10)
