"""Create MRI newc initramfs, script, kernel and DTB without altering old boot files."""
import argparse
import gzip
import json
from pathlib import Path
import stat
import struct
import tarfile
import time
import zlib

HERE = Path(__file__).resolve().parent


def name_of(name):
    return name[2:] if name.startswith("./") else name


def make_initramfs(archive, output):
    with tarfile.open(archive) as source:
        members = source.getmembers()
        targets = {name_of(member.linkname) for member in members if member.islnk()}
        unpacked_bytes = sum(member.size for member in members if member.isfile())
    cached, deferred, names = {}, [], set()
    counter = 0

    def emit(stream, name, mode, data=b"", uid=0, gid=0, mtime=0, major=0, minor=0):
        nonlocal counter
        counter += 1
        encoded = name.encode() + b"\0"
        fields = [counter, mode, uid, gid, 1, mtime, len(data), 0, 0, major, minor, len(encoded), 0]
        header = b"070701" + "".join("%08x" % field for field in fields).encode()
        stream.write(header + encoded)
        stream.write(b"\0" * (-(len(header) + len(encoded)) % 4))
        stream.write(data)
        stream.write(b"\0" * (-len(data) % 4))

    with Path(output).open("xb") as raw, gzip.GzipFile(fileobj=raw, mode="wb", compresslevel=3) as result, \
            tarfile.open(archive, "r|gz") as source:
        for member in source:
            name = name_of(member.name) or "."
            if name.startswith("/") or ".." in Path(name).parts:
                raise ValueError("unsafe rootfs member: " + name)
            names.add(name)
            if member.islnk():
                deferred.append(member)
                continue
            data = source.extractfile(member).read() if member.isfile() else b""
            if name in targets:
                cached[name] = data
            if name == "etc/fstab":
                emit(result, "etc/fstab.sd-mri", stat.S_IFREG | member.mode, data)
                data = b"# MRI RAM root; original fstab retained in fstab.sd-mri\n" + b"\n".join(
                    line for line in data.splitlines() if not line.startswith(b"/dev/root")) + b"\n"
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
            emit(result, name_of(member.name), stat.S_IFREG | member.mode,
                 cached[name_of(member.linkname)], member.uid, member.gid, int(member.mtime))
        if "init" in names:
            raise ValueError("rootfs already has /init; preserve and review it")
        emit(result, "init", stat.S_IFREG | 0o755, (HERE / "init-ram-mri.sh").read_bytes(), mtime=int(time.time()))
        if "dev/console" not in names:
            emit(result, "dev/console", stat.S_IFCHR | 0o600, major=5, minor=1)
        emit(result, "TRAILER!!!", 0)
    return {"rootfs_regular_file_bytes": unpacked_bytes, "initramfs_bytes": Path(output).stat().st_size,
            "file_count": len(names)}


def write_boot_script(output):
    """Write the legacy U-Boot script image without rebuilding the initramfs."""
    script = (HERE / "boot-mri.cmd").read_bytes()
    if b"\r" in script:
        raise ValueError("boot-mri.cmd must use LF line endings")
    payload = struct.pack(">II", len(script), 0) + script
    header = struct.pack(">7I4B32s", 0x27051956, 0, int(time.time()), len(payload), 0, 0,
                         zlib.crc32(payload), 5, 2, 6, 0, b"MRI system SD boot")
    header = header[:4] + struct.pack(">I", zlib.crc32(header)) + header[8:]
    with Path(output).open("xb") as stream:
        stream.write(header + payload)


def build(rootfs, output, kernel, device_tree):
    for path in (rootfs, kernel, device_tree):
        if not Path(path).is_file():
            raise FileNotFoundError(path)
    output = Path(output)
    output.mkdir(parents=True, exist_ok=True)
    for name in ("rootfs-mri.cpio.gz", "zImage", "system.dtb", "boot.scr", "rootfs_manifest.json"):
        if (output / name).exists():
            raise FileExistsError(output / name)
    manifest = make_initramfs(rootfs, output / "rootfs-mri.cpio.gz")
    for name, source in (("zImage", kernel), ("system.dtb", device_tree)):
        with (output / name).open("xb") as stream:
            stream.write(Path(source).read_bytes())
    write_boot_script(output / "boot.scr")
    manifest.update(task_storage="separate mounted filesystem required", hardware_validation="pending",
                    boot_bin="created separately from the matching MRI bitstream and FSBL")
    with (output / "rootfs_manifest.json").open("x", encoding="utf-8") as stream:
        json.dump(manifest, stream, indent=2)
    return manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rootfs", required=True)
    parser.add_argument("--output", required=True)
    parser.add_argument("--kernel", required=True)
    parser.add_argument("--device-tree", required=True)
    args = parser.parse_args()
    print(json.dumps(build(args.rootfs, args.output, args.kernel, args.device_tree), indent=2))


if __name__ == "__main__":
    main()
