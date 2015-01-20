from aurora.nouns.primitives import Primitive


class Position(Primitive):

    ### PUBLIC ATTRIBUTES ###

    @property
    def pitch(self):
        return self._pitch
