import os
from abjad import *
from aurora.config import AURORACONFIG


def export_parts(parts):

    for part in parts:

        name = part.score_block[0][0].name.lower().replace(' ', '_')

        print '\t\tWriting %s' % name

        iotools.write_expr_to_ly(part, \
            os.path.join(AURORACONFIG['paths']['build'], \
                'aurora__parts__%s.ly' % name))

        iotools.write_expr_to_pdf(part, \
            os.path.join(AURORACONFIG['paths']['build'], \
                'aurora__parts__%s.pdf' % name))
