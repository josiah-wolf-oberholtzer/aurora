import py.test
from abjad import Duration
from aurora.nouns.fabrics import Domain


def test_Domain___init___01():
    d = Domain(0, 10, [2, Duration(9, 5)])


def test_Domain___init___02():
    d = Domain(Duration(1, 5), Duration(13, 3), [1])


def test_Domain___init___03():
    py.test.raises(AssertionError, "d = Domain(0, 10, [])")


def test_Domain___init___04():
    py.test.raises(AssertionError, "d = Domain(0, 10, [-1])")


def test_Domain___init___05():
    py.test.raises(AssertionError, "d = Domain(10, 0, [1])")


def test_Domain___init___06():
    d = Domain([2, Duration(9, 5)])
