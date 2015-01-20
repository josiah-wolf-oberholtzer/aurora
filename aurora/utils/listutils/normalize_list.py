def normalize_list(l, minimum = None, maximum = None):

    if minimum is None:
        minimum = float(min(l))
    if maximum is None:
        maximum = float(max(l))

    if maximum == minimum:
        return [0 for x in l]
    else:
        return [(x - minimum) / float(maximum - minimum) for x in l]
