from abjad import Duration


def partition_duration_by_grid_and_offset(duration, grid, offset):

    duration = Duration(duration)
    grid = Duration(grid)
    offset = Duration(offset) % grid

    if (duration + offset) <= grid:
        return [duration]

    parts = []

    if Duration(0) < offset:
        parts.append(grid - offset)
        duration -= (grid - offset)

    while grid <= duration:
        parts.append(grid)
        duration -= grid

    if Duration(0) < duration:
        parts.append(duration)

    return parts
