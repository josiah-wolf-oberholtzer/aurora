from abjad.tools import durationtools


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

    def _flatten(lst):
        for elem in lst:
            if type(elem) in (list, tuple):
                for i in _flatten(elem):
                    yield i
            else:
                yield elem

    def _partition_duration_by_grid_and_offset(duration, grid, offset):
        duration = durationtools.Duration(duration)
        grid = durationtools.Duration(grid)
        offset = durationtools.Duration(offset) % grid
        if (duration + offset) <= grid:
            return [duration]
        parts = []
        if durationtools.Duration(0) < offset:
            parts.append(grid - offset)
            duration -= (grid - offset)
        while grid <= duration:
            parts.append(grid)
            duration -= grid
        if durationtools.Duration(0) < duration:
            parts.append(duration)
        return parts

    def _iter(part, remaining_grids):
        if len(remaining_grids):
            new = _partition_duration_by_grid_and_offset( \
                part['duration'], remaining_grids[0], part['offset'])

            new[0] = {'duration': new[0], 'offset': part['offset']}
            for i in range(1, len(new)):
                new[i] = {'duration': new[i], \
                    'offset': new[i-1]['duration'] + new[i-1]['offset']}

            for i in range(len(new)):
                if not durationtools.Duration(new[i]['duration']).is_assignable:
                    new[i] = _iter(new[i], remaining_grids[1:])
                # assignable, but not aligned to grid
                elif (new[i]['offset'] % remaining_grids[0]) > durationtools.Duration(0):
                    new[i] = _iter(new[i], remaining_grids[1:])

            return new

        else:
            return part

    parts = _iter(parts, grids)
    parts = _flatten(parts)
    return map(lambda x: x['duration'], parts)
