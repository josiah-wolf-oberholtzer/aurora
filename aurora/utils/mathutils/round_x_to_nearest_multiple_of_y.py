from abjad import Duration


def round_x_to_nearest_multiple_of_y(x, y):

    fx = float(x)
    fy = float(y)
    div, mod = divmod(fx, fy)
    if (mod / fy) < 0.5:
        return int(div) * y
    else:
        return int((div + 1)) * y
    
