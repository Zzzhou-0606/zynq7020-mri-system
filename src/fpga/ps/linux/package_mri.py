"""Create a new independent MRI deployment tar or vendor-based rootfs tar.

No disk is flashed and no source or old package is replaced. Boot hardware and
the kernel driver must match the MRI Vivado project separately.
"""
import argparse
from pathlib import Path
import tarfile
import time

ROOT = Path(__file__).resolve().parents[3]


def package(output, runtime, model, qt_app, base_rootfs=None, driver=None, device_tree=None, build_info=None):
    files = {
        "opt/mri/bin/mri_infer": Path(runtime),
        "opt/mri/bin/mri_ui": Path(qt_app),
        "opt/mri/bin/network_backend.py": ROOT / "fpga/ps/service/network_backend.py",
        "opt/mri/bin/board_sensors.py": ROOT / "fpga/ps/service/board_sensors.py",
        "opt/mri/bin/start-mri-ui.sh": ROOT / "fpga/ps/linux/start-mri-ui.sh",
        "opt/mri/service/mri_service.py": ROOT / "fpga/ps/service/mri_service.py",
        "opt/mri/service/board_sensors.py": ROOT / "fpga/ps/service/board_sensors.py",
        "opt/mri/service/patient_portal.py": ROOT / "fpga/ps/service/patient_portal.py",
        "opt/mri/service/scan_deletion.py": ROOT / "fpga/ps/service/scan_deletion.py",
        "opt/mri/bin/usb_export.py": ROOT / "fpga/ps/service/usb_export.py",
        "opt/mri/bin/mri_board_peripherals.py": ROOT / "fpga/ps/service/mri_board_peripherals.py",
        "opt/mri/service/mri_board_peripherals.py": ROOT / "fpga/ps/service/mri_board_peripherals.py",
        "opt/mri/shared/protocol/mri_v1.py": ROOT / "shared/protocol/mri_v1.py",
        "opt/mri/models/model.bin": Path(model),
        "etc/init.d/mri": ROOT / "fpga/ps/linux/mri.init",
        "etc/default/mri": ROOT / "fpga/ps/linux/mri.default",
    }
    for name in ('index.html', 'app.js', 'styles.css'):
        files['opt/mri/service/patient_web/' + name] = ROOT / 'fpga/ps/service/patient_web' / name
    if driver:
        files["opt/mri/driver/mri_accel.ko"] = Path(driver)
    if device_tree:
        files["opt/mri/boot/system-mri.dtb"] = Path(device_tree)
    if build_info:
        files["opt/mri/build-info.json"] = Path(build_info)
    for path in files.values():
        if not path.is_file():
            raise FileNotFoundError(path)
    if base_rootfs and not Path(base_rootfs).is_file():
        raise FileNotFoundError(base_rootfs)
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    # Exclusive output creation also prevents accidentally replacing a prior package.
    with output.open("xb") as raw, tarfile.open(fileobj=raw, mode="w:gz", compresslevel=3) as target:
        existing = set()
        if base_rootfs:
            with tarfile.open(base_rootfs, "r|gz") as source:
                for member in source:
                    name = member.name.lstrip("./").rstrip("/")
                    if name in files or name == "etc/rc5.d/S99mri":
                        raise ValueError("base rootfs already contains an MRI path: " + name)
                    existing.add(name)
                    target.addfile(member, source.extractfile(member) if member.isfile() else None)
        for name, path in files.items():
            for parent in reversed(Path(name).parents):
                directory = parent.as_posix()
                if directory == "." or directory in existing:
                    continue
                item = tarfile.TarInfo(directory)
                item.type, item.mode, item.mtime = tarfile.DIRTYPE, 0o755, int(time.time())
                target.addfile(item)
                existing.add(directory)
            item = tarfile.TarInfo(name)
            item.mode = 0o755 if name.startswith("opt/mri/bin/") or name == "etc/init.d/mri" else 0o644
            item.size, item.mtime = path.stat().st_size, int(time.time())
            with path.open("rb") as stream:
                target.addfile(item, stream)
        if base_rootfs:
            if "etc/rc5.d" not in existing:
                directory = tarfile.TarInfo("etc/rc5.d")
                directory.type, directory.mode = tarfile.DIRTYPE, 0o755
                target.addfile(directory)
            link = tarfile.TarInfo("etc/rc5.d/S99mri")
            link.type, link.linkname, link.mode = tarfile.SYMTYPE, "../init.d/mri", 0o777
            target.addfile(link)
    return output


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", required=True)
    parser.add_argument("--runtime", required=True)
    parser.add_argument("--model", required=True)
    parser.add_argument("--qt-app", required=True)
    parser.add_argument("--base-rootfs")
    parser.add_argument("--driver")
    parser.add_argument("--device-tree")
    parser.add_argument("--build-info")
    args = parser.parse_args()
    print(package(args.output, args.runtime, args.model, args.qt_app, args.base_rootfs, args.driver, args.device_tree, args.build_info))


if __name__ == "__main__":
    main()
