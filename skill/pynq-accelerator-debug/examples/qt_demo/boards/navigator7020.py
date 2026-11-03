"""Start/stop the ATK-DF7020 800x480 Qt + FIFO + affine board example."""
import argparse
import fcntl
import json
import os
from pathlib import Path
import signal
import socket
import struct
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[3]
SUPPORT = ROOT/'board_support/navigator7020'
RUN = ROOT/'reports/qt_runtime'


def request(message):
    with socket.create_connection(('127.0.0.1', 8766), timeout=3) as conn:
        conn.sendall((json.dumps(message)+'\n').encode())
        return json.loads(conn.makefile('rb').readline())


def wait_for(predicate, description, seconds=3):
    deadline = time.monotonic()+seconds
    while not predicate():
        if time.monotonic() > deadline:
            raise TimeoutError(description)
        time.sleep(.01)


def module(name):
    if not Path('/sys/module', name).exists():
        subprocess.run(['insmod', str(SUPPORT/'modules'/(name+'.ko'))], check=True)


def segment(name, source=None):
    from pynq.devicetree import DeviceTreeSegment
    path = RUN/(name+'.dtbo')
    if source is not None:
        dts = path.with_suffix('.dts')
        dts.write_text(source)
        subprocess.run([str(SUPPORT/'dtc'), '-@', '-I', 'dts', '-O', 'dtb',
                        '-o', str(path), str(dts)], check=True)
    return DeviceTreeSegment(str(path))


def stop_video(overlay):
    if 'video/axi_vdma' in overlay.ip_dict:
        mmio = overlay.video.axi_vdma.mmio
        mmio.write(0, 0)
        wait_for(lambda: bool(mmio.read(4)&1), 'LCD VDMA did not halt')


def stop():
    from pynq import Overlay, PL
    import pynq.lib.video2lcd
    result = request({'op': 'shutdown'})
    if not result.get('shutdown'):
        raise RuntimeError(result)
    state = json.loads((RUN/'runtime.json').read_text())
    pid = state['qt_pid']
    cmdline = Path('/proc', str(pid), 'cmdline')
    if cmdline.exists():
        if str(SUPPORT/'pynq-qt-demo').encode() not in cmdline.read_bytes():
            raise RuntimeError('Qt PID now belongs to a different program')
        os.kill(pid, signal.SIGTERM)
        wait_for(lambda: not cmdline.exists() or not cmdline.read_bytes(), 'Qt exit')
    backend_cmdline = Path('/proc', str(state['backend_pid']), 'cmdline')
    wait_for(lambda: not backend_cmdline.exists() or not backend_cmdline.read_bytes(), 'Compute service exit')
    stop_video(Overlay(PL.bitfile_name, download=False))
    state['state'] = 'stopped'
    (RUN/'runtime.json').write_text(json.dumps(state, indent=2))
    print('STOPPED: Qt and compute service closed; LCD VDMA halted')


