from abjad import Duration
from aurora.utils.scoreutils.partition_duration_by_grid_and_offset \
     import partition_duration_by_grid_and_offset


def partition_duration_by_nested_grids_and_offset(duration, grids, offset):

    if type(grids) == list:
        if not len(grids):
            return [duration]
        if len(grids) >= 2:
            grids.sort()
            grids.reverse()
            for i in range(1, len(grids)):
                r = grids[i-1] / grids[i]
                if r._denominator != 1:
                    raise Exception('grids must be factors of one another')

    parts = {'duration': duration, 'offset': offset}

    def iter(part, remaining_grids):
        if len(remaining_grids):
            new = partition_duration_by_grid_and_offset( \
                part['duration'], remaining_grids[0], part['offset'])

            new[0] = {'duration': new[0], 'offset': part['offset']}
            for i in range(1, len(new)):
                new[i] = {'duration': new[i], \
                    'offset': new[i-1]['duration'] + new[i-1]['offset']}

            for i in range(len(new)):
                if not Duration(new[i]['duration']).is_assignable:
                    new[i] = iter(new[i], remaining_grids[1:])
                # assignable, but not aligned to grid
                elif (new[i]['offset'] % remaining_grids[0]) > Duration(0):
                    new[i] = iter(new[i], remaining_grids[1:])

            return new

        else:
            return part

    def flatten(lst):
        for elem in lst:
            if type(elem) in (list, tuple):
                for i in flatten(elem):
                    yield i
            else:
                yield elem

    parts = iter(parts, grids)
    parts = flatten(parts)
    return map(lambda x: x['duration'], parts)
