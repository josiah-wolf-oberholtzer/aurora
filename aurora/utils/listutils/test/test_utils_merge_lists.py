from aurora.utils.listutils import merge_lists


def test_utils_merge_lists_01():

    a = [1, 2, 3]
    b = [['a', 0.1], ['b', 0.2], ['c', 0.3]]
    c = ['i', 'ii', 'iii']
    d = [[10, 'x'], [20, 'y'], [30, 'z']]

    m = merge_lists([a, b, c, d])

    assert m == [[1, 'a', 0.1, 'i', 10, 'x'], [2, 'b', 0.2, 'ii', 20, 'y'], [3, 'c', 0.3, 'iii', 30, 'z']]
