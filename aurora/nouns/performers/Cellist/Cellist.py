from aurora.nouns.instruments import Cello
from aurora.nouns.performers.Performer import Performer


class Cellist(Performer):
    '''Model of a cellist as a performer.'''

    def __init__(self, name, instruments = []):
        primary = [Cello()]
        primary.extend(instruments)
        Performer.__init__(self, name, primary)
