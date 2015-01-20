from abjad import Duration
from aurora.nouns.fabrics.Goal import Goal


class DepthDensityGoal(Goal):

    def __init__(self, goal):
        assert isinstance(goal, (int, Duration)) and 0 < goal
        Goal.__init__(self, goal)

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        if inventory:
            inventory_sum = Duration(sum([x.duration for x in inventory]))
            inventory_density = inventory_sum / inventory.duration
            if self.goal <= inventory_density:
                return True
        return False
