"""Internal content identity for validated inputs, independent of source filenames."""
import hashlib
import numpy as np


def identities(volume, mask, native=None):
    digest = hashlib.sha256(b'mri-input-v1')
    def add(array, dtype):
        value = np.ascontiguousarray(array, dtype=dtype)
        digest.update(str(value.shape).encode('ascii'))
        digest.update(memoryview(value).cast('B'))
    add(volume, '<f4')
    add(mask, 'u1')
    t88 = digest.hexdigest()
    if native is None:
        digest.update(b'no-native')
    else:
        add(native.affine, '<f8')
        add(np.asarray(native.dataobj), '<f4')
    return t88, digest.hexdigest()
