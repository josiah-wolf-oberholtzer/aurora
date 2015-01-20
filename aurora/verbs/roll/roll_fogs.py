#! /usr/bin/env python

import sys
import random
from abjad import Duration


def roll_fogs(count):

    results = []

    fabric_looms = [
        'FogFabricLoom',
        ]
    figure_inscribers = [
        'ShimmeringFigureInscriber',
        'WailingFigureInscriber',
        ]
    pitch_inscribers = [
        'MockPitchInscriber',
        ]
    color_inscribers = [
        'MockColorInscriber',
        ]
    envelope_inscribers = [
        'FlatEnvelopeInscriber',        
        'SmoothEnvelopeInscriber',
        ]

    durations = range(12, 24)
    fabric_positions = range(184 * 3)
    random.shuffle(fabric_positions)

    for i in range(count):
        result = {}

        fabric_position = Duration(fabric_positions[i], 4)
        fabric_duration = random.choice(durations) * Duration(3, 4)

        result['fabric_loom'] = random.choice(fabric_looms)
        result['fabric_duration'] = repr(fabric_duration)
        result['fabric_position'] = repr(fabric_position)
        result['fabric_seed'] = random.randint(0, 100)
        result['ensemble_size'] = random.randint(3, 12)
        result['ensemble_seed'] = random.randint(0, 100)
        result['figure_inscriber'] = random.choice(figure_inscribers)
        result['figure_seed'] = random.randint(0, 100)
        result['pitch_inscriber'] = random.choice(pitch_inscribers)
        result['pitch_seed'] = random.randint(0, 100)
        result['color_inscriber'] = random.choice(color_inscribers)
        result['color_seed'] = random.randint(0, 100)
        result['envelope_inscriber'] = random.choice(envelope_inscribers)
        result['envelope_seed'] = random.randint(0, 100)
        result['start_offset'] = int(fabric_position / Duration(3, 4))
        result['end'] = int((fabric_position + fabric_duration) / Duration(3, 4))

        results.append(result)
    results.sort(key = lambda x: eval(x['fabric_position']))

    print 'from abjad import Duration'
    print 'from aurora.nouns.aggregates import *'
    print 'from aurora.nouns.colors import *'
    print 'from aurora.nouns.envelopes import *'
    print 'from aurora.nouns.looms import *'
    print 'from aurora.nouns.figures import *'
    print 'from aurora.nouns.ensembles import *'
    print 'from aurora.nouns.pitches import *'
    print ''
    print ''
    print 'def make_fogs():'
    print ''
    print '#\t%d' % len(results)
    print ''
    print '\taggregates = ['

    agg_template = '\t\t[Aggregate(*[\n' \
        + '\t\t\t%(fabric_loom)s(RandomEnsemble(%(ensemble_size)d, %(ensemble_seed)d), ' \
        + '%(fabric_duration)s, seed = %(fabric_seed)d),\n' \
        + '\t\t\t%(figure_inscriber)s(seed = %(figure_seed)d),\n' \
        + '\t\t\t%(pitch_inscriber)s(seed = %(pitch_seed)d),\n' \
        + '\t\t\t%(color_inscriber)s(seed = %(color_seed)d),\n' \
        + '\t\t\t%(envelope_inscriber)s(seed = %(envelope_seed)d),\n' \
        + '\t\t\t]), %(fabric_position)s], # from %(start_offset)d to %(end)d\n'

    for result in results:
        print agg_template % result

    print '\t]'
    print ''
    print '\treturn aggregates'
    print ''

if __name__ == '__main__':
    arg = int(sys.argv[1])
    roll_fogs(arg)
