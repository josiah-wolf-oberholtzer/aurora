from aurora.utils.listutils import normalize_list


def test_utils_normalize_list_01():

    l = [-1, 0, 2, 3]
    n = normalize_list(l)
    assert n == [0, 0.25, 0.75, 1]
