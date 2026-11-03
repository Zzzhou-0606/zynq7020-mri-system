"""Explicit-contract HLS ap_ctrl_hs AXI master adapter; no board addresses assumed."""
import math
import time

import numpy as np

from pynq_debug import TransferFailure, compare, environment, save_report

# A timeout is not a hardware stop. Keep both the mapping and allocations alive.
QUARANTINE = []


def validate_contract(contract, names, addr_range):
    if contract.get('protocol') != 'ap_ctrl_hs':
        raise ValueError('Only standard HLS ap_ctrl_hs is supported')
    if set(contract.get('pointers', {})) != set(names):
        raise ValueError('Every buffer needs exactly one verified pointer binding')
    used = set()

    def reserve(offset, words):
        if type(offset) is not int or offset < 0 or offset % 4 or offset + words * 4 > addr_range:
            raise ValueError('Register outside IP range or unaligned')
        slots = set(range(offset, offset + words * 4, 4))
        if used & slots:
            raise ValueError('Overlapping control, pointer or scalar registers')
        used.update(slots)

    if contract['control_offset'] != 0:
        raise ValueError('Standard HLS AXI-Lite control must be at offset zero')
    reserve(0, 4)  # Control, GIE, IER and ISR must never be used as data bindings.
    for pointer in contract['pointers'].values():
        if pointer.get('width_bits') not in (32, 64):
            raise ValueError('Pointer width must be explicitly 32 or 64 bits')
        reserve(pointer['offset'], pointer['width_bits'] // 32)
    for offset, value in contract.get('scalar_writes', []):
        reserve(offset, 1)
        if type(value) is not int or not 0 <= value < 2**32:
            raise ValueError('Scalar writes must contain uint32 values')


def run_m_axi(overlay, ip_name, buffers, contract, *, timeout_s=3.0,
              atol=0.0, rtol=0.0, allocate_fn=None, mmio_factory=None):
    """Execute one exclusive HLS ap_ctrl_hs invocation on an already loaded overlay.

    buffers maps names to {access: read/write/readwrite, data: ndarray (if read),
    expected: ndarray (if write)}. Pointer keys must exactly match buffer names.
    Returns copies of output arrays and a report. Completion requires observed
    ap_done and ap_idle. No generic reset is attempted after an active failure.
    """
    if QUARANTINE:
        raise RuntimeError('AXI master stop unconfirmed; recover board before reuse')
    if not math.isfinite(timeout_s) or not 0 < timeout_s <= 300:
        raise ValueError('timeout_s must be finite, >0 and <=300')
    if not overlay.is_loaded():
        raise ValueError('Overlay is not loaded')
    if not buffers:
        raise ValueError('At least one buffer is required')
    entry = overlay.ip_dict[ip_name]
    validate_contract(contract, buffers, entry['addr_range'])
    prepared = {}
    has_output = False
    for name, spec in buffers.items():
        access = spec['access']
        if access not in ('read', 'write', 'readwrite'):
            raise ValueError('Unknown buffer access mode')
        data = np.asarray(spec['data']) if access != 'write' else None
        expected = np.asarray(spec['expected']) if access != 'read' else None
        for array in (data, expected):
            if array is not None and (array.ndim == 0 or not array.size or
                    array.dtype.kind not in 'iuf' or not array.dtype.isnative or
                    not np.isfinite(array).all()):
                raise ValueError('Use nonempty native-endian finite numeric arrays')
        if expected is not None:
            has_output = True
            compare(expected, expected, atol=atol, rtol=rtol)
        if access == 'readwrite' and (data.shape != expected.shape or data.dtype != expected.dtype):
            raise ValueError('Readwrite data and reference must match shape/dtype')
        prepared[name] = (access, data, expected)
    if not has_output:
        raise ValueError('Provide at least one output reference')
    if allocate_fn is None:
        from pynq import allocate
        allocate_fn = allocate
    # Use MMIO directly; no IP driver constructor may start the accelerator.
    if mmio_factory is None:
        from pynq import MMIO
        mmio_factory = MMIO
    mmio = mmio_factory(entry['phys_addr'], entry['addr_range'])
    ctrl = contract['control_offset']
    allocated = {}
    safe = True
    report = {'stage': 'board_m_axi', 'status': 'running', 'environment': environment(),
              'ip': ip_name, 'bitfile': str(getattr(overlay, 'bitfile_name', 'unknown')),
              'contract': contract, 'timeout_s': timeout_s, 'buffers': {}}
    try:
        initial = int(mmio.read(ctrl))
        if initial & 0x81 or not initial & 4:
            raise ValueError('Accelerator must be idle, start clear, auto_restart disabled')
        for name, (access, data, expected) in prepared.items():
            shape_source = data if data is not None else expected
            buf = allocate_fn(shape=shape_source.shape, dtype=shape_source.dtype)
            allocated[name] = buf
            pointer = contract['pointers'][name]
            address = int(buf.device_address)
            if address < 0 or address + buf.nbytes > 2**pointer['width_bits']:
                raise ValueError('Buffer address does not fit pointer width')
            if data is not None:
                buf[:] = data
            elif expected.dtype.kind in 'iu':
                buf[:] = np.bitwise_not(expected)
            else:
                buf[:] = np.where(expected == 0, 1, 0)
            buf.flush()
            mmio.write(pointer['offset'], address & 0xffffffff)
            if pointer['width_bits'] == 64:
                mmio.write(pointer['offset'] + 4, address >> 32)
            report['buffers'][name] = {'access': access, 'shape': list(buf.shape),
                                      'dtype': str(buf.dtype), 'bytes': int(buf.nbytes)}
        for offset, value in contract.get('scalar_writes', []):
            mmio.write(offset, value)
        start = time.perf_counter()
        deadline = time.monotonic() + timeout_s
        safe = False  # A failed start write may still have reached hardware.
        mmio.write(ctrl, 1)
        done_seen = False
        while True:
            state = int(mmio.read(ctrl))  # ap_done can clear on read; remember it.
            report['last_control'] = state
            done_seen = done_seen or bool(state & 2)
            if state & 0x80:
                raise RuntimeError('Unexpected auto_restart while running')
            if done_seen and state & 4:
                safe = True
                break
            if time.monotonic() >= deadline:
                raise TimeoutError('AXI master completion timeout; hardware stop unconfirmed')
            time.sleep(0.001)
        actual, comparisons = {}, {}
        for name, (access, _, expected) in prepared.items():
            if access != 'read':
                allocated[name].invalidate()
                actual[name] = np.array(allocated[name], copy=True)
                comparisons[name] = compare(actual[name], expected, atol=atol, rtol=rtol)
        report['call_wall_ms'] = (time.perf_counter() - start) * 1000
        report['comparison'] = comparisons
        report['status'] = 'pass' if all(r['pass'] for r in comparisons.values()) else 'mismatch'
        return actual, report
    except BaseException as exc:
        report.update(status='error', error=type(exc).__name__ + ': ' + str(exc))
        if not safe:
            QUARANTINE.append((overlay, mmio, allocated))
            report['buffers_quarantined'] = True
            report['hardware_stop_confirmed'] = False
        if isinstance(exc, (KeyboardInterrupt, SystemExit)):
            print('Interrupted; master report:', save_report(report))
            raise
        raise TransferFailure(str(exc), report) from exc
    finally:
        if safe:
            for buf in reversed(list(allocated.values())):
                buf.freebuffer()
