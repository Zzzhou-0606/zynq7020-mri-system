"""Desktop entrypoint for the private, isolated Python runtime."""
from datetime import datetime
import os
from pathlib import Path
import sys
import traceback


def main():
    from host.paths import portable_root
    root = portable_root()
    if root is None:
        raise RuntimeError('Portable runtime marker missing')
    for name in ('cases', 'settings', 'logs', 'exports'):
        (root / 'data' / name).mkdir(parents=True, exist_ok=True)
    # pythonw has no console streams; libraries and child logs still need them.
    log = root / 'data/logs' / ('workstation-' + datetime.now().strftime('%Y%m%d-%H%M%S') + '.log')
    with log.open('a', encoding='utf-8', buffering=1) as stream:
        sys.stdout = sys.stderr = stream
        os.environ.pop('SSLKEYLOGFILE', None)
        os.environ['PYTHONIOENCODING'] = 'utf-8'
        # Child inference uses the console interpreter but is created without
        # a console window by the analysis workflow.
        sys.executable = str(root / 'runtime/python.exe')
        try:
            if len(sys.argv) > 1 and sys.argv[1] == '--portable-check':
                from host.packaging.verify_runtime import main as check
                sys.argv.pop(1)
                check()
            else:
                from host.app import main as app
                app()
        except BaseException:
            traceback.print_exc()
            raise


if __name__ == '__main__':
    main()
