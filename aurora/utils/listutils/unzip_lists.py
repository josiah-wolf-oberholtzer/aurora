def unzip_lists(lists):

    columns = [[] for elem in lists[0]]

    for sublist in lists:
        for i, elem in enumerate(sublist):
            columns[i].append(elem)

    return columns
