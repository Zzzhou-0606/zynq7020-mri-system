"""Preserve the working board DTB and add the dedicated uncached MRI arena."""
import argparse
import struct
from pathlib import Path
from fpga.ps.linux.fdt import Node, Tree, u32


def reserve(source, destination):
    source, destination = Path(source), Path(destination)
    if destination.exists():
        raise FileExistsError(f'Refusing to overwrite {destination}')
    tree = Tree(source.read_bytes())
    memories = [n for p, n in tree.root.walk()
                if n.props.get('device_type') == b'memory\0']
    if not any(n.props.get('reg') == u32(0, 0x40000000) for n in memories):
        raise ValueError('Expected exact 1GiB DDR memory node')
    existing = [n for n in tree.root.children if n.name == 'reserved-memory']
    reserved = existing[0] if existing else Node('reserved-memory')
    if existing and (reserved.props.get('#address-cells') != u32(1)
                     or reserved.props.get('#size-cells') != u32(1)):
        raise ValueError('Unsupported reserved-memory address cell format')
    reserved.props.update({'#address-cells': u32(1), '#size-cells': u32(1), 'ranges': b''})
    for child in reserved.children:
        reg = child.props.get('reg')
        if reg:
            if len(reg) % 8:
                raise ValueError('Unsupported reserved range')
            for start, size in struct.iter_unpack('>II', reg):
                if start < 0x40000000 and start + size > 0x38000000:
                    raise ValueError(f'Overlapping reserved region {child.name}')
    node = Node('mri-buffer@38000000')
    node.props.update({'reg': u32(0x38000000, 0x08000000), 'no-map': b''})
    reserved.children.append(node)
    if not existing:
        tree.root.children.append(reserved)
    destination.parent.mkdir(parents=True, exist_ok=True)
    destination.write_bytes(tree.dump())
    check = Tree(destination.read_bytes()).node('/reserved-memory/mri-buffer@38000000')
    assert check.props['reg'] == u32(0x38000000, 0x08000000) and 'no-map' in check.props


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    parser.add_argument('destination', type=Path)
    args = parser.parse_args()
    reserve(args.source, args.destination)
