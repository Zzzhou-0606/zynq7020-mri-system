"""Add verified Navigator RTC/buzzer nodes, preserving all other DTB bytes."""
import argparse
from pathlib import Path
from fpga.ps.linux.fdt import Tree, Node, u32, string


def prepare(source, destination):
    destination = Path(destination)
    if destination.exists():
        raise FileExistsError('Refusing to overwrite existing DTB')
    tree = Tree(Path(source).read_bytes())
    i2c = tree.node('/amba/i2c@e0004000')
    gpio = tree.node('/amba/gpio@e000a000')
    if i2c.children or any(n.name == 'mri-completion-beep' for n in tree.root.children):
        raise ValueError('Unexpected existing peripherals; inspect before modifying')
    i2c.props.update({'status': string('okay'), 'clock-frequency': u32(100000)})
    rtc = Node('rtc@51')
    rtc.props.update({'compatible': string('nxp,pcf8563'), 'reg': u32(0x51), 'status': string('okay')})
    i2c.children.append(rtc)
    aliases = tree.node('/aliases')
    aliases.props['rtc0'] = string('/amba/i2c@e0004000/rtc@51')
    aliases.props['i2c0'] = string('/amba/i2c@e0004000')
    beeper = Node('mri-completion-beep')
    beeper.props['compatible'] = string('gpio-leds')
    output = Node('buzzer')
    # This variant preserves touch EMIO 0/1 and adds EMIO 2 -> GPIO 54+2.
    output.props.update({'label': string('mri-completion-beep'),
                         'gpios': gpio.props['phandle'] + u32(56, 0),
                         'default-state': string('off')})
    beeper.children.append(output)
    tree.root.children.append(beeper)
    destination.parent.mkdir(parents=True, exist_ok=True)
    destination.write_bytes(tree.dump())
    return destination


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    parser.add_argument('destination', type=Path)
    args = parser.parse_args()
    print(prepare(args.source, args.destination))
