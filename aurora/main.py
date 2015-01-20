#! /usr/bin/env python

import sys
from abjad import *
from aurora.verbs import *


if __name__ == '__main__':

    if 1 < len(sys.argv) and sys.argv[1] == 'score':
        score = make_score()
        export_score(score)
    elif 1 < len(sys.argv) and sys.argv[1] == 'parts':
        parts = make_parts(make_score())
        export_parts(parts)
    elif len(sys.argv) == 1:
        score = make_score()
        export_score(score)
    else:
        print 'please specify "score" or "parts"'
        sys.exit(-1)
