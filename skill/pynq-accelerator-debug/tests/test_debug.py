import sys
import unittest
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import pynq_debug as d


class Buffer(np.ndarray):
    def __new__(cls, shape, dtype):
        obj = np.zeros(shape, dtype=dtype).view(cls)
        obj.freed = False
        obj.flushed = False
        obj.invalidated = False
        return obj

    def flush(self): self.flushed = True
    def invalidate(self): self.invalidated = True
    def freebuffer(self): self.freed = True


class Channel:
    def __init__(self, dma, direction):
        self.dma, self.direction = dma, direction

    def transfer(self, array):
        self.dma.events.append(self.direction)
        self.dma.buffers[self.direction] = array
        if self.direction == 'send':
            rx = self.dma.buffers['recv']
            rx[:] = array
            if self.dma.mode == 'mismatch': rx.flat[0] += 1

    def wait(self):
        self.dma.events.append(self.direction + '_wait')


class DMA:
    def __init__(self, mode='normal'):
        self.mode = mode
        self.events, self.buffers = [], {}
        self.mmio = self
        self.reset = False
        self.recvchannel, self.sendchannel = Channel(self, 'recv'), Channel(self, 'send')

    def read(self, offset):
        if offset == 0: return 4 if self.reset and self.mode == 'stuck_reset' else 0
        if offset in (4, 0x34):
            if self.reset and self.mode != 'stuck_reset': return 1
            if self.mode == 'error': return 0x40
            if self.mode in ('timeout', 'stuck_reset'): return 0
            return 2
        if offset in (0x28, 0x58):
            count = self.buffers['recv'].nbytes
            return count - 4 if self.mode == 'short' and offset == 0x58 else count
        raise AssertionError('Unexpected register')

    def write(self, offset, value):
        if (offset, value) != (0, 4): raise AssertionError('Unexpected write')
        self.reset = True


class Overlay:
    def __init__(self, dma):
        self.axi_dma_0 = dma
        self.ip_dict = {'axi_dma_0': {'type': 'xilinx.com:ip:axi_dma:7.1',
            'parameters': {'C_INCLUDE_SG': '0', 'C_INCLUDE_MM2S': '1',
                           'C_MICRO_DMA': '0', 'C_ENABLE_MULTI_CHANNEL': '0',
                           'C_INCLUDE_S2MM': '1', 'C_SG_LENGTH_WIDTH': '14'}}}

    def is_loaded(self): return True


class ComparisonTests(unittest.TestCase):
    def test_unsigned_does_not_wrap(self):
        r = d.compare(np.array([0], dtype='uint32'), np.array([2**32-1], dtype='uint32'))
        self.assertEqual(r['max_abs_error'], 2**32-1)

    def test_uint64_adjacent_not_rounded(self):
        r = d.compare(np.array([2**64-1], dtype='uint64'), np.array([2**64-2], dtype='uint64'))
        self.assertFalse(r['pass'])
        self.assertEqual(r['max_abs_error'], 1)

    def test_no_broadcast(self):
        self.assertFalse(d.compare(np.ones((2, 1)), np.ones((2,)))['pass'])

    def test_dtype_checked(self):
        self.assertFalse(d.compare(np.array([1], dtype='uint32'), np.array([1], dtype='int32'))['pass'])

    def test_nonfinite_rejected(self):
        self.assertFalse(d.compare(np.array([np.nan]), np.array([np.nan]))['pass'])

    def test_float_tolerance(self):
        a, b = np.array([1.0001]), np.array([1.0])
        self.assertTrue(d.compare(a, b, atol=0.001)['pass'])
        self.assertFalse(d.compare(a, b, atol=0.00001)['pass'])

    def test_tolerance_validation(self):
        for tol in [-1, np.nan, np.inf]:
            with self.assertRaises(ValueError): d.compare(np.ones(1), np.ones(1), atol=tol)
        with self.assertRaises(ValueError):
            d.compare(np.ones(1, dtype='uint32'), np.ones(1, dtype='uint32'), atol=1)


