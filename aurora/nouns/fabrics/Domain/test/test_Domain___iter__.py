import py.test
from abjad import Duration
from aurora.nouns.fabrics import Domain


def test_Domain___iter___01():
    d = Domain(0, 10, [1])
    c = 0
    for x in d:
        assert x == c
        c += 1
