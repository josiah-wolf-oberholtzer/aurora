from abjad.tools.abctools import AbjadObject


class Point(AbjadObject):
    
    __slots__ = ('_x', '_y')

    def __init__(self, x, y):
        object.__setattr__(self, '_x', float(x))
        object.__setattr__(self, '_y', float(y))

    ### OVERLOADS ###

    def __eq__(self, other):
        if type(other) == type(self):
            if other.coords == self.coords:
                return True
        return False

    def __hash__(self):
        return hash(self.coords)

    def __repr__(self):
        return '%s(%s, %s)' % (self.__class__.__name__, self._x, self._y)

    ### PUBLIC ATTRIBUTES ###

    @property
    def coords(self):
        return self.x, self.y

    @property
    def x(self):
        return self._x

    @property
    def y(self):
        return self._y
