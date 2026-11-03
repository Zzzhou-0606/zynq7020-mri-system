"""Build the SD boot directory from verified local vendor inputs.

The Qt reference kernel is paired with its own rootfs/modules. The LCD-only DTB
retains the LCD driver's address map; GEM0 is enabled using the full-board preset.
"""
from pathlib import Path
import hashlib
import json
import struct
import time
import zlib
import sys
from fdt import Node, Tree, string, u32

HERE = Path(__file__).resolve().parents[2] / 'vivado'
VENDOR = HERE / 'build/vendor'


def main():
    touch = '--touch' in sys.argv
    output = HERE / ('build/sd-touch/boot' if touch else 'build/sd/boot')
    output.mkdir(parents=True, exist_ok=True)
    tree = Tree((VENDOR / 'lcd_boot/system.dtb').read_bytes())
    reference = Tree((VENDOR / 'reference_system.dtb').read_bytes())
    ethernet_path = '/amba/ethernet@e000b000'
    eth = tree.node(ethernet_path)
    original = reference.node(ethernet_path)
    for key in ['phy-mode', 'xlnx,ptp-enet-clock']:
        eth.props[key] = original.props[key]
    eth.props['status'] = string('okay')
    eth.props['local-mac-address'] = bytes.fromhex('027020000002')
    handles = [struct.unpack('>I', n.props['phandle'])[0]
               for _, n in tree.root.walk() if 'phandle' in n.props]
    handle = max(handles) + 1
    phy = Node('ethernet-phy@7')
    phy.props = {'reg': u32(7), 'device_type': string('ethernet-phy'), 'phandle': u32(handle)}
    eth.children.append(phy)
    eth.props['phy-handle'] = u32(handle)
    # PS USB0 provides keyboard/mouse input without adding a PL peripheral.
    usb_phy = Node('phy0@e0002000')
    usb_phy.props = {'compatible': string('ulpi-phy'), '#phy-cells': u32(0),
                     'reg': u32(0xe0002000, 0x1000), 'view-port': u32(0x170),
                     'drv-vbus': b'', 'phandle': u32(handle + 1)}
    tree.root.children.append(usb_phy)
    usb = tree.node('/amba/usb@e0002000')
    usb.props.update({'status': string('okay'), 'dr_mode': string('host'),
                      'usb-phy': u32(handle + 1)})
    tree.node('/aliases').props['ethernet0'] = string(ethernet_path)
    tree.node('/amba/ethernet@e000c000').props['status'] = string('disabled')
    if touch:
        gpio = tree.node('/amba/gpio@e000a000')
        if 'phandle' not in gpio.props:
            gpio.props['phandle'] = u32(handle + 2)
        gpio_handle = gpio.props['phandle']
        bus = tree.node('/amba/i2c@e0005000')
        bus.props.update({'status': string('okay'), 'clock-frequency': u32(100000)})
        tree.node('/aliases').props['i2c1'] = string('/amba/i2c@e0005000')
        controller = Node('touchscreen@14')
        # Vendor built-in goodix_gtxx driver uses singular GPIO property names.
        # The touch-only hardware maps reset/INT to EMIO0/1 => PS GPIO54/55.
        controller.props = {'compatible': string('goodix,gt9xx'), 'status': string('okay'),
                            'reg': u32(0x14), 'interrupt-parent': gpio_handle,
                            'interrupts': u32(55, 0),
                            'reset-gpio': gpio_handle + u32(54, 1),
                            'interrupt-gpio': gpio_handle + u32(55, 1)}
        bus.children.append(controller)
    tree.root.props['model'] = string('Alientek Zynq-7020 Demo2 LCD and PS Ethernet')
    # The LCD source used exactly this 1 GiB DDR window and 50 MiB CMA reservation.
    assert tree.node('/memory').props['reg'] == u32(0, 0x40000000)
    dtb = tree.dump()
    reparsed = Tree(dtb)
    assert reparsed.node(ethernet_path).props['phy-handle'] == u32(handle)
    # No PL address, interrupt, clock or display timing is changed by this patch.
    before = Tree((VENDOR / 'lcd_boot/system.dtb').read_bytes())
    before_pl = {p: n.props for p, n in before.root.walk() if p.startswith('/amba_pl')}
    after_pl = {p: n.props for p, n in reparsed.root.walk() if p.startswith('/amba_pl')}
    assert before_pl == after_pl
    (output / 'system.dtb').write_bytes(dtb)
    fit = Tree((VENDOR / 'reference_qt_boot/image.ub').read_bytes())
    kernel = fit.node('/images/kernel@1').props['data']
    expected_hash = fit.node('/images/kernel@1/hash@1').props['value']
    assert hashlib.sha256(kernel).digest() == expected_hash
    (output / 'zImage').write_bytes(kernel)
    script = (HERE.parent / 'ps/linux/boot.cmd').read_bytes()
    # U-Boot legacy script image: big endian length table, followed by script text.
    payload = u32(len(script), 0) + script
    header = struct.pack('>7I4B32s', 0x27051956, 0, int(time.time()), len(payload),
                         0, 0, zlib.crc32(payload), 5, 2, 6, 0, b'Demo2 SD boot')
    header = header[:4] + u32(zlib.crc32(header)) + header[8:]
    (output / 'boot.scr').write_bytes(header + payload)
    manifest = {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                for p in output.iterdir() if p.is_file()}
    (HERE / ('build/boot_inputs_touch.json' if touch else 'build/boot_inputs.json')).write_text(json.dumps({
        'kernel_source': '7020/3_linux_lcd_qt/image.ub kernel@1 (SHA256 verified)',
        'kernel_version': '5.4.0-xilinx-v2020.2',
        'dtb_source': '25_lcd_disp/7020/system.dtb; PS GEM0 and USB0 host enabled; PL unchanged',
        'ps_phy_address': 7, 'mac': '02:70:20:00:00:02',
        'hardware_validation': 'pending board connection', 'files': manifest,
        'touch_controller': 'GT911 via vendor goodix_gtxx; GPIO54/55, I2C1' if touch else None,
    }, indent=2))
    print('Prepared kernel, patched DTB and boot.scr:', output)


if __name__ == '__main__':
    main()
