from aurora.nouns.colors.Touch import Touch


class HarmonicTouch(Touch):

    ### SPECIAL METHODS ###

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    def __str__(self):
        return 'harmonic'

