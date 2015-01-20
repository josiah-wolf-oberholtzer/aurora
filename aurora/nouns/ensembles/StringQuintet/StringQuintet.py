from aurora.nouns.ensembles.Ensemble import Ensemble
from aurora.nouns.performers import Violinist, Violist, Cellist, Contrabassist


class StringQuintet(Ensemble):

    def __init__(self):
        violin_one = Violinist('Violin 1')
        violin_two = Violinist('Violin 2')
        viola = Violist('Viola')
        cello = Cellist('Cello')
        contrabass = Contrabassist('Contrabass')
        Ensemble.__init__(self, [violin_one, violin_two, viola, cello, contrabass])
