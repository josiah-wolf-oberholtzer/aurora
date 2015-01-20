from aurora.utils.listutils.unzip_lists import unzip_lists


def test_utils_unzip_lists_01():

    lists = [['a', 1], ['b', 2], ['c', 3]]
    unzipped = unzip_lists(lists)
    assert unzipped == [['a', 'b', 'c'], [1, 2, 3]]
