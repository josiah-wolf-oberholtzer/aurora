from abjad import *


class PayloadedTimespan(timespantools.Timespan):

    ### CLASS VARIABLES ###

    __slots__ = (
        '_payload',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        start_offset=None,
        stop_offset=None,
        payload=None
        ):
        if payload is None:
            payload = {}
        timespantools.Timespan.__init__(
            self,
            start_offset=start_offset,
            stop_offset=stop_offset,
            )
        self._payload = payload

    ### SPECIAL METHODS ###

    def __contains__(self, expr):
        return expr in self._payload

    def __getitem__(self, i):
        return self._payload[i]

    def __setitem__(self, i, value):
        self._payload[i] = value

    ### PUBLIC PROPERTIES ###

    @property
    def payload(self):
        return self._payload
