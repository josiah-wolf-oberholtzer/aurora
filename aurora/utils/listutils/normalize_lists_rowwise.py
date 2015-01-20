from aurora.utils.listutils.normalize_list import normalize_list


def normalize_lists_rowwise(lists, minimum = None, maximum = None):

    return [normalize_list(sublist, minimum, maximum) for sublist in lists]
