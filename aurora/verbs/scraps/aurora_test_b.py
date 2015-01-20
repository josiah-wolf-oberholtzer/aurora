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

loom = FogFabricLoom(orchestra, meter * 10)

agg_a = Aggregate(loom, \
    ChirpingFigureInscriber(), \
    MockPitchInscriber(), \
    MockColorInscriber())

agg_b = Aggregate(loom, \
    ShimmeringFigureInscriber(), \
    MockPitchInscriber(), \
    MockColorInscriber())

agg_c = Aggregate(loom, \
    TremblingFigureInscriber(), \
    MockPitchInscriber(), \
    MockColorInscriber())

agg_d = Aggregate(loom, \
    WailingFigureInscriber(), \
    MockPitchInscriber(), \
    MockColorInscriber())

agg_e = Aggregate(loom, \
    WarblingFigureInscriber(), \
    MockPitchInscriber(), \
    MockColorInscriber())

agg_f = Aggregate(loom, \
    WhisperingFigureInscriber(), \
    MockPitchInscriber(), \
    MockColorInscriber())

fabric = Timeline(*[
    [agg_a, meter * 0],
    [agg_b, meter * 10],
    [agg_c, meter * 20],
    [agg_d, meter * 30],
    [agg_e, meter * 40],
    [agg_f, meter * 50],
])()

lily = Transcriber()(fabric)

show(lily)
