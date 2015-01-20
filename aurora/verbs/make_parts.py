from aurora.nouns.transcribers import PartTranscriber


def make_parts(score):

    parts = PartTranscriber()(score)

    return parts
