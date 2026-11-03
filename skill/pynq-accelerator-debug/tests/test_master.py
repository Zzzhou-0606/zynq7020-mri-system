import copy
import sys
import unittest
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import pynq_master as m
from pynq_debug import TransferFailure


class Buffer(np.ndarray):
    def __new__(cls, shape, dtype, address):
        obj = np.zeros(shape, dtype=dtype).view(cls)
        obj.device_address = address
        obj.freed = obj.flushed = obj.invalidated = False
        return obj

    def flush(self): self.flushed = True
    def invalidate(self): self.invalidated = True
    def freebuffer(self): self.freed = True


class Fixture:
    bitfile_name = 'mock.bit'
    ip_dict = {'compute': {'phys_addr': 0x1000, 'addr_range': 0x100}}

    def __init__(self, mode='pass'):
        self.mode = mode
        self.arrays, self.writes = [], []
        self.started, self.reads = False, 0

    def is_loaded(self): return True

    def allocate(self, shape, dtype):
        address = 2**32 if self.mode == 'high_address' else 0x10000 + 0x1000 * len(self.arrays)
        buf = Buffer(shape, dtype, address)
        self.arrays.append(buf)
        return buf

    def read(self, offset):
        if not self.started:
            return 0x84 if self.mode == 'autorestart_initial' else 4
        self.reads += 1
        if self.mode == 'timeout': return 0
        if self.mode == 'autorestart_active': return 0x80
        if self.mode == 'done_before_idle': return 2 if self.reads == 1 else 4
        return 6

    def write(self, offset, value):
        self.writes.append((offset, value))
        if offset == 0:
            if not all(b.flushed for b in self.arrays):
                raise AssertionError('Started before cache flush')
            self.started = True
            if self.mode != 'no_output_write':
                if len(self.arrays) == 1:
                    self.arrays[0][:] += 7
                else:
                    self.arrays[1][:] = self.arrays[0] * 3 + 7
                if self.mode == 'mismatch': self.arrays[-1][0] += 1


CONTRACT = {'protocol': 'ap_ctrl_hs', 'control_offset': 0,
            'pointers': {'x': {'offset': 0x10, 'width_bits': 64},
                         'y': {'offset': 0x1c, 'width_bits': 64}},
            'scalar_writes': [[0x28, 3]]}


class MasterTests(unittest.TestCase):
    def tearDown(self):
        # Only mock allocations are present in this test process, never real DMA.
        m.QUARANTINE.clear()

    def run_case(self, mode='pass', contract=None, expected=None):
        fixture = Fixture(mode)
        self.fixture = fixture
        x = np.array([0, 1, 100], dtype=np.uint32)
        expected = x * 3 + 7 if expected is None else expected
        result = m.run_m_axi(fixture, 'compute',
            {'x': {'access': 'read', 'data': x}, 'y': {'access': 'write', 'expected': expected}},
            contract or copy.deepcopy(CONTRACT), timeout_s=0.003,
            allocate_fn=fixture.allocate, mmio_factory=lambda *_: fixture)
        return fixture, result

    def test_success_order_address_and_lifetime(self):
        f, (out, r) = self.run_case()
        self.assertEqual(r['status'], 'pass')
        np.testing.assert_array_equal(out['y'], [7, 10, 307])
        self.assertEqual(f.writes, [(0x10, 0x10000), (0x14, 0), (0x1c, 0x11000),
                                    (0x20, 0), (0x28, 3), (0, 1)])
        self.assertTrue(all(b.freed for b in f.arrays))
        self.assertTrue(f.arrays[1].invalidated)

    def test_done_clear_on_read_before_idle(self):
        f, (_, r) = self.run_case('done_before_idle')
        self.assertEqual(r['status'], 'pass')
        self.assertEqual(f.reads, 2)

    def test_timeout_keeps_buffers_and_blocks_retry(self):
        with self.assertRaises(TransferFailure) as cm: self.run_case('timeout')
        self.assertTrue(cm.exception.report['buffers_quarantined'])
        self.assertFalse(any(b.freed for b in self.fixture.arrays))
        with self.assertRaisesRegex(RuntimeError, 'stop unconfirmed'): self.run_case()

    def test_autorestart_rejected_before_allocation(self):
        with self.assertRaises(TransferFailure): self.run_case('autorestart_initial')
        self.assertEqual(self.fixture.arrays, [])

    def test_autorestart_after_start_quarantines(self):
        with self.assertRaises(TransferFailure): self.run_case('autorestart_active')
        self.assertTrue(m.QUARANTINE)

    def test_mismatch_is_not_success(self):
        _, (_, r) = self.run_case('mismatch')
        self.assertEqual(r['status'], 'mismatch')
        self.assertEqual(r['comparison']['y']['first_bad_index'], [0])

    def test_unwritten_zero_output_detected(self):
        _, (_, r) = self.run_case('no_output_write', expected=np.zeros(3, dtype=np.uint32))
        self.assertEqual(r['status'], 'mismatch')

    def test_pointer_overflow_before_start_frees(self):
        contract = copy.deepcopy(CONTRACT)
        contract['pointers']['x']['width_bits'] = 32
        with self.assertRaises(TransferFailure): self.run_case('high_address', contract)
        self.assertFalse(self.fixture.started)
        self.assertTrue(all(b.freed for b in self.fixture.arrays))

    def test_contract_overlap_and_control_register_rejected(self):
        for offset in (0x10, 4):
            contract = copy.deepcopy(CONTRACT)
            contract['scalar_writes'] = [[offset, 3]]
            with self.assertRaisesRegex(ValueError, 'Overlapping'): self.run_case(contract=contract)

    def test_protocol_and_missing_pointer_rejected(self):
        for field, value in [('protocol', 'ap_ctrl_chain'), ('pointers', {})]:
            contract = copy.deepcopy(CONTRACT)
            contract[field] = value
            with self.assertRaises(ValueError): self.run_case(contract=contract)

    def test_readwrite_buffer(self):
        f = Fixture()
        data = np.array([1, 2], dtype=np.uint32)
        contract = {'protocol': 'ap_ctrl_hs', 'control_offset': 0,
                    'pointers': {'state': {'offset': 0x10, 'width_bits': 32}}}
        out, r = m.run_m_axi(f, 'compute', {'state': {'access': 'readwrite',
            'data': data, 'expected': data + 7}}, contract,
            allocate_fn=f.allocate, mmio_factory=lambda *_: f)
        self.assertEqual(r['status'], 'pass')
        np.testing.assert_array_equal(out['state'], [8, 9])


if __name__ == '__main__': unittest.main()
