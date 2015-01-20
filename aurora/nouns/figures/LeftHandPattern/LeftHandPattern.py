from abjad import *
from aurora.nouns.figures.LeftHand import LeftHand


class LeftHandPattern(LeftHand):

    def __call__(self, figure, instrument):
        offset, duration = figure.start_offset, figure.duration
        pitches, strings, touch = figure['pitches'], figure['strings'], figure['touch']
        container = Container(scoretools.make_notes(pitches, [Duration(1, 32)]))
        for note in container:
            if note.written_pitch != instrument.strings[strings[0]] and str(touch) != 'default':
                override(note).note_head.style = str(touch)
            elif note.written_pitch == instrument.strings[strings[0]]:
                indicatortools.Articulation('open')(note)
        if 1 < len(container):
            attach(spannertools.MultipartBeam(), container)
        assert container.get_duration() == figure.duration
        return container
