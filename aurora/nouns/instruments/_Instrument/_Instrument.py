from abjad.tools.abctools import AbjadObject


class _Instrument(AbjadObject):
    '''Abstract parent class of all instruments.
    An instrument is a collection of orchestrational information,
    such as range, but also a registration of technical capacity
    (which is to say, what techniques the instrument can produce).
    '''

    def __init__(self):
        pass

    ### SPECIAL METHODS ###

    def __eq__(self, other):
        if type(other) == type(self):
            return True
        return False

    def __hash__(self):
        return hash(self.__class__.__name__)

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ' '
