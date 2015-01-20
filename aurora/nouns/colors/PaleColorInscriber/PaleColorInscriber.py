from aurora.nouns.colors.ColorInscriber import ColorInscriber


class PaleColorInscriber(ColorInscriber):

    def __init__(self, seed = 0):
        from aurora.nouns import colors

        touches = (
            colors.HarmonicTouch()
            )
        positions = (
            colors.OrdinaryPosition(), 
            colors.SulPontPosition(), 
            colors.MoltoSulPontPosition()
            )
        pressures = (
            colors.UnderPressure(),
            colors.NormalPressure()
            )

        ColorInscriber.__init__(self, touches, positions, pressures, seed = seed)
