#!/usr/bin/env python3
"""Local Qt helper. No listening socket; only the PS GEM0 interface is writable.

Settings are runtime-only in /run; reboot restores the vendor DHCP configuration.
"""
import fcntl
import ipaddress
import json
import os
from pathlib import Path
import socket
import struct
import subprocess
import sys
import time
try:
    from .board_sensors import chip_temperature
except ImportError:
    try:
        from board_sensors import chip_temperature
    except ImportError:
        from fpga.ps.service.board_sensors import chip_temperature

IFACE = 'eth0'
RUNTIME = Path('/run/demo2')


def validate_settings(data):
    if data.get('mode') == 'dhcp':
        return {'mode': 'dhcp'}
    if data.get('mode') != 'static':
        raise ValueError('Select DHCP or static IPv4')
    address = ipaddress.IPv4Address(data.get('address', '').strip())
    mask = data.get('netmask', '').strip()
    # Reject inverse/host masks and non-contiguous dotted masks.
    ipaddress.IPv4Address(mask)
    network = ipaddress.IPv4Network(str(address) + '/' + mask, strict=False)
    if str(network.netmask) != mask or not 1 <= network.prefixlen <= 30:
        raise ValueError('Use a contiguous subnet mask with prefix length 1..30')
    if address.is_multicast or address.is_loopback or address.is_unspecified or address.is_reserved:
        raise ValueError('Use a unicast LAN IPv4 address')
    if address in (network.network_address, network.broadcast_address):
        raise ValueError('Address cannot be the network or broadcast address')
    gateway = data.get('gateway', '').strip()
    if gateway:
        gw = ipaddress.IPv4Address(gateway)
        if gw not in network or gw in (address, network.network_address, network.broadcast_address):
            raise ValueError('Gateway must be a different host on the same subnet')
    return {'mode': 'static', 'address': str(address),
            'netmask': mask, 'gateway': gateway}


def interface_config(settings):
    lines = ['auto eth0', 'iface eth0 inet ' + settings['mode']]
    if settings['mode'] == 'static':
        lines += ['    address ' + settings['address'], '    netmask ' + settings['netmask']]
        if settings['gateway']:
            lines += ['    gateway ' + settings['gateway']]
    return '\n'.join(lines) + '\n'


def read_text(path, default='unknown'):
    try:
        return Path(path).read_text().strip()
    except OSError:
        return default


def ipv4_ioctl(request):
    try:
        with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as sock:
            result = fcntl.ioctl(sock.fileno(), request, struct.pack('256s', IFACE.encode()))
        return socket.inet_ntoa(result[20:24])
    except OSError:
        return ''


def status():
    mem = {}
    for line in read_text('/proc/meminfo', '').splitlines():
        fields = line.split()
        if fields[0] in ('MemTotal:', 'MemAvailable:'):
            mem[fields[0][:-1]] = int(fields[1]) // 1024
    gateway = ''
    for line in read_text('/proc/net/route', '').splitlines()[1:]:
        row = line.split()
        if len(row) >= 4 and row[0] == IFACE and row[1] == '00000000' and int(row[3], 16) & 2:
            gateway = socket.inet_ntoa(struct.pack('<I', int(row[2], 16)))
            break
    return {'interface': IFACE, 'carrier': read_text('/sys/class/net/eth0/carrier', '0'),
            'address': ipv4_ioctl(0x8915), 'netmask': ipv4_ioctl(0x891b), 'gateway': gateway,
            'mac': read_text('/sys/class/net/eth0/address'),
            'uptime_seconds': int(float(read_text('/proc/uptime', '0').split()[0])),
            'memory_mib': mem, 'kernel': os.uname().release,
            'chip_temperature': chip_temperature(),
            'device': os.path.realpath('/sys/class/net/eth0/device')}


def run_command(args):
    result = subprocess.run(args, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                            universal_newlines=True, timeout=25)
    if result.returncode:
        raise RuntimeError('{}: {}'.format(args[0], result.stdout.strip()[-1000:]))
    return result.stdout.strip()


def apply_settings(data):
    settings = validate_settings(data)
    if os.geteuid() != 0:
        raise PermissionError('Network settings require root on the development board')
    if 'e000b000' not in os.path.realpath('/sys/class/net/eth0/device'):
        raise RuntimeError('eth0 is not the expected PS GEM0 (e000b000); no changes made')
    RUNTIME.mkdir(mode=0o700, exist_ok=True)
    with (RUNTIME / 'lock').open('w') as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        current = RUNTIME / 'interfaces'
        previous = current if current.exists() else Path('/etc/network/interfaces')
        candidate = RUNTIME / ('interfaces-' + str(time.time_ns()))
        candidate.write_text(interface_config(settings))
        os.chmod(str(candidate), 0o600)
        # ifdown uses the previous stanza to stop its DHCP client before changing mode.
        try:
            run_command(['/sbin/ifdown', '-i', str(previous), '-f', IFACE])
            output = run_command(['/sbin/ifup', '-i', str(candidate), IFACE])
        except (RuntimeError, subprocess.TimeoutExpired) as failure:
            # Preserve candidate/previous files for diagnosis; restore the old mode.
            recovery_errors = []
            try:
                run_command(['/sbin/ifdown', '-i', str(candidate), '-f', IFACE])
            except (RuntimeError, subprocess.TimeoutExpired) as rollback:
                recovery_errors.append(str(rollback))
            try:
                run_command(['/sbin/ifup', '-i', str(previous), IFACE])
            except (RuntimeError, subprocess.TimeoutExpired) as rollback:
                recovery_errors.append(str(rollback))
            if recovery_errors:
                raise RuntimeError('{}; recovery needs attention: {}'.format(failure, '; '.join(recovery_errors)))
            raise RuntimeError('{}; previous configuration restarted; check Status'.format(failure))
        # Keep the previous runtime configuration rather than discarding it.
        if current.exists():
            current.rename(RUNTIME / ('previous-' + str(time.time_ns())))
        candidate.rename(current)
        message = 'Applied for this boot only. Reboot restores the system default.'
        if settings['mode'] == 'dhcp':
            message += ' DHCP address acquisition is shown on the Status page.'
        return {'message': message, 'command_output': output, 'status': status()}


def main():
    try:
        command = sys.argv[1] if len(sys.argv) > 1 else 'status'
        if command == 'status':
            result = status()
        elif command == 'apply':
            result = apply_settings(json.loads(sys.stdin.read(4097)))
        else:
            raise ValueError('Unknown command')
        print(json.dumps({'ok': True, 'result': result}))
    except Exception as exc:
        print(json.dumps({'ok': False, 'error': str(exc)}))
        return 1
    return 0


if __name__ == '__main__':
    sys.exit(main())
