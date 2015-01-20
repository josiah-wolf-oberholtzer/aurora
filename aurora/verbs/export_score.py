import os
from abjad import *
from aurora.config import AURORACONFIG


def export_score(score):
    pdf_file_path = os.path.join(
        AURORACONFIG['paths']['build'],
        'aurora__score.pdf',
        )
    persist(score).as_pdf(pdf_file_path=pdf_file_path)
