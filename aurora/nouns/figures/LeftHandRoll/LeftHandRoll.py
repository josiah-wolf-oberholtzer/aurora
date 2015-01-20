from abjad import *
from aurora.nouns.figures.LeftHand import LeftHand


class LeftHandRoll(LeftHand):

    def __call__(self, figure, instrument):
        offset, duration = figure.start_offset, figure.duration
        pitches, strings, touch = figure['pitches'], figure['strings'], figure['touch']
        tuplet = tuplettools.FixedDurationTuplet(duration,
            scoretools.make_notes(pitches, Duration(1, 32)))
        for i, note in enumerate(tuplet):
            ### indicate open strings
            if note.written_pitch != instrument.strings[strings[i]] and str(touch) != 'default':
                override(note).note_head.style = str(touch)
            elif note.written_pitch == instrument.strings[strings[i]]:
                indicatortools.Articulation('open')(note)
        attach(spannertools.MultipartBeam(), tuplet)
        if figure['strings'] == [1, 2, 3, 4]:
            text = r'\fontsize #-3.0 (I-II-III-IV)'
        else:
            text = r'\fontsize #-3.0 (IV-III-II-I)'
        attach(markuptools.Markup(text, 'up'), tuplet[0])
        override(tuplet).text_script.staff_padding = 6
        assert tuplet.duration == figure.duration
        return tuplet
