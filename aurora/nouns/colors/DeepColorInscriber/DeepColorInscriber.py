from aurora.nouns.colors.ColorInscriber import ColorInscriber


class DeepColorInscriber(ColorInscriber):

    def __init__(self, seed = 0):
        from aurora.nouns import colors

        touches = (
            colors.StoppedTouch(),
            ) 
        positions = (
            colors.OrdinaryPosition(),
            colors.SulTastoPosition(),
            colors.MoltoSulTastoPosition()
            )
        pressures = (
            colors.NormalPressure(),
            colors.OverPressure(),
            )

        ColorInscriber.__init__(self, touches, positions, pressures, seed = seed)
