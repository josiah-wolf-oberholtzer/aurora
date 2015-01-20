from aurora.nouns.colors.ColorInscriber import ColorInscriber


class MockColorInscriber(ColorInscriber):

    def __init__(self, seed = 0):
        from aurora.nouns import colors

        touches = (
            colors.HarmonicTouch(),
            colors.StoppedTouch()
            )
        positions = (
            colors.MoltoSulPontPosition(), 
            colors.SulPontPosition(),
            colors.OrdinaryPosition(), 
            colors.SulTastoPosition(), 
            colors.MoltoSulTastoPosition()
            )
        pressures = (
            colors.UnderPressure(), 
            colors.NormalPressure(), 
            colors.OverPressure()
            )

        ColorInscriber.__init__(self, touches, positions, pressures, seed = seed)
