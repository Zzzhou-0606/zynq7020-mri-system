"""Shared local file and provenance utilities; no patient data goes into Git."""

import csv
import hashlib
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def sha256(path):
    digest = hashlib.sha256()
    with Path(path).open('rb') as stream:
        for block in iter(lambda: stream.read(4 * 1024 * 1024), b''):
            digest.update(block)
    return digest.hexdigest()


def object_hash(value):
    return hashlib.sha256(json.dumps(value, sort_keys=True, ensure_ascii=True).encode()).hexdigest()


def read_json(path):
    return json.loads(Path(path).read_text(encoding='utf-8'))


def write_json(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open('x', encoding='utf-8', newline='\n') as stream:
        json.dump(value, stream, ensure_ascii=False, indent=2, allow_nan=False)
        stream.write('\n')


def write_csv(path, rows):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    rows = list(rows)
    if not rows:
        raise ValueError('Cannot write a manifest with no records')
    columns = list(dict.fromkeys(key for row in rows for key in row))
    with path.open('x', encoding='utf-8-sig', newline='') as stream:
        writer = csv.DictWriter(stream, fieldnames=columns)
        writer.writeheader()
        writer.writerows(rows)


def load_config(path):
    config = read_json(path)
    return config, object_hash(config)


def resolve(path):
    value = Path(path)
    return value if value.is_absolute() else ROOT / value


def code_state():
    def git(*args):
        return subprocess.check_output(['git', *args], cwd=ROOT, text=True).strip()
    sources = sorted([*ROOT.glob('training/**/*.py'), *ROOT.glob('training/configs/*.json'),
                      ROOT / 'training/requirements.txt', ROOT / 'scripts/setup_training.ps1',
                      ROOT / 'shared/model_contract/offline_baseline_v1.json'])
    checksums = {path.relative_to(ROOT).as_posix(): sha256(path) for path in sources}
    return {'commit': git('rev-parse', 'HEAD'), 'working_tree_status': git('status', '--short'),
            'source_files_sha256': checksums, 'source_tree_sha256': object_hash(checksums)}
