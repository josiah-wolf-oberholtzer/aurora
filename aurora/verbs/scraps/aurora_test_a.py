from abjad import Duration, show
from aurora.nouns.aggregates import *
from aurora.nouns.colors import *
from aurora.nouns.looms import *
from aurora.nouns.figures import *
from aurora.nouns.ensembles import *
from aurora.nouns.pitches import *
from aurora.nouns.timelines import *
from aurora.nouns.transcribers import *

meter = Duration(3, 4)

orchestra = StringOrchestra()

agg_a = Aggregate(BurstFabricLoom(orchestra, 5), \
    WarblingFigureInscriber(), \
    MockPitchInscriber(), \
    MockColorInscriber())

agg_b = Aggregate(BurstFabricLoom(orchestra, 10, seed = 1), \
    WarblingFigureInscriber(seed = 1), \
    MockPitchInscriber(seed = 1), \
    MockColorInscriber(seed = 1))

agg_c = Aggregate(BurstFabricLoom(orchestra, 8, seed = 2), \
    WarblingFigureInscriber(), \
    MockPitchInscriber(), \
    MockColorInscriber(seed = 1))

fabric = Timeline(*[
    [agg_a, meter * 0],
    [agg_b, meter * 5],
    [agg_c, meter * 12]
])()

score = Transcriber()(fabric)

show(score)
