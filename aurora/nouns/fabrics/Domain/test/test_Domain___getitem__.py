import py.test
from abjad import Duration
from aurora.nouns.fabrics import Domain


def test_Domain___getitem___01():
    d = Domain(0, 10, [2, Duration(9, 5)])
    assert d[0] == 0
    assert d[-1] == 10
    assert d[1] == Duration(9, 5)
