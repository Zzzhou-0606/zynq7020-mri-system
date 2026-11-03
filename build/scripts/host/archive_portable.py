"""Archive a clean, tested distribution; refuse to include user data."""
import argparse
import json
from pathlib import Path
import time
import zipfile
from collections import deque
from concurrent.futures import ThreadPoolExecutor

parser = argparse.ArgumentParser()
parser.add_argument('folder', type=Path)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--report', type=Path, help='Optional build log outside the distribution')
args = parser.parse_args()
root = args.folder.resolve()
assert (root/'portable.json').is_file()
assert (root/'mri_workstation.exe').is_file()
assert not any(p.is_file() for p in (root/'data').rglob('*')), 'Do not distribute any user data or logs'
files = sorted(p for p in root.rglob('*') if p.is_file())
total = sum(p.stat().st_size for p in files)
print(f'Archiving {len(files)} files; {total/1024**3:.2f} GiB', flush=True)
start = time.monotonic()
progress = 0
last = start
def prepare(path):
    info = zipfile.ZipInfo.from_file(path, (Path(root.name)/path.relative_to(root)).as_posix())
    # Prefetch small files concurrently; large CUDA libraries remain streamed.
    return path, info, path.read_bytes() if info.file_size <= 2*1024*1024 else None

args.output.parent.mkdir(parents=True, exist_ok=True)
with zipfile.ZipFile(args.output, 'x', zipfile.ZIP_DEFLATED, compresslevel=1, allowZip64=True) as archive:
    with ThreadPoolExecutor(max_workers=8) as pool:
        iterator = iter(files)
        pending = deque(pool.submit(prepare, p) for p in [next(iterator, None) for _ in range(32)] if p is not None)
        while pending:
            path, info, contents = pending.popleft().result()
            upcoming = next(iterator, None)
            if upcoming is not None:
                pending.append(pool.submit(prepare, upcoming))
            if contents is None:
                archive.write(path, info.filename)
            else:
                archive.writestr(info, contents, compress_type=zipfile.ZIP_DEFLATED, compresslevel=1)
            progress += info.file_size
            if time.monotonic() - last > 25:
                print(f'Compressed {100*progress/max(total,1):.1f}%', flush=True)
                last = time.monotonic()
    for path in (root/'data').rglob('*'):
        if path.is_dir():
            archive.write(path, (Path(root.name)/path.relative_to(root)).as_posix()+'/')
print('Validating ZIP integrity', flush=True)
with zipfile.ZipFile(args.output) as archive:
    assert archive.testzip() is None
report = dict(folder=str(root), archive=str(args.output.resolve()), file_count=len(files),
              folder_bytes=total, archive_bytes=args.output.stat().st_size,
              zip_crc_check=True, empty_user_data=True, seconds=time.monotonic()-start)
if args.report:
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2), encoding='utf-8')
print(json.dumps(report), flush=True)
