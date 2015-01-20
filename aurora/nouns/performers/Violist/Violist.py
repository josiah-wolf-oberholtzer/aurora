from aurora.nouns.instruments import Viola
from aurora.nouns.performers.Performer import Performer


class Violist(Performer):
    '''Model of a violist as a performer.'''
    
    def __init__(self, name, instruments = []):
        primary = [Viola()]
        primary.extend(instruments)
        Performer.__init__(self, name, primary)
