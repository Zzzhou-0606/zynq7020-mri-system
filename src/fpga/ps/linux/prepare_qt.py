"""Prepare public Qt build headers and the existing vendor runtime for linking.

Qt5.11 public API is used with the vendor Qt5.13.2 runtime, following Qt5's
backwards ABI compatibility. No downloaded runtime replaces a board library.
The native .pro project can instead be built using a matching vendor Qt SDK.
"""
import hashlib
import io
import os
from pathlib import Path
import subprocess
import tarfile
import urllib.request

HERE = Path(__file__).resolve().parents[2] / 'vivado'
BUILD = HERE / 'build'
URL = ('https://archive.debian.org/debian/pool/main/q/qtbase-opensource-src/'
       'qtbase5-dev_5.11.3+dfsg1-1+deb10u5_armhf.deb')
SHA256 = 'e96267de8d89538d56819d3b3b84da5ffde7498c42ab6e156ea6d12e9e8aec30'


def main():
    # This host exports a TLS key-log path outside the workspace. Do not log keys.
    os.environ.pop('SSLKEYLOGFILE', None)
    package = BUILD / 'qt_headers.deb'
    if not package.exists():
        urllib.request.urlretrieve(URL, package)
    if hashlib.sha256(package.read_bytes()).hexdigest() != SHA256:
        raise ValueError('Qt development package checksum mismatch')
    data = subprocess.check_output(['tar', '-xOf', str(package), 'data.tar.xz'])
    with tarfile.open(fileobj=io.BytesIO(data), mode='r:xz') as archive:
        for member in archive:
            if member.isfile() and (member.name.startswith('./usr/include/') or '/copyright' in member.name):
                relative = member.name.removeprefix('./')
                target = BUILD / 'qt_headers' / relative
                if not target.resolve().is_relative_to((BUILD / 'qt_headers').resolve()):
                    raise ValueError('Unsafe archive path')
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_bytes(archive.extractfile(member).read())
    wanted = {'libQt5Core.so.5.13.2', 'libQt5Gui.so.5.13.2', 'libQt5Widgets.so.5.13.2'}
    with tarfile.open(BUILD / 'vendor/reference_qt_boot/rootfs.tar.gz', 'r|gz') as archive:
        for member in archive:
            name = Path(member.name).name
            if member.isfile() and name in wanted:
                output = BUILD / 'target_libs' / name.replace('.5.13.2', '.5')
                output.parent.mkdir(parents=True, exist_ok=True)
                output.write_bytes(archive.extractfile(member).read())
                wanted.remove(name)
    if wanted:
        raise ValueError('Vendor Qt libraries missing: ' + str(wanted))
    print('Qt public headers and vendor target libraries ready')


if __name__ == '__main__':
    main()
