import random
from aurora.nouns.fabrics.Generator import Generator


class NonReferencingGenerator(Generator):

    def _exec(self):
        from aurora.nouns import fabrics
        while True:
            m = random.choice(self.duration_domain)
            o = random.choice(self.offset_domain)
            yield fabrics.PayloadedTimespan(o, o + m)
