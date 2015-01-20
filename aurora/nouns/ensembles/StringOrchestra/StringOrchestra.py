from aurora.nouns.ensembles.Ensemble import Ensemble
from aurora.nouns.performers import Violinist, Violist, Cellist, Contrabassist


class StringOrchestra(Ensemble):

    def __init__(self):
        violin_01 =     Violinist('Violin 01')
        violin_02 =     Violinist('Violin 02')
        violin_03 =     Violinist('Violin 03')
        violin_04 =     Violinist('Violin 04')
        violin_05 =     Violinist('Violin 05')
        violin_06 =     Violinist('Violin 06')

        violin_07 =     Violinist('Violin 07')
        violin_08 =     Violinist('Violin 08')
        violin_09 =     Violinist('Violin 09')
        violin_10 =     Violinist('Violin 10')
        violin_11 =     Violinist('Violin 11')
    	violin_12 =     Violinist('Violin 12')

        viola_01 =      Violist('Viola 01')
        viola_02 =      Violist('Viola 02')
        viola_03 =      Violist('Viola 03')
        viola_04 =      Violist('Viola 04')

        cello_01 =      Cellist('Cello 01')
        cello_02 =      Cellist('Cello 02')
        cello_03 =      Cellist('Cello 03')
        cello_04 =      Cellist('Cello 04')

        contrabass_01 = Contrabassist('Contrabass 01')
        contrabass_02 = Contrabassist('Contrabass 02')

        Ensemble.__init__(self, [
            violin_01, violin_02, violin_03, violin_04, violin_05, violin_06,
            violin_07, violin_08, violin_09, violin_10, violin_11, violin_12,
            viola_01, viola_02, viola_03, viola_04,
            cello_01, cello_02, cello_03, cello_04,
            contrabass_01, contrabass_02,
        ]) 

    ### PRIVATE ATTRIBUTES ###

    def _mod_x_subensembles(self, mod):
        ensembles = []
        for i in xrange(mod):
            ensembles.append(Ensemble(filter(lambda x: self.performers.index(x) % mod == i, self)))
        return tuple(ensembles)

    ### PUBLIC ATTRIBUTES ###

    @property
    def mod_2_subensembles(self):
        return self._mod_x_subensembles(2)

    @property
    def mod_3_subensembles(self):
        return self._mod_x_subensembles(3)

    @property
    def mod_4_subensembles(self):
        return self._mod_x_subensembles(4)

    @property
    def mod_5_subensembles(self):
        return self._mod_x_subensembles(5)

    @property
    def violin_ones(self):
        return Ensemble(self[:6])

    @property
    def violin_twos(self):
        return Ensemble(self[6:12])

    @property
    def violas(self):
        return Ensemble(filter(lambda x: isinstance(x, Violist), self))

    @property
    def cellos(self):
        return Ensemble(filter(lambda x: isinstance(x, Cellist), self))

    @property
    def basses(self):
        return Ensemble(filter(lambda x: isinstance(x, Contrabassist), self))
