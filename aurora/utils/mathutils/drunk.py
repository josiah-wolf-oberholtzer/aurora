import random


def drunk(iterations, num_ids, initial_id = None):
    assert 0 < iterations
    assert 0 < num_ids
    if initial_id is not None:
        assert 0 <= initial_id < num_ids
    else:
        initial_id = random.randint(0, num_ids - 1)
    results = [initial_id]
    for i in range(iterations)[1:]:
        choices = [x + results[-1] for x in [-1, 0, 1]]
        choices = filter(lambda x: 0 <= x < num_ids, choices)
        results.append(random.choice(choices))
    return results
