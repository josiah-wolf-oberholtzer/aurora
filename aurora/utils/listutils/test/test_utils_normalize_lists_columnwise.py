from aurora.utils.listutils import normalize_lists_columnwise


def test_utils_normalize_lists_columnwise_01():

    l = [[0,1,2],[1,1,3],[2,-1,4],[5,0,6]]
    n = normalize_lists_columnwise(l)
    assert n == [(0.0, 1.0, 0.0), (0.2, 1.0, 0.25), (0.4, 0.0, 0.5), (1.0, 0.5, 1.0)]
