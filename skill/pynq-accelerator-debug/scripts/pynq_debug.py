"""PYNQ simple-mode DMA bring-up. Hardware calls run on the board, not the PC."""
import importlib.metadata
import json
import math
import platform
import sys
import time
import uuid
from datetime import datetime, timezone
from pathlib import Path

import numpy as np

# Hold allocations if hardware could still own them. Never free active DMA memory.
QUARANTINE = []


class TransferFailure(RuntimeError):
    def __init__(self, message, report):
        super().__init__(message)
        self.report = report


def environment():
    result = {'python': sys.version, 'platform': platform.platform(),
              'machine': platform.machine(), 'numpy': np.__version__}
    try:
        result['pynq'] = importlib.metadata.version('pynq')
    except importlib.metadata.PackageNotFoundError:
        result['pynq'] = None
    return result


def compare(actual, expected, *, atol=0.0, rtol=0.0):
    a, e = np.asarray(actual), np.asarray(expected)
    if any(not math.isfinite(x) or x < 0 for x in (atol, rtol)):
        raise ValueError('Tolerances must be finite and nonnegative')
    if a.shape != e.shape or a.dtype != e.dtype:
        return {'pass': False, 'reason': 'shape_or_dtype_mismatch',
                'actual_shape': list(a.shape), 'expected_shape': list(e.shape),
                'actual_dtype': str(a.dtype), 'expected_dtype': str(e.dtype)}
    if a.size == 0 or a.dtype.kind not in 'iuf':
        raise ValueError('Expected nonempty integer or real floating arrays')
    if not np.isfinite(a).all() or not np.isfinite(e).all():
        return {'pass': False, 'reason': 'nonfinite_value'}
    if a.dtype.kind in 'iu':
        if atol or rtol:
            raise ValueError('Integer comparison is exact; tolerances must be zero')
        good = a == e
        # Python integers avoid unsigned wrap and float64 rounding at uint64 limits.
        errors = np.abs(a.astype(object) - e.astype(object))
        max_error = int(errors.max())
    else:
        with np.errstate(over='ignore', invalid='ignore'):
            errors = np.abs(a.astype(np.float64) - e.astype(np.float64))
            limits = atol + rtol * np.abs(e.astype(np.float64))
            good = np.isfinite(errors) & (errors <= limits)
        m = float(errors.max())
        max_error = m if math.isfinite(m) else 'overflow'
    bad = np.flatnonzero(~good.reshape(-1))
    return {'pass': len(bad) == 0, 'elements': int(a.size),
            'mismatches': int(len(bad)), 'max_abs_error': max_error,
            'first_bad_index': list(np.unravel_index(int(bad[0]), a.shape)) if len(bad) else None,
            'atol': atol, 'rtol': rtol}


def save_report(report, directory='reports'):
    target = Path(directory)
    target.mkdir(parents=True, exist_ok=True)
    name = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ') + '-' + uuid.uuid4().hex[:8] + '.json'
    path = target / name
    with path.open('x', encoding='utf-8') as f:
        json.dump(report, f, indent=2, ensure_ascii=False, allow_nan=False,
                  default=lambda v: v.item() if isinstance(v, np.generic) else str(v))
    return str(path.resolve())


def overlay_metadata(overlay):
    # Access ip_dict only: instantiating the DMA driver starts its channels.
    return {name: {'type': entry.get('type'),
                   'phys_addr': entry.get('phys_addr'),
                   'addr_range': entry.get('addr_range'),
                   'parameters': entry.get('parameters', {}),
                   'registers': entry.get('registers', {})}
            for name, entry in overlay.ip_dict.items()}


def _number(value):
    return int(value, 0) if isinstance(value, str) and value.lower().startswith('0x') else int(value)


