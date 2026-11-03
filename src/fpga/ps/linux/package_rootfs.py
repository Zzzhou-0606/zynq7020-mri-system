"""Create a new rootfs archive; never modify vendor archive or write a disk."""
from pathlib import Path
import io
import tarfile
import time
import sys

HERE = Path(__file__).resolve().parents[2] / 'vivado'


def main():
    output = HERE / ('build/sd-touch/rootfs-demo2.tar.gz' if '--touch' in sys.argv else 'build/sd/rootfs-demo2.tar.gz')
    if output.exists():
        raise FileExistsError('Preserve the previous package; choose a new output name')
    files = {
        'opt/demo2/demo2': HERE / 'build/app/demo2',
        'opt/demo2/network_backend.py': HERE.parent / 'ps/service/network_backend.py',
        'opt/demo2/start-demo.sh': HERE.parent / 'ps/linux/start-demo.sh',
        'etc/init.d/demo2': HERE.parent / 'ps/linux/demo2.init',
    }
    for path in files.values():
        if not path.is_file():
            raise FileNotFoundError(path)
    output.parent.mkdir(parents=True, exist_ok=True)
    with tarfile.open(HERE / 'build/vendor/reference_qt_boot/rootfs.tar.gz', 'r|gz') as source, \
         tarfile.open(output, 'w:gz', compresslevel=3) as target:
        existing = set()
        for member in source:
            existing.add(member.name.removeprefix('./').rstrip('/'))
            if member.name.removeprefix('./') in files:
                raise ValueError('Unexpected existing vendor demo path: ' + member.name)
            target.addfile(member, source.extractfile(member) if member.isfile() else None)
        # The kernel newc unpacker needs directories before their children.
        # tar extraction can hide this error by creating missing parents itself.
        for name in files:
            for parent in reversed(Path(name).parents):
                directory = parent.as_posix()
                if directory == '.' or directory in existing:
                    continue
                item = tarfile.TarInfo('./' + directory)
                item.type, item.mode, item.mtime = tarfile.DIRTYPE, 0o755, int(time.time())
                target.addfile(item)
                existing.add(directory)
        for name, path in files.items():
            data = path.read_bytes()
            item = tarfile.TarInfo('./' + name)
            item.size, item.mode, item.mtime = len(data), 0o755, int(time.time())
            item.uid = item.gid = 0
            item.uname = item.gname = 'root'
            target.addfile(item, io.BytesIO(data))
        link = tarfile.TarInfo('./etc/rc5.d/S99demo2')
        link.type, link.linkname, link.mode = tarfile.SYMTYPE, '../init.d/demo2', 0o777
        target.addfile(link)
    print('New rootfs package:', output, output.stat().st_size)


if __name__ == '__main__':
    main()
