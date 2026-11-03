"""Disable absent GEM1 in U-Boot's embedded control DTB, preserving ELF layout."""
from pathlib import Path
import hashlib
import json
import struct
from fdt import Tree, string, u32

HERE = Path(__file__).resolve().parents[2] / 'vivado'
GEM1 = '/amba/ethernet@e000c000'


def patch(source):
    candidates = []
    offset = 0
    while True:
        offset = source.find(bytes.fromhex('d00dfeed'), offset)
        if offset < 0:
            break
        try:
            size = struct.unpack_from('>I', source, offset + 4)[0]
            tree = Tree(source[offset:offset + size])
            tree.node(GEM1)
            candidates.append((offset, size, tree))
        except (ValueError, StopIteration, struct.error):
            pass
        offset += 4
    if len(candidates) != 1:
        raise ValueError('Expected exactly one embedded Zynq control DTB')
    offset, size, tree = candidates[0]
    before = {p: dict(n.props) for p, n in tree.root.walk()}
    tree.node(GEM1).props['status'] = string('disabled')
    blob = tree.dump()
    if len(blob) > size:
        raise ValueError('New DTB exceeds original allocation')
    # Keep the original ELF section/segment offsets, length and DTB allocation.
    blob = blob[:4] + u32(size) + blob[8:] + bytes(size - len(blob))
    check = Tree(blob)
    expected = {p: dict(props) for p, props in before.items()}
    expected[GEM1]['status'] = string('disabled')
    assert {p: n.props for p, n in check.root.walk()} == expected
    assert check.reservations == tree.reservations
    result = source[:offset] + blob + source[offset + size:]
    assert len(result) == len(source)
    assert result[:offset] == source[:offset]
    assert result[offset + size:] == source[offset + size:]
    return result, {'dtb_offset': offset, 'dtb_allocation': size,
                    'only_property_change': GEM1 + '/status = disabled'}


def main():
    source = (HERE / 'build/vendor/reference_u-boot.elf').read_bytes()
    result, report = patch(source)
    output = HERE / 'build/uboot'
    output.mkdir(parents=True, exist_ok=True)
    (output / 'u-boot-ps-only.elf').write_bytes(result)
    report.update(source_sha256=hashlib.sha256(source).hexdigest(),
                  output_sha256=hashlib.sha256(result).hexdigest())
    (output / 'patch_report.json').write_text(json.dumps(report, indent=2))
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