def _check_dma(overlay, name, tx_bytes, rx_bytes):
    entry = overlay.ip_dict[name]
    if ':axi_dma:' not in entry.get('type', ''):
        raise ValueError('Selected IP is not AXI DMA')
    params = entry['parameters']
    def parameter(key):
        if key not in params:
            raise ValueError('HWH lacks required DMA parameter: ' + key)
        return _number(params[key])
    if parameter('C_INCLUDE_SG') != 0:
        raise ValueError('Scatter-gather DMA requires a different adapter')
    if parameter('C_MICRO_DMA') != 0 or parameter('C_ENABLE_MULTI_CHANNEL') != 0:
        raise ValueError('Micro DMA and multi-channel DMA require a different adapter')
    if parameter('C_INCLUDE_MM2S') != 1 or parameter('C_INCLUDE_S2MM') != 1:
        raise ValueError('Both MM2S and S2MM channels are required')
    width = parameter('C_SG_LENGTH_WIDTH')
    if not 1 <= width <= 26:
        raise ValueError('Invalid DMA length register width')
    limit = (1 << width) - 1
    if not (0 < tx_bytes <= limit and 0 < rx_bytes <= limit):
        raise ValueError(f'Transfer exceeds HWH length limit {limit} bytes')
    return {'tx_bytes': tx_bytes, 'rx_bytes': rx_bytes, 'length_limit_bytes': limit}


def _ip(overlay, name):
    result = overlay
    for part in name.split('/'):
        if not part or part.startswith('_'):
            raise ValueError('Invalid IP path')
        result = getattr(result, part)
    return result


def _snapshot(dma):
    return {'mm2s_status': int(dma.mmio.read(0x04)),
            's2mm_status': int(dma.mmio.read(0x34)),
            'mm2s_length': int(dma.mmio.read(0x28)),
            's2mm_length': int(dma.mmio.read(0x58))}


def _wait_idle(dma, timeout_s, poll_s=0.001):
    deadline = time.monotonic() + timeout_s
    while True:
        state = _snapshot(dma)
        statuses = (state['mm2s_status'], state['s2mm_status'])
        if any(s & 0x70 for s in statuses):
            raise RuntimeError('DMA internal/slave/decode error: ' + str(state))
        if any(s & 1 for s in statuses):
            raise RuntimeError('DMA channel halted during transfer: ' + str(state))
        if all(s & 2 for s in statuses):
            return state
        if time.monotonic() >= deadline:
            raise TimeoutError('DMA completion timeout: ' + str(state))
        time.sleep(poll_s)


def _reset_stopped(dma, timeout_s=1.0):
    # AXI DMA reset affects the entire DMA engine. Never reset unknown IPs.
    try:
        dma.mmio.write(0x00, 0x4)
        deadline = time.monotonic() + timeout_s
        while time.monotonic() < deadline:
            if not dma.mmio.read(0x00) & 4:
                state = _snapshot(dma)
                if state['mm2s_status'] & 1 and state['s2mm_status'] & 1:
                    return True
            time.sleep(0.001)
    except Exception:
        return False
    return False


