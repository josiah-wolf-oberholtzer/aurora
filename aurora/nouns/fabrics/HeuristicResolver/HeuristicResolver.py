from abjad.tools import durationtools
from abjad.tools import timespantools
from aurora.nouns.fabrics.Resolver import Resolver


class HeuristicResolver(Resolver):

    __slots__ = ('_ensemble', '_op', '_seed',)

    def __init__(self, ensemble, op = 'or', seed = 0):
        Resolver.__init__(self, ensemble, seed)
        assert op in ['or', 'xor']
        object.__setattr__(self, '_op', op)

    def _exec(self, inventory):
        n = len(self.ensemble)
        xinventorys = inventory.explode(inventory_count=n)
        for i, xinventory in enumerate(xinventorys):
            xinventorys[i] = xinventory.round_offsets(
                durationtools.Duration(1, 32))
            if self.op == 'or':
                xinventorys[i] = xinventorys[i].fuse_overlapping_intervals()
            elif self.op == 'xor':
                xinventorys[i] = xinventorys[i].compute_logical_xor()
        return xinventorys    

    ### PUBLIC ATTRIBUTES ###

    @property
    def op(self):
        return self._op
