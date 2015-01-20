import random
from aurora.nouns.fabrics.Generator import Generator


class BackReferencingGenerator(Generator):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_duration_domain',
        '_goals',
        '_inventory',
        '_offset_domain',
        '_reference',
        '_seed',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        duration_domain,
        offset_domain,
        goals,
        reference='start_offset',
        seed=0,
        ):
        Generator.__init__(self, duration_domain, offset_domain, goals, seed)
        assert reference in ('start_offset', 'stop_offset')
        object.__setattr__(self, '_reference', reference)

    ### PRIVATE METHODS ###

    def _exec(self):
        from aurora.nouns import fabrics
        m = random.choice(self.duration_domain)
        i = fabrics.PayloadedTimespan(0, m)
        yield i
        if self.reference == 'start_offset':
            while True:
                m = random.choice(self.duration_domain)
                o = random.choice(self.offset_domain)
                i = fabrics.PayloadedTimespan(
                    start_offset=i.start_offset + o,
                    stop_offset=i.start_offset + o + m,
                    )
                yield i
        elif self.reference == 'stop_offset':
            while True:
                m = random.choice(self.duration_domain)
                o = random.choice(self.offset_domain)
                i = fabrics.PayloadedTimespan(
                    start_offset=i.stop_offset + o,
                    stop_offset=i.stop_offset + o + m,
                    )
                yield i

    ### PUBLIC ATTRIBUTES ###

    @property
    def reference(self):
        return self._reference
