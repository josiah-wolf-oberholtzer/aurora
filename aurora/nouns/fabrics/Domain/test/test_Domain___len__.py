import py.test
from abjad import Duration
from aurora.nouns.fabrics import Domain


def test_Domain___len___01():
    d = Domain(0, 10, [1])
    assert len(d) == 11
