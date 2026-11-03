"""Cooperative stop signal shared by host analysis and image publication."""


class StopRequested(Exception):
    pass
