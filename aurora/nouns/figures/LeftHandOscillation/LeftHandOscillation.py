from abjad import *
from aurora.nouns.figures.LeftHand import LeftHand


class LeftHandOscillation(LeftHand):

    def __call__(self, figure, instrument):
        pitches, strings, touch = \
            figure['pitches'], figure['strings'], figure['touch']
        ticks = int(figure.duration / Duration(1, 32))
        assert 1 < ticks

        gliss_voice = Voice()
        beam_voice = Voice()
        gliss_voice.append(Note(pitches[0], Duration(1, 32)))
        beam_voice.append(Note(pitches[0], Duration(1, 32)))
        if 2 < ticks:
            gliss_voice.extend(scoretools.Skip(Duration(1, 32)) * (ticks - 2))
            beam_voice.extend(Rest(Duration(1, 32)) * (ticks - 2))
        gliss_voice.append(Note(pitches[1], Duration(1, 32)))
        beam_voice.append(Note(pitches[1], Duration(1, 32)))

        override(beam_voice).accidental.stencil = False
        override(beam_voice).note_head.transparent = True
        override(beam_voice).rest.transparent = True
        override(gliss_voice).glissando.style = 'zigzag'
        if str(touch) != 'default':
            override(gliss_voice).note_head.style = str(touch)
        override(gliss_voice).beam.stencil = False
        override(gliss_voice).flag.stencil = False
        override(gliss_voice).dots.stencil = False
        override(gliss_voice).stem.stencil = False

        attach(spannertools.Beam(), beam_voice)
        attach(spannertools.Glissando(), gliss_voice)
        container = Container([beam_voice, gliss_voice])
        container.is_simultaneous = True
        assert container.get_duration() == figure.duration

        # check for accidentals
        if pitches[1].accidental.abbreviation:
            override(gliss_voice).glissando.bound_details = \
                schemetools.SchemeVector(*[
                    schemetools.SchemeVector(*[
                        'right',
                        schemetools.SchemePair('attach-dir', 0),
                        schemetools.SchemePair('padding', 3),
                        ]),
                    schemetools.SchemeVector(*[
                        'left',
                        schemetools.SchemePair('attach-dir', 0),
                        schemetools.SchemePair('padding', 1.5),
                        ])
                    ])
            override(gliss_voice).glissando.minimum_length = 6

        return container
