import py.test
from aurora.nouns.fabrics import *
from aurora.nouns.fabrics.Generator import Generator


def testGenerator___init___01():
    m = Domain(1, 10, [1])
    o = Domain(0, 100, [2])
    mg = MagnitudeGoal(100)
    d = Generator(m, o, [mg])


def testGenerator___init___02():
    '''Magnitude values must be greater than 0.'''
    m = Domain(1, 10, [1])
    o = Domain(0, 100, [2])
    mg = MagnitudeGoal(100)
    py.test.raises(AssertionError, "d = Generator(o, m, [mg])")


def testGenerator___init___03():
    '''Generator must have at least one Goal.'''
    m = Domain(1, 10, [1])
    o = Domain(0, 100, [2])
    mg = MagnitudeGoal(100)
    py.test.raises(AssertionError, "d = Generator(o, m, [])")


def testGenerator___init___04():
    '''Only Domains instances allowed for duration- and offset_domain values.'''
    m = Domain(1, 10, [1])
    o = Domain(0, 100, [2])
    mg = MagnitudeGoal(100)
    py.test.raises(AssertionError, "d = Generator([1, 2], m, [mg])")
