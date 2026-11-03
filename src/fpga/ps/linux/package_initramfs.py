"""Create a newc gzip initramfs on Windows, preserving Linux modes/device nodes."""
import gzip
import io
from pathlib import Path
import stat
import tarfile
import time
import sys

HERE = Path(__file__).resolve().parents[2] / 'vivado'


def main():
    folder = HERE / ('build/sd-touch' if '--touch' in sys.argv else 'build/sd')
    archive = folder / 'rootfs-demo2.tar.gz'
    output = folder / 'boot/rootfs-demo2.cpio.gz'
    output.parent.mkdir(parents=True, exist_ok=True)
    if output.exists():
        raise FileExistsError('Preserve the previous initramfs; choose a new output name')
    with tarfile.open(archive) as source:
        members = source.getmembers()
        targets = {m.linkname.removeprefix('./') for m in members if m.islnk()}
    cached, deferred, names = {}, [], set()
    counter = 0
    def emit(stream, name, mode, data=b'', uid=0, gid=0, mtime=0, major=0, minor=0):
        nonlocal counter
        counter += 1
        name_bytes = name.encode() + b'\0'
        fields = [counter, mode, uid, gid, 1, mtime, len(data), 0, 0, major, minor, len(name_bytes), 0]
        header = b'070701' + ''.join('%08x' % f for f in fields).encode()
        stream.write(header + name_bytes)
        stream.write(b'\0' * (-(len(header) + len(name_bytes)) % 4))
        stream.write(data)
        stream.write(b'\0' * (-len(data) % 4))
    with gzip.open(output, 'wb', compresslevel=3) as result, tarfile.open(archive, 'r|gz') as source:
        for member in source:
            name = member.name.removeprefix('./') or '.'
            names.add(name)
            if member.islnk():
                deferred.append(member)
                continue
            data = source.extractfile(member).read() if member.isfile() else b''
            if name in targets:
                cached[name] = data
            if name == 'etc/fstab':
                emit(result, 'etc/fstab.sd-demo2', stat.S_IFREG | member.mode, data)
                data = b'# Demo2 RAM-root variant; SD root entry is retained in fstab.sd-demo2\n' + b'\n'.join(
                    line for line in data.splitlines() if not line.startswith(b'/dev/root')) + b'\n'
            if member.issym():
                mode, data = stat.S_IFLNK, member.linkname.encode()
            elif member.isdir():
                mode = stat.S_IFDIR
            elif member.ischr():
                mode = stat.S_IFCHR
            elif member.isblk():
                mode = stat.S_IFBLK
            elif member.isfifo():
                mode = stat.S_IFIFO
            else:
                mode = stat.S_IFREG
            emit(result, name, mode | member.mode, data, member.uid, member.gid,
                 int(member.mtime), member.devmajor, member.devminor)
        for member in deferred:
            emit(result, member.name.removeprefix('./'), stat.S_IFREG | member.mode,
                 cached[member.linkname.removeprefix('./')], member.uid, member.gid, int(member.mtime))
        if 'init' in names:
            raise ValueError('Vendor already has /init; review before replacing')
        emit(result, 'init', stat.S_IFREG | 0o755, (HERE.parent / 'ps/linux/init-ram.sh').read_bytes(), mtime=int(time.time()))
        if 'dev/console' not in names:
            emit(result, 'dev/console', stat.S_IFCHR | 0o600, major=5, minor=1)
        emit(result, 'TRAILER!!!', 0)
    print('RAM-root initramfs:', output, output.stat().st_size)


if __name__ == '__main__':
    main()
