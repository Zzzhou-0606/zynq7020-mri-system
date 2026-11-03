"""Portable paths are anchored to the bundled interpreter, never the shell cwd."""
from pathlib import Path
import sys

PROJECT = Path(__file__).resolve().parents[1]
DELIVERY = PROJECT.parent


def portable_root():
    root = Path(sys.executable).resolve().parent.parent
    return root if (root / 'portable.json').is_file() else None


def default_cases():
    root = portable_root()
    return root / 'data/cases' if root else DELIVERY / 'data/local_cases'


def settings_file(case_root):
    root = portable_root()
    if root and Path(case_root).resolve() == default_cases().resolve():
        path = root / 'data/settings/preferences.json'
        path.parent.mkdir(parents=True, exist_ok=True)
        return path
    return Path(case_root) / 'settings.json'


def doctor_credentials():
    root = portable_root()
    return root / 'data/settings/board_credentials.json' if root else DELIVERY / 'data/local_settings/board_credentials.json'


def segmentation_weights():
    root = portable_root()
    return root / 'models/FastSurfer' if root else DELIVERY / 'data/models/segmentation'


def classification_bundle():
    root = portable_root()
    return root / 'models/classification' if root else DELIVERY / 'data/models/classification'


def exports_folder():
    root = portable_root()
    if root:
        folder = root / 'data/exports'
        folder.mkdir(parents=True, exist_ok=True)
        return str(folder)
    return ''
