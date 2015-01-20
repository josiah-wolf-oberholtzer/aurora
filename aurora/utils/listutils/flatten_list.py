from collections import Iterable


def flatten_list(l):

    def recurse(x):
        if isinstance(x, Iterable) and \
            not isinstance(x, (basestring)):
            return [a for i in x for a in recurse(i)]
        else:
            return [x]

    return recurse(l)
