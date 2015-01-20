def scale_value(x, minin, maxin, minout, maxout):
    if minout == maxout:
        return minout
    return (((x - minin) / (maxin - minin)) * (maxout - minout)) + minout
