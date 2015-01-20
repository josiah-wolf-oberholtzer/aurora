from aurora.utils.listutils.normalize_list import normalize_list
from aurora.utils.listutils.unzip_lists import unzip_lists


def normalize_lists_columnwise(lists, minimum = None, maximum = None):

    columns = unzip_lists(lists)
    for i, column in enumerate(columns):
        if minimum is not None and maximum is not None:
            columns[i] = normalize_list(column, minimum[i], maximum[i])
        else:
            columns[i] = normalize_list(column)
    return zip(*columns)
