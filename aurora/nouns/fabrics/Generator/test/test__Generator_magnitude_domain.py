from aurora.nouns.fabrics import *      
from aurora.nouns.fabrics.Generator import Generator


def testGenerator_duration_domain_01():
    m = Domain(1, 10, [1])
    o = Domain(0, 100, [2])
    mg = MagnitudeGoal(100)
    g = Generator(m, o, [mg])
    assert g.duration_domain == m
