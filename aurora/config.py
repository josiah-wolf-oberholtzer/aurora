import os


def _aurora_config():
    config = {}
    config['paths'] = {}
    config['paths']['build'] = os.path.join(os.path.dirname(__file__), 'build')
    return config

AURORACONFIG = _aurora_config()
