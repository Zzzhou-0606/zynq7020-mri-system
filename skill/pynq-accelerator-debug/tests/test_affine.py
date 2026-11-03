import sys
import unittest
import io
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'examples/affine_u32'))
from reference import golden, sample
from run_example import compute_vlnv


class AffineTests(unittest.TestCase):
    def test_stream_module_without_mmio_and_full_hierarchy(self):
        hwh = '<SYSTEM><MODULE FULLNAME="/sub/affine" IS_ENABLE="1" VLNV="xilinx.com:hls:affine_u32_stream:1.0" /></SYSTEM>'
        self.assertEqual(compute_vlnv(io.StringIO(hwh), 'sub/affine'),
                         'xilinx.com:hls:affine_u32_stream:1.0')
        with self.assertRaises(ValueError): compute_vlnv(io.StringIO(hwh), 'affine')

    def test_known_wrap_boundaries(self):
        x = np.array([0, 1, 0xffffffff, 0x80000000, 0x55555555], dtype=np.uint32)
        np.testing.assert_array_equal(golden(x), [7, 10, 4, 0x80000007, 6])

    def test_random_against_python_integer_oracle(self):
        for n in (1, 16, 100, 1024, 4095):
            x = sample(n)
            expected = np.array([(3 * int(v) + 7) % 2**32 for v in x], dtype=np.uint32)
            np.testing.assert_array_equal(golden(x), expected)

    def test_invalid_dtype_shape_and_lengths(self):
        for x in (np.array([1], dtype=np.int32), np.ones((2, 2), dtype=np.uint32),
                  np.array([], dtype=np.uint32)):
            with self.assertRaises(ValueError): golden(x)
        for n in (0, 4096):
            with self.assertRaises(ValueError): sample(n)


if __name__ == '__main__': unittest.main()
