from abjad import *
from aurora.nouns.fabrics import PayloadedTimespan
from aurora.nouns.figures import *
from aurora.nouns.ensembles import StringOrchestra
from aurora.nouns.transcribers.FigureTranscriber import FigureTranscriber
from aurora.nouns.transcribers.SilenceTranscriber import SilenceTranscriber


class ScoreTranscriber(abctools.AbjadObject):

    ### INITIALIZER ###

    def __init__(self):
        self._figure_transcriber = FigureTranscriber()
        self._silence_transcriber = SilenceTranscriber()

    ### SPECIAL METHODS ###

    def __call__(self, fabric):
        print '\tTranscribing Score'
        # create transcriptions, sanity check score-structure of result
        transcription = {}
        for performer in fabric.ensemble:
            print '\t\t%s' % performer
            transcription[performer] = self._build_part(
                performer, fabric[performer], fabric.start_offset, fabric.stop_offset)
            assert isinstance(transcription[performer], scoretools.StaffGroup)
            assert len(transcription[performer]) == 2
        # create large staff groups
        orchestra = StringOrchestra()
        violin_ones = scoretools.StaffGroup([transcription[performer]
            for performer in orchestra.violin_ones.performers])
        violin_twos = scoretools.StaffGroup([transcription[performer]
            for performer in orchestra.violin_twos.performers])
        violas = scoretools.StaffGroup([transcription[performer]
            for performer in orchestra.violas.performers])
        cellos = scoretools.StaffGroup([transcription[performer]
            for performer in orchestra.cellos.performers])
        basses = scoretools.StaffGroup([transcription[performer]
            for performer in orchestra.basses.performers])
        # create and return score
        score = scoretools.Score([
            violin_ones, violin_twos, violas, cellos, basses])
        return score

    def __repr__(self):
        return '%s(%s)' % (self.__class__.__name__, self._format_string)

    ### PRIVATE ATTRIBUTES ###

    @property
    def _format_string(self):
        return ' '

    ### PRIVATE METHODS ###

    def _build_part(self, performer, inventory, start_offset, stop_offset):
        # setup inventory
        # guarantee music starts at zero
        # ends with silences rounded to nearest full bar
        adjusted_start = 0
        adjusted_stop = (stop_offset + durationtools.Duration(3, 4) - (
            stop_offset % durationtools.Duration(3, 4)))
        silences = timespantools.TimespanInventory(inventory[:])
        silences.append(timespantools.Timespan(adjusted_start, adjusted_stop))
        silences.compute_logical_xor()
        #silences = inventory.compute_logical_not(
        #    bounding_interval=timespantools.Timespan(
        #        adjusted_start, adjusted_stop))
        merged_inventory = timespantools.TimespanInventory()
        merged_inventory.extend(inventory)
        merged_inventory.extend(silences)
        merged_inventory.sort()

        # create notation (all but last timespan)
        notation = []
        for i, timespan in enumerate(merged_inventory[:-1]):
            if isinstance(timespan, PayloadedTimespan) and \
                'figures' in timespan:
                if isinstance(merged_inventory[i + 1], PayloadedTimespan) and \
                    'figures' in merged_inventory[i + 1]:
                    notation.append(self.figure_transcriber(
                        timespan, performer, next=True))
                else:
                    notation.append(self.figure_transcriber(
                        timespan, performer))
            else:
                notation.append(self.silence_transcriber(timespan, performer))

        # add extra silence after final timespan (merging if already silent)
        if isinstance(merged_inventory[-1], PayloadedTimespan) and \
            'figures' in merged_inventory[-1]:
            notation.append(self.figure_transcriber(merged_inventory[-1], performer))
            padding = timespantools.Timespan(
                merged_inventory[-1].stop_offset,
                merged_inventory[-1].stop_offset + durationtools.Duration(3, 4))
            notation.append(self.silence_transcriber(padding, performer))
        else:
            padding = timespantools.Timespan(
                merged_inventory[-1].start_offset,
                merged_inventory[-1].stop_offset + durationtools.Duration(3, 4))
            notation.append(self.silence_transcriber(padding, performer))

        # concatenate notation
        finger_staff = scoretools.Staff([x[0] for x in notation])
        bowing_staff = scoretools.Staff([x[1] for x in notation])

        # add breathe marks between consecutive figuration intervals
        for i, timespan in enumerate(merged_inventory[:-1]):
            if not isinstance(timespan, PayloadedTimespan):
                continue
            if not isinstance(merged_inventory[i + 1], PayloadedTimespan):
                continue
            if isinstance(timespan['figures'][-1]['right'],
                RightHandPizzicato):
                continue
            mark = indicatortools.LilyPondCommand('breathe', 'after')
            attach(mark, bowing_staff[i].select_leaves()[-1])

        # instrument specifics
        set_(finger_staff).instrument_name = \
            schemetools.Scheme(performer.name)
        set_(finger_staff).short_instrument_name = \
            schemetools.Scheme(performer.name)
        clef = indicatortools.Clef(performer.instruments[0].clef)
        attach(clef, finger_staff)

        # build staff_group and return
        staff_group = scoretools.StaffGroup([bowing_staff, finger_staff])
        staff_group.name = performer.name
        return staff_group

    ### PUBLIC ATTRIBUTES ###
    @property
    def figure_transcriber(self):
        return self._figure_transcriber

    @property
    def silence_transcriber(self):
        return self._silence_transcriber