def run_dma(overlay, dma_name, input_array, expected, *, timeout_s=3.0,
            atol=0.0, rtol=0.0, accelerator=None, allocate_fn=None):
    """One exclusive, fixed-length simple-DMA transaction on an ALREADY loaded overlay.

    accelerator: optional {'ip': 'my_ip_0', 'writes': [[offset, value], ...]}.
    Writes (including ap_start if needed) occur after arming receive, before send.
    Caller supplies verified offsets from its own HWH/IP register contract.
    Timeout covers completion polling, not PYNQ driver construction/AXI bus hangs.
    """
    if QUARANTINE:
        raise RuntimeError('Previous DMA shutdown unconfirmed; recover board before reuse')
    if not math.isfinite(timeout_s) or not 0 < timeout_s <= 300:
        raise ValueError('timeout_s must be finite, >0 and <=300')
    if not overlay.is_loaded():
        raise ValueError('Overlay is not loaded')
    x, golden = np.asarray(input_array), np.asarray(expected)
    for a in (x, golden):
        if a.ndim == 0 or a.size == 0 or a.dtype.kind not in 'iuf' or not a.dtype.isnative:
            raise ValueError('Use nonempty, native-endian integer/float arrays')
        if not np.isfinite(a).all():
            raise ValueError('Input/reference contains NaN or Inf')
    compare(golden, golden, atol=atol, rtol=rtol)
    contract = _check_dma(overlay, dma_name, x.nbytes, golden.nbytes)
    writes = []
    control = None
    if accelerator is not None:
        ip_name = accelerator['ip']
        if ip_name == dma_name:
            raise ValueError('Accelerator control writes must not target DMA')
        entry = overlay.ip_dict[ip_name]
        for offset, value in accelerator['writes']:
            offset, value = _number(offset), _number(value)
            if offset < 0 or offset % 4 or offset + 4 > entry['addr_range'] or not 0 <= value < 2**32:
                raise ValueError('Invalid 32-bit accelerator write')
            writes.append((offset, value))
        control = _ip(overlay, ip_name)
    if allocate_fn is None:
        from pynq import allocate
        allocate_fn = allocate
    dma = _ip(overlay, dma_name)
    buffers = []
    active = False
    safe = True
    report = {'stage': 'board_dma', 'status': 'running', 'environment': environment(),
              'dma': dma_name, 'bitfile': str(getattr(overlay, 'bitfile_name', 'unknown')),
              'contract': contract, 'timeout_s': timeout_s,
              'input_shape': list(x.shape), 'output_shape': list(golden.shape),
              'input_dtype': str(x.dtype), 'output_dtype': str(golden.dtype),
              'accelerator': accelerator, 'atol': atol, 'rtol': rtol}
    try:
        tx = allocate_fn(shape=x.shape, dtype=x.dtype)
        buffers.append(tx)
        rx = allocate_fn(shape=golden.shape, dtype=golden.dtype)
        buffers.append(rx)
        tx[:] = x
        rx[:] = 0
        tx.flush()
        rx.flush()  # Do not leave dirty CPU cache lines over the output buffer.
        start = time.perf_counter()
        active, safe = True, False
        dma.recvchannel.transfer(rx)
        if control is not None:
            for offset, value in writes:
                control.write(offset, value)
        dma.sendchannel.transfer(tx)
        report['completed_registers'] = _wait_idle(dma, timeout_s)
        safe = True
        # Both channels are now idle and error-free; wait finalizes PYNQ bookkeeping.
        dma.recvchannel.wait()
        dma.sendchannel.wait()
        rx.invalidate()
        report['transfer_wall_ms'] = (time.perf_counter() - start) * 1000
        received = int(dma.mmio.read(0x58))
        report['received_bytes'] = received
        if received != golden.nbytes:
            raise RuntimeError(f'Received {received} bytes, expected {golden.nbytes}; check TLAST/length')
        actual = np.array(rx, copy=True)
        report['comparison'] = compare(actual, golden, atol=atol, rtol=rtol)
        report['status'] = 'pass' if report['comparison']['pass'] else 'mismatch'
        return actual, report
    except BaseException as exc:
        report['status'] = 'error'
        report['error'] = type(exc).__name__ + ': ' + str(exc)
        if active and not safe:
            try:
                report['failure_registers'] = _snapshot(dma)
            except Exception as read_error:
                report['snapshot_error'] = str(read_error)
            safe = _reset_stopped(dma)
            report['dma_reset_confirmed_stopped'] = safe
        if not safe:
            QUARANTINE.append((overlay, dma, buffers))
            report['buffers_quarantined'] = True
        if isinstance(exc, (KeyboardInterrupt, SystemExit)):
            print('Interrupted; DMA recovery report:', save_report(report))
            raise
        raise TransferFailure(str(exc), report) from exc
    finally:
        if safe:
            for buffer in reversed(buffers):
                buffer.freebuffer()


if __name__ == '__main__':
    print(json.dumps(environment(), indent=2))
