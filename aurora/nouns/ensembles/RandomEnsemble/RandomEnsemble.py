import random
from aurora.nouns.ensembles.Ensemble import Ensemble
from aurora.nouns.ensembles.StringOrchestra import StringOrchestra


class RandomEnsemble(Ensemble):

    def __init__(self, size, seed):

        so = StringOrchestra()
        assert 0 < size <= len(so)

        random.seed(seed)
        performers = list(so.performers)
        random.shuffle(performers)

        Ensemble.__init__(self, performers[:size])
