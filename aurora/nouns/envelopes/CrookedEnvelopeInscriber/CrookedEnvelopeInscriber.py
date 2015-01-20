import random
from aurora.nouns.envelopes.EnvelopeInscriber import EnvelopeInscriber


class CrookedEnvelopeInscriber(EnvelopeInscriber):

    def _exec(self, fabric, start_offset, stop_offset):
        from aurora.nouns import envelopes
        envelopes = [
            envelopes.DelNienteEnvelope('mf'),
            envelopes.FortePianoAlNienteEnvelope(),
            envelopes.FortePianoSwellEnvelope('mf'),
            envelpes.SforzandoAlNienteEnvelope(),
            envelopes.SwellEnvelope('f'),
        ]
        for performer, inventory in fabric.iteritems():
            for timespan in inventory:
                timespan['envelope'] = random.choice(envelopes)
