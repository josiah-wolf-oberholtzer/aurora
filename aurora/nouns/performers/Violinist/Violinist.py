from aurora.nouns.instruments import Violin
from aurora.nouns.performers.Performer import Performer


class Violinist(Performer):
    '''Model of a violinist as a performer.'''

    def __init__(self, name, instruments = []):
        primary = [Violin()]
        primary.extend(instruments)
        Performer.__init__(self, name, primary)
