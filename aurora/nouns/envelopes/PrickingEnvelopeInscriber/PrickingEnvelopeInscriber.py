import random
from aurora.nouns.envelopes.EnvelopeInscriber import EnvelopeInscriber
from aurora.nouns.envelopes import *


class PrickingEnvelopeInscriber(EnvelopeInscriber):

    def _exec(self, fabric, start_offset, stop_offset):
        envelopes = [
            FortePianoSwellEnvelope(),
            SwellEnvelope(),
#            FortePianoAlNienteEnvelope(),
#            SforzandoAlNienteEnvelope(),
        ]
        for performer, inventory in fabric.iteritems():
            for timespan in inventory:
                timespan['envelope'] = random.choice(envelopes)