def start(bit):
    from pynq import Overlay, PL, MMIO
    import pynq.lib.video2lcd
    RUN.mkdir(parents=True, exist_ok=True)
    if os.uname().release != '5.4.0-xilinx-v2020.2':
        raise RuntimeError('Rebuild board modules for the running kernel first')
    for file in [bit, bit.with_suffix('.hwh'), SUPPORT/'pynq-qt-demo', SUPPORT/'dtc']:
        if not file.is_file(): raise FileNotFoundError(file)
    try:
        existing = request({'op': 'status'})
    except ConnectionRefusedError:
        pass
    else:
        raise RuntimeError('Service already exists; use status or stop: '+str(existing))
    owner = open('/tmp/pynq-skill-qt-hardware.lock', 'a')
    fcntl.flock(owner, fcntl.LOCK_EX | fcntl.LOCK_NB)
    # Only this board adapter's touch device is removed before full PL reload.
    old_touch = RUN/'skill_vendor_goodix.dtbo'
    if old_touch.exists(): segment('skill_vendor_goodix').remove()
    if PL.bitfile_name and Path(PL.bitfile_name).exists():
        stop_video(Overlay(PL.bitfile_name, download=False))
    overlay = Overlay(str(bit))
    module('skill_dmafb')
    if not Path('/dev/fb0').exists():
        segment('skill_dmaframebuffer', '''/dts-v1/; /plugin/;
/ { fragment@0 { target-path="/amba"; __overlay__ {
skill-framebuffer { compatible="pynq-skill,dma-framebuffer";
width=<800>; height=<480>; status="okay"; }; }; }; };''').insert()
    if Path('/sys/class/graphics/fb0/name').read_text().strip() != 'pynq-skill-fb':
        raise RuntimeError('fb0 is owned by another framebuffer driver')
    with open('/dev/fb0', 'r+b', buffering=0) as handle:
        fixed = bytearray(80)
        fcntl.ioctl(handle, 0x4602, fixed, True)
        address, size = struct.unpack_from('<II', fixed, 16)
    if size < 800*480*3: raise RuntimeError('Framebuffer is too small')
    video = overlay.video.video_out
    lcd_id = video.lcd_id_rd()
    if lcd_id != 0x7084: raise RuntimeError('Expected LCD ID 0x7084, got '+hex(lcd_id))
    video.configure(1)
    vdma = overlay.video.axi_vdma.mmio
    vdma.write(0, 4)
    wait_for(lambda: not vdma.read(0)&4, 'VDMA reset')
    vdma.write(0, 1)
    vdma.write(0x28, 0)
    for offset in (0x5c, 0x60, 0x64): vdma.write(offset, address)
    vdma.write(0x58, 2400)
    vdma.write(0x54, 2400)
    vdma.write(0x50, 480)
    time.sleep(.1)
    if vdma.read(4)&0x4ff1: raise RuntimeError('LCD VDMA error: '+hex(vdma.read(4)))
    module('skill_vendor_goodix')
    clients = list(Path('/sys/bus/i2c/devices').glob('1-*'))
    if clients: raise RuntimeError('I2C1 already has clients: '+str(clients))
    bus = Path('/sys/bus/platform/drivers/cdns-i2c')
    (bus/'unbind').write_text('e0005000.i2c')
    # Recover the controller after changing its EMIO logic. Keep the Linux
    # clock driver's established SLCR access state (unlocked).
    slcr = MMIO(0xf8000000, 0x1000)
    slcr.write(8, 0xdf0d)
    original = slcr.read(0x224)
    slcr.write(0x224, original|2)
    time.sleep(.01)
    slcr.write(0x224, original&~2)
    phandle = int.from_bytes(Path('/sys/firmware/devicetree/base/amba/gpio@e000a000/phandle').read_bytes(), 'big')
    try:
        segment('skill_vendor_goodix', '''/dts-v1/; /plugin/;
/ { fragment@0 { target-path="/amba/i2c@e0005000"; __overlay__ {
#address-cells=<1>; #size-cells=<0>; clock-frequency=<100000>;
touchscreen@14 { compatible="goodix,gt9xx"; reg=<0x14>;
interrupt-parent=<%d>; interrupts=<55 2>;
interrupt-gpio=<%d 55 0>; reset-gpio=<%d 54 0>; status="okay"; };
}; }; };''' % (phandle, phandle, phandle)).insert()
    finally:
        (bus/'bind').write_text('e0005000.i2c')
    def touches():
        return [p for p in Path('/sys/class/input').glob('event*')
                if 'Goodix' in (p/'device/name').read_text()]
    wait_for(lambda: bool(touches()), 'GT911 input node', 5)
    touch = '/dev/input/'+touches()[0].name
    fcntl.flock(owner, fcntl.LOCK_UN)
    owner.close()
    stamp = time.strftime('%Y%m%d-%H%M%S')
    logs = RUN/stamp
    logs.mkdir()
    backend = subprocess.Popen([sys.executable, str(ROOT/'examples/qt_demo/backend.py'),
        '--bit', str(bit), '--reports', str(logs/'reports')], cwd=str(ROOT),
        stdout=(logs/'backend.log').open('w'), stderr=subprocess.STDOUT, start_new_session=True)
    def ready():
        if backend.poll() is not None: raise RuntimeError((logs/'backend.log').read_text())
        try: return request({'op': 'status'})['state'] == 'ready'
        except ConnectionRefusedError: return False
    wait_for(ready, 'Compute service startup', 15)
    env = dict(os.environ, QT_QPA_PLATFORM='linuxfb:fb=/dev/fb0:tty=/dev/tty1',
               QT_QPA_FB_NO_LIBINPUT='1', QT_QPA_EVDEV_TOUCHSCREEN_PARAMETERS=touch)
    gui = subprocess.Popen([str(SUPPORT/'pynq-qt-demo'), '--capture', str(logs)],
        env=env, stdout=(logs/'qt.log').open('w'), stderr=subprocess.STDOUT, start_new_session=True)
    time.sleep(.5)
    if gui.poll() is not None: raise RuntimeError((logs/'qt.log').read_text())
    state = dict(state='running', qt_pid=gui.pid, backend_pid=backend.pid,
                 bitfile=str(bit), touch_node=touch, framebuffer_address=address,
                 logs=str(logs), lcd_id=hex(lcd_id), vdma_status=hex(vdma.read(4)))
    (RUN/'runtime.json').write_text(json.dumps(state, indent=2))
    print(json.dumps(state, indent=2))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('action', choices=['start', 'stop', 'status'])
    parser.add_argument('--bit', type=Path, default=ROOT/'overlays/qt_dual.bit')
    args = parser.parse_args()
    if args.action == 'start': start(args.bit.resolve())
    elif args.action == 'stop': stop()
    else: print(json.dumps(request({'op': 'status'}), indent=2))
