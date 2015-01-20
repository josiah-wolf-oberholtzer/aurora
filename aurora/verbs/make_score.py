from abjad import Duration
from aurora.nouns.aggregates import Aggregate
from aurora.nouns import colors
from aurora.nouns import envelopes
from aurora.nouns import looms
from aurora.nouns import figures
from aurora.nouns import ensembles
from aurora.nouns import pitches
from aurora.nouns.timelines import Timeline
from aurora.nouns.transcribers import Transcriber


def make_score():
    from aurora.verbs.aggregates import *

    aggregates = [
        [Aggregate(*[
            looms.BurstFabricLoom(
                ensembles.StringOrchestra(),
                Duration(12),
                seed=62,
                ),
            figures.WarblingFigureInscriber(
                seed=54,
                ),
            pitches.MockPitchInscriber(
                seed=78,
                ),
            colors.MockColorInscriber(
                seed=39,
                ),
            envelopes.PrickingEnvelopeInscriber(
                seed=59,
                ),
            ]),
            Duration(0)
            ]
        ]

#    sparks = make_sparks()
#    bursts = make_bursts()
#    dust = make_dust()
#    mirages = make_mirages()
#    fogs = make_fogs()

#    aggregates.extend(sparks)
#    aggregates.extend(bursts)
#    aggregates.extend(mirages[3:])
#    aggregates.extend(dust[:6])
#    aggregates.extend(fogs[6:])
#    aggregates.extend(dust[6:])
#    aggregates.extend(mirages[:3])
#    aggregates.extend(fogs[:6])

    fabric = Timeline(*aggregates)()
    lily = Transcriber()(fabric)

    return lily
