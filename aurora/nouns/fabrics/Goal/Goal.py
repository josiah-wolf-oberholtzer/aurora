from abjad.tools.abctools import AbjadObject


class Goal(AbjadObject):
    '''A Goal encapsulates the logic for testing whether an TimespanInventory
    expresses a certain property.'''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_goal',
        )

    ### INITIALIZER ###

    def __init__(self, goal):
        self._goal = goal

    ### SPECIAL METHODS ###

    def __call__(self, intervals):
        from aurora.nouns import fabrics
        assert all(isinstance(x, fabrics.PayloadedTimespan)
            for x in intervals)
        return bool(self._exec(intervals))

    def __eq__(self, other):
        if type(other) == type(self) \
            and other.goal == self.goal:
            return True
        return False

    def __hash__(self):
        return hash([self.__class__.__name__, self.goal])

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return str(self.goal)

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        raise Exception('Not implemented in %s.' % self.__class__.__name__)

    ### PUBLIC ATTRIBUTES ###

    @property
    def goal(self):
        return self._goal
