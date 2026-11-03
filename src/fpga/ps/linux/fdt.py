"""Small flattened device tree reader/writer for preserving vendor DTB data.

Only version 17 DTBs are accepted; reservation entries and property bytes are
preserved. This avoids requiring a Linux dtc executable on the Windows host.
"""
import struct


def u32(*values):
    return struct.pack('>' + 'I' * len(values), *values)


def string(value):
    return value.encode() + b'\0'


class Node:
    def __init__(self, name):
        self.name, self.props, self.children = name, {}, []

    def walk(self, path=''):
        path = path + '/' + self.name if self.name else ''
        yield path or '/', self
        for child in self.children:
            yield from child.walk(path)


class Tree:
    def __init__(self, blob):
        header = struct.unpack_from('>10I', blob)
        magic, total, off_struct, off_strings, off_reserve, version, compat, cpu, size_strings, size_struct = header
        if magic != 0xd00dfeed or version != 17 or total > len(blob):
            raise ValueError('Not a supported v17 DTB')
        if off_strings + size_strings > total or off_struct + size_struct > total:
            raise ValueError('DTB block out of bounds')
        self.cpu, self.compat = cpu, compat
        end = off_reserve
        while True:
            entry = struct.unpack_from('>QQ', blob, end)
            end += 16
            if entry == (0, 0):
                break
        self.reservations = blob[off_reserve:end]
        strings = blob[off_strings:off_strings + size_strings]
        cursor, stack = off_struct, []
        while cursor < off_struct + size_struct:
            token, = struct.unpack_from('>I', blob, cursor)
            cursor += 4
            if token == 1:
                end = blob.index(b'\0', cursor)
                node = Node(blob[cursor:end].decode())
                cursor = (end + 4) & ~3
                if stack:
                    stack[-1].children.append(node)
                else:
                    self.root = node
                stack.append(node)
            elif token == 2:
                stack.pop()
            elif token == 3:
                length, offset = struct.unpack_from('>II', blob, cursor)
                cursor += 8
                name = strings[offset:strings.index(b'\0', offset)].decode()
                stack[-1].props[name] = blob[cursor:cursor + length]
                cursor = (cursor + length + 3) & ~3
            elif token == 4:
                pass
            elif token == 9:
                if stack:
                    raise ValueError('Unclosed node')
                break
            else:
                raise ValueError('Unknown DTB token')

    def node(self, path):
        return next(n for p, n in self.root.walk() if p == path)

    def dump(self):
        names, strings, data = {}, bytearray(), bytearray()
        def emit(node):
            data.extend(u32(1) + string(node.name))
            data.extend(b'\0' * (-len(data) % 4))
            for name, value in node.props.items():
                if name not in names:
                    names[name] = len(strings)
                    strings.extend(string(name))
                data.extend(u32(3, len(value), names[name]) + value)
                data.extend(b'\0' * (-len(data) % 4))
            for child in node.children:
                emit(child)
            data.extend(u32(2))
        emit(self.root)
        data.extend(u32(9))
        off_reserve = 40
        off_struct = off_reserve + len(self.reservations)
        off_strings = off_struct + len(data)
        return u32(0xd00dfeed, off_strings + len(strings), off_struct, off_strings,
                   off_reserve, 17, self.compat, self.cpu, len(strings), len(data)) + self.reservations + data + strings