class DMATests(unittest.TestCase):
    def setUp(self):
        d.QUARANTINE.clear()  # Only simulated objects exist in this test process.
        self.buffers = []
        self.x = np.arange(100, dtype='uint32')

    def alloc(self, **kwargs):
        b = Buffer(**kwargs)
        self.buffers.append(b)
        return b

    def run_mode(self, mode):
        self.dma = DMA(mode)
        return d.run_dma(Overlay(self.dma), 'axi_dma_0', self.x, self.x.copy(),
                         allocate_fn=self.alloc, timeout_s=0.003)

    def test_roundtrip_order_and_lifetime(self):
        actual, report = self.run_mode('normal')
        self.assertTrue(np.array_equal(actual, self.x))
        self.assertEqual(report['status'], 'pass')
        self.assertEqual(self.dma.events[:2], ['recv', 'send'])
        self.assertTrue(all(b.freed and b.flushed for b in self.buffers))
        self.assertTrue(self.buffers[1].invalidated)

    def test_mismatch_is_not_pass(self):
        _, report = self.run_mode('mismatch')
        self.assertEqual(report['status'], 'mismatch')

    def test_short_packet_fails(self):
        with self.assertRaises(d.TransferFailure) as ctx: self.run_mode('short')
        self.assertEqual(ctx.exception.report['received_bytes'], 396)
        self.assertTrue(all(b.freed for b in self.buffers))

    def test_dma_error_records_and_recovers(self):
        with self.assertRaises(d.TransferFailure) as ctx: self.run_mode('error')
        self.assertEqual(ctx.exception.report['failure_registers']['mm2s_status'], 0x40)
        self.assertTrue(ctx.exception.report['dma_reset_confirmed_stopped'])
        self.assertTrue(all(b.freed for b in self.buffers))

    def test_timeout_does_not_call_unbounded_wait(self):
        with self.assertRaises(d.TransferFailure) as ctx: self.run_mode('timeout')
        self.assertIn('TimeoutError', ctx.exception.report['error'])
        self.assertNotIn('recv_wait', self.dma.events)
        self.assertTrue(self.dma.reset)

    def test_failed_reset_quarantines_memory(self):
        with self.assertRaises(d.TransferFailure) as ctx: self.run_mode('stuck_reset')
        self.assertTrue(ctx.exception.report['buffers_quarantined'])
        self.assertFalse(any(b.freed for b in self.buffers))
        with self.assertRaisesRegex(RuntimeError, 'recover board'): self.run_mode('normal')

    def test_sg_rejected_before_allocation(self):
        ol = Overlay(DMA())
        ol.ip_dict['axi_dma_0']['parameters']['C_INCLUDE_SG'] = '1'
        with self.assertRaisesRegex(ValueError, 'Scatter'):
            d.run_dma(ol, 'axi_dma_0', self.x, self.x.copy(), allocate_fn=self.alloc)
        self.assertEqual(self.buffers, [])

    def test_length_limit(self):
        ol = Overlay(DMA())
        x = np.zeros(4096, dtype='uint32')
        with self.assertRaisesRegex(ValueError, 'length limit'):
            d.run_dma(ol, 'axi_dma_0', x, x, allocate_fn=self.alloc)
        self.assertEqual(self.buffers, [])

    def test_micro_dma_rejected_before_allocation(self):
        ol = Overlay(DMA())
        ol.ip_dict['axi_dma_0']['parameters']['C_MICRO_DMA'] = '1'
        with self.assertRaisesRegex(ValueError, 'Micro DMA'):
            d.run_dma(ol, 'axi_dma_0', self.x, self.x, allocate_fn=self.alloc)
        self.assertEqual(self.buffers, [])


if __name__ == '__main__': unittest.main()
