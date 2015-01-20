from aurora.nouns.instruments import Contrabass
from aurora.nouns.performers.Performer import Performer


class Contrabassist(Performer):
    '''Model of a contrabassist as a performer.'''

    def __init__(self, name, instruments = []):
        primary = [Contrabass()]
        primary.extend(instruments)
        Performer.__init__(self, name, primary)
