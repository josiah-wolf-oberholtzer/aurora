from abjad import Duration
from abjad.tools.timespantools import TimespanInventory
from aurora.nouns.fabrics.Goal import Goal


class MagnitudeGoal(Goal):

    def __init__(self, goal):
        assert isinstance(goal, (int, Duration)) and 0 < goal
        Goal.__init__(self, goal)

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        if self.goal <= inventory.duration:
            return True
        return False
