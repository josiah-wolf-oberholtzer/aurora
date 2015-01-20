import py.test
from abjad import Duration
from aurora.nouns.fabrics import Domain


def test_Domain___repr___01():
    d = Domain(10, 100, [Duration(50, 3)])
    assert repr(d) == 'Domain((10, Duration(80, 3), Duration(130, 3), 60, Duration(230, 3), Duration(280, 3)))'
