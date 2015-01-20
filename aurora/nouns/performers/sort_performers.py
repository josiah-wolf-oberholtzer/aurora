from collections import Iterable
from aurora.nouns.performers.Cellist import Cellist
from aurora.nouns.performers.Contrabassist import Contrabassist
from aurora.nouns.performers.Performer import Performer
from aurora.nouns.performers.Violinist import Violinist
from aurora.nouns.performers.Violist import Violist


def sort_performers(performers):
    assert isinstance(performers, Iterable) \
        and all([isinstance(x, Performer) for x in performers])
    sorted_performers = []
    ### VIOLINS
    sorted_performers.extend(sorted(
        filter(lambda x: isinstance(x, Violinist), performers),
        key = lambda x: x.name))
    ### VIOLAS
    sorted_performers.extend(sorted(
        filter(lambda x: isinstance(x, Violist), performers),
        key = lambda x: x.name))
    ### CELLOS
    sorted_performers.extend(sorted(
        filter(lambda x: isinstance(x, Cellist), performers),
        key = lambda x: x.name))
    ### CONTRABASSES
    sorted_performers.extend(sorted(
        filter(lambda x: isinstance(x, Contrabassist), performers),
        key = lambda x: x.name))
    ### DONE
    return sorted_performers
