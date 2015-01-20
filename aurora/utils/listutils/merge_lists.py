from aurora.utils.listutils import flatten_list


def merge_lists(lists):

    zipped = zip(*lists)
    return [flatten_list(x) for x in zipped]
