import random
from abjad.tools import durationtools
from abjad.tools import timespantools
from aurora.nouns.fabrics.Resolver import Resolver


class HeuristicShufflingResolver(Resolver):

    __slots__ = ('_ensemble', '_op', '_seed',)

    def __init__(self, ensemble, op = 'or', seed = 0):
        Resolver.__init__(self, ensemble, seed)
        assert op in ['or', 'xor']
        object.__setattr__(self, '_op', op)

    def _exec(self, inventory):
        n = len(self.ensemble)
        precount = len(inventory)
        xinventorys = list(inventory.explode(inventory_count=n))
        random.shuffle(xinventorys)
        for i, xinventory in enumerate(xinventorys):
            xinventorys[i] = xinventory.round_offsets(
                durationtools.Duration(1, 32))
            if self.op == 'or':
                xinventorys[i] = xinventorys[i].compute_logical_or()
            elif self.op == 'xor':
                xinventorys[i] = xinventorys[i].compute_logical_xor()
        postcount = sum([len(xinventory) for xinventory in xinventorys])
        print '\t\tb: %d, a: %d' % (precount, postcount)
        return xinventorys

    ### PUBLIC ATTRIBUTES ###

    @property
    def op(self):
        return self._op
