import py.test
from abjad import Duration
from aurora.nouns.fabrics import Domain


def test_Domain___getslice___01():
    d = Domain(0, 10, [2, Duration(9, 5)])
    assert d[3:5] == (Duration(18, 5), 4)

def test_Domain___getslice___02():
    d = Domain(0, 10, [2, Duration(9, 5)])
    assert d[:2] == (0, Duration(9, 5))

def test_Domain___getslice___03():
    d = Domain(0, 10, [2, Duration(9, 5)])
    assert d[-3:] == (8, 9, 10)

def test_Domain___getslice___04():
    d = Domain(0, 10, [2, Duration(9, 5)])
    assert d[:] == (0, Duration(9, 5), 2, Duration(18, 5), 4, Duration(27, 5), 6, Duration(36, 5), 8, 9, 10)
