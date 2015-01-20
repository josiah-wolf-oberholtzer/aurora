from aurora.nouns.fabrics.Goal import Goal


class IntervalCountGoal(Goal):

    def __init__(self, goal):
        assert isinstance(goal, int) and 0 <= goal
        Goal.__init__(self, goal)

    ### PRIVATE METHODS ###

    def _exec(self, inventory):
        if self.goal <= len(inventory):
            return True
        return False 
